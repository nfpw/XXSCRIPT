local entityhandler = {
	isalive = false,
	character = nil,
	entities = {},
	npcs = {},
	connections = {},
	playerconnections = {},
	npcconnections = {},
	running = false,
	
	gameid = game.GameId,
	detectionmethod = "auto",

	events = {
		entityadded = {},
		entityremoved = {},
		entitydied = {},
		entityrespawned = {},
		localplayeradded = {},
		localplayerremoved = {},
		npcadded = {},
		npcremoved = {},
		npcdied = {},
		npcrespawned = {}
	}
}

local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
local players = getservice('Players')
local localplayer = players.LocalPlayer
local workspace = getservice('Workspace')

local function connectevent(eventtable, callback)
	table.insert(eventtable, callback)
	return {
		disconnect = function()
			local index = table.find(eventtable, callback)
			if index then
				table.remove(eventtable, index)
			end
		end
	}
end

local function fireevent(eventtable, ...)
	for _, callback in pairs(eventtable) do
		task.spawn(callback, ...)
	end
end

-- I only did one game for example
local gameconfigs = {
	--[[
	[5995470825] = { -- Hypershot
		method = "standard",
		characterpath = function(player) return player.Character end,
		playerpath = function(character) return players:GetPlayerFromCharacter(character) end,
		teamcheck = function(player) return player.Team end,
		isalivecheck = function(character, humanoid) return humanoid and humanoid.Health > 0 end,
		gethp = function(character, humanoid) return humanoid and humanoid.Health or 0 end,
		getmaxhp = function(character, humanoid) return humanoid and humanoid.MaxHealth or 100 end,
		npcfolders = {workspace.Mobs},
		npccheck = function(character) 
			return character:FindFirstChild('Humanoid') and (character:FindFirstChild('HumanoidRootPart') or character:FindFirstChild('Torso')) and not players:GetPlayerFromCharacter(character)
		end,
		npcteam = "Mob",
		npcname = function(character)
			return character.Name 
		end
	},
	]]
}

local currentconfig = gameconfigs[entityhandler.gameid] or {
	method = "standard",
	characterpath = function(player) return player.Character end,
	playerpath = function(character) return players:GetPlayerFromCharacter(character) end,
	teamcheck = function(player) return player.Team end,
	isalivecheck = function(character, humanoid) return humanoid and humanoid.Health > 0 end,
	gethp = function(character, humanoid) return humanoid and humanoid.Health or 0 end,
	getmaxhp = function(character, humanoid) return humanoid and humanoid.MaxHealth or 100 end,
	--npcfolders = {workspace},
	--npccheck = function(character) 
	--	return character:FindFirstChild('Humanoid') and not players:GetPlayerFromCharacter(character)
	--end,
	--npcteam = "Neutral",
	--npcname = function(character) return character.Name end
}
entityhandler.detectionmethod = currentconfig.method

local function getplayercharacter(player)
	return currentconfig.characterpath(player)
end

local function getplayerfromcharacter(character)
	return currentconfig.playerpath(character)
end

local function issameteam(player)
	if not localplayer or not player then return false end
	local localteam = currentconfig.teamcheck(localplayer)
	local playerteam = currentconfig.teamcheck(player)
	if not localteam or not playerteam then
		return false
	end
	return localteam == playerteam
end

local function isalive(character)
	if not character then return false end
	local humanoid = character:FindFirstChild('Humanoid')
	return currentconfig.isalivecheck(character, humanoid)
end

local function gethp(character)
	if not character then return 0 end
	local humanoid = character:FindFirstChild('Humanoid')
	return currentconfig.gethp(character, humanoid)
end

local function getmaxhp(character)
	if not character then return 100 end
	local humanoid = character:FindFirstChild('Humanoid')
	return currentconfig.getmaxhp(character, humanoid)
end

