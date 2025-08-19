if not game:IsLoaded() then
	repeat
		game.Loaded:Wait()
	until game:IsLoaded()
end

local request = (syn and syn.request) or (http and http.request) or http_request
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

local function requesturl(url)
	local req = request({
		Url = url,
		Method = "GET"
	})
	if req.StatusCode ~= 200 then
		return nil, req.StatusCode
	end
	return req.Body
end

local function ScriptExists(url)
	local body, statuscode = requesturl(url)
	if body then
		return true, body
	else
		return false, statuscode
	end
end

local function LoadScript(url, content)
	local scriptcontent = content
	if not scriptcontent then
		local body, statuscode = requesturl(url)
		if not body then
			return
		end
		scriptcontent = body
	end
	local success, result = pcall(function()
		return loadstring(scriptcontent)()
	end)
end

local githuburl = "https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Games/"
local gameid = githuburl .. tonumber(game.GameId) .. ".lua"
local universal = githuburl .. "universal.lua"
local gamescriptexist, gamecontent = ScriptExists(gameid)

if gamescriptexist then
	LoadScript(gameid, gamecontent)
else
	LoadScript(universal, nil)
end