local function createentity(character, player, isnpc)
	local humanoid = character:WaitForChild('Humanoid', 5)
	local rootpart = character:WaitForChild('HumanoidRootPart', 5) or character:WaitForChild('Torso', 5)
	if not humanoid then
		return nil
	end
	local entity = {
		character = character,
		player = player,
		humanoid = humanoid,
		rootpart = rootpart,
		isalive = currentconfig.isalivecheck(character, humanoid),
		hp = currentconfig.gethp(character, humanoid),
		maxhp = currentconfig.getmaxhp(character, humanoid),
		islocalplayer = player == localplayer,
		isnpc = isnpc or false,
		name = isnpc and currentconfig.npcname(character) or (player and player.Name or "Unknown"),
		team = isnpc and currentconfig.npcteam or (player and currentconfig.teamcheck(player)),
		issameteam = not isnpc and player and issameteam(player) or false,
		connections = {}
	}
	local healthconnection = humanoid:GetPropertyChangedSignal('Health'):Connect(function()
		local wasalive = entity.isalive
		entity.isalive = currentconfig.isalivecheck(character, humanoid)
		entity.hp = currentconfig.gethp(character, humanoid)
		entity.maxhp = currentconfig.getmaxhp(character, humanoid)
		if wasalive and not entity.isalive then
			if entity.isnpc then
				fireevent(entityhandler.events.npcdied, entity)
			else
				fireevent(entityhandler.events.entitydied, entity)
			end
		elseif not wasalive and entity.isalive then
			if entity.isnpc then
				fireevent(entityhandler.events.npcrespawned, entity)
			else
				fireevent(entityhandler.events.entityrespawned, entity)
			end
		end
	end)
	if humanoid:GetPropertyChangedSignal('MaxHealth') then
		local maxhealthconnection = humanoid:GetPropertyChangedSignal('MaxHealth'):Connect(function()
			entity.maxhp = currentconfig.getmaxhp(character, humanoid)
		end)
		table.insert(entity.connections, maxhealthconnection)
	end
	table.insert(entity.connections, healthconnection)
	return entity
end

function entityhandler:addgameconfig(gameid, config)
	gameconfigs[gameid] = config
	if gameid == self.gameid then
		currentconfig = config
		self.detectionmethod = config.method
	end
end

function entityhandler:connectevent(eventname, callback)
	if self.events[eventname] then
		return connectevent(self.events[eventname], callback)
	end
end

function entityhandler:addentity(character, player)
	if not character then return end
	if not player then
		player = getplayerfromcharacter(character)
	end
	local entity = createentity(character, player, false)
	if not entity then return end
	if entity.islocalplayer then
		self.character = entity
		self.isalive = entity.isalive
		fireevent(self.events.localplayeradded, entity)
	else
		table.insert(self.entities, entity)
		fireevent(self.events.entityadded, entity)
	end
end

function entityhandler:addnpc(character)
	if not character then return end
	if not currentconfig.npccheck(character) then return end
	local entity = createentity(character, nil, true)
	if not entity then return end
	table.insert(self.npcs, entity)
	fireevent(self.events.npcadded, entity)
	local ancestryconnection = character.AncestryChanged:Connect(function()
		if not character.Parent then
			self:removenpc(character)
		end
	end)
	if not self.npcconnections[character] then
		self.npcconnections[character] = {}
	end
	table.insert(self.npcconnections[character], ancestryconnection)
end

function entityhandler:removeentity(character, islocalplayer)
	if islocalplayer then
		if self.character then
			for _, connection in pairs(self.character.connections) do
				connection:Disconnect()
			end
			fireevent(self.events.localplayerremoved, self.character)
			self.character = nil
			self.isalive = false
		end
		return
	end
	for i, entity in pairs(self.entities) do
		if entity.character == character then
			for _, connection in pairs(entity.connections) do
				connection:Disconnect()
			end
			fireevent(self.events.entityremoved, entity)
			table.remove(self.entities, i)
			break
		end
	end
end

function entityhandler:removenpc(character)
	for i, entity in pairs(self.npcs) do
		if entity.character == character then
			for _, connection in pairs(entity.connections) do
				connection:Disconnect()
			end
			fireevent(self.events.npcremoved, entity)
			table.remove(self.npcs, i)
			break
		end
	end
	if self.npcconnections[character] then
		for _, connection in pairs(self.npcconnections[character]) do
			connection:Disconnect()
		end
		self.npcconnections[character] = nil
	end
end

function entityhandler:getentity(character)
	if self.character and self.character.character == character then
		return self.character
	end
	for _, entity in pairs(self.entities) do
		if entity.character == character then
			return entity
		end
	end
	for _, entity in pairs(self.npcs) do
		if entity.character == character then
			return entity
		end
	end
	return nil
end

function entityhandler:getaliveentities()
	local alive = {}
	for _, entity in pairs(self.entities) do
		if entity.isalive then
			table.insert(alive, entity)
		end
	end
	return alive
end

function entityhandler:getteammates()
	local teammates = {}
	for _, entity in pairs(self.entities) do
		if entity.issameteam then
			table.insert(teammates, entity)
		end
	end
	return teammates
end

function entityhandler:getenemies()
	local enemies = {}
	for _, entity in pairs(self.entities) do
		if not entity.issameteam then
			table.insert(enemies, entity)
		end
	end
	return enemies
end

function entityhandler:getalivenpc()
	local alive = {}
	for _, entity in pairs(self.npcs) do
		if entity.isalive then
			table.insert(alive, entity)
		end
	end
	return alive
end

function entityhandler:getallnpcs()
	return self.npcs
end

function entityhandler:getallentities()
	local all = {}
	if self.character then
		table.insert(all, self.character)
	end
	for _, entity in pairs(self.entities) do
		table.insert(all, entity)
	end
	for _, entity in pairs(self.npcs) do
		table.insert(all, entity)
	end
	return all
end

function entityhandler:getallalive()
	local alive = {}
	if self.character and self.character.isalive then
		table.insert(alive, self.character)
	end
	for _, entity in pairs(self.entities) do
		if entity.isalive then
			table.insert(alive, entity)
		end
	end
	for _, entity in pairs(self.npcs) do
		if entity.isalive then
			table.insert(alive, entity)
		end
	end
	return alive
end

function entityhandler:scannpcs()
	if not currentconfig.npcfolders then return end
	for _, folder in pairs(currentconfig.npcfolders) do
		if folder then
			for _, child in pairs(folder:GetChildren()) do
				task.spawn(function()
					task.wait(.1)
					if currentconfig.npccheck(child) then
						local exists = false
						for _, entity in pairs(self.npcs) do
							if entity.character == child then
								exists = true
								break
							end
						end
						if not exists then
							--print("Adding NPC from scan:", child.Name)
							self:addnpc(child)
						end
					end
				end)
			end
		end
	end
end

function entityhandler:connectnpcfolders()
	if not currentconfig.npcfolders then return end
	for _, folder in pairs(currentconfig.npcfolders) do
		if folder then
			local connection = folder.ChildAdded:Connect(function(child)
				task.spawn(function()
					task.wait(.1)
					if currentconfig.npccheck(child) then
						--print("New bot detected:", child.Name)
						self:addnpc(child)
					else
						task.wait(.1)
						if currentconfig.npccheck(child) then
							--print("Bot detected after delay:", child.Name)
							self:addnpc(child)
						end
					end
				end)
			end)
			table.insert(self.connections, connection)
		end
	end
end

function entityhandler:addplayer(player)
	local character = getplayercharacter(player)
	if character then
		self:addentity(character, player)
	end
	local connections = {}
	if player.CharacterAdded then
		table.insert(connections, player.CharacterAdded:Connect(function(character)
			self:addentity(character, player)
		end))
	end
	if player.CharacterRemoving then
		table.insert(connections, player.CharacterRemoving:Connect(function(character)
			self:removeentity(character, player == localplayer)
		end))
	end
	if player:GetPropertyChangedSignal('Team') then
		table.insert(connections, player:GetPropertyChangedSignal('Team'):Connect(function()
			for _, entity in pairs(self.entities) do
				if entity.player then
					entity.team = currentconfig.teamcheck(entity.player)
					entity.issameteam = issameteam(entity.player)
				end
			end
		end))
	end
	self.playerconnections[player] = connections
end

function entityhandler:removeplayer(player)
	if self.playerconnections[player] then
		for _, connection in pairs(self.playerconnections[player]) do
			connection:Disconnect()
		end
		self.playerconnections[player] = nil
	end
	local character = getplayercharacter(player)
	if character then
		self:removeentity(character, player == localplayer)
	end
end

function entityhandler:start()
	if self.running then
		self:stop()
	end
	if players.PlayerAdded then
		table.insert(self.connections, players.PlayerAdded:Connect(function(player)
			self:addplayer(player)
		end))
	end
	if players.PlayerRemoving then
		table.insert(self.connections, players.PlayerRemoving:Connect(function(player)
			self:removeplayer(player)
		end))
	end
	for _, player in pairs(players:GetPlayers()) do
		self:addplayer(player)
	end
	self:connectnpcfolders()
	self:scannpcs()
	self.running = true
end

function entityhandler:stop()
	if not self.running then return end
	for _, connection in pairs(self.connections) do
		if typeof(connection) == "RBXScriptConnection" then
			connection:Disconnect()
		else
			task.cancel(connection)
		end
	end
	table.clear(self.connections)
	for player, connections in pairs(self.playerconnections) do
		for _, connection in pairs(connections) do
			connection:Disconnect()
		end
	end
	table.clear(self.playerconnections)
	for character, connections in pairs(self.npcconnections) do
		for _, connection in pairs(connections) do
			connection:Disconnect()
		end
	end
	table.clear(self.npcconnections)
	local entitiestoremove = table.clone(self.entities)
	for _, entity in pairs(entitiestoremove) do
		self:removeentity(entity.character)
	end
	local npcstoremove = table.clone(self.npcs)
	for _, entity in pairs(npcstoremove) do
		self:removenpc(entity.character)
	end
	self:removeentity(nil, true)
	self.running = false
end

return entityhandler
