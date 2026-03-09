--[[
	Todo:
	- Silent Aim [Should be BulletObject module)
	- Fix Functions on Unload
	- Bullet Tracers
	- Anti Dumper
	- Esp
]]

if not IB_OBFUSCATED then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/pubmain/printdump/main/dump.lua"))()
	getfenv().IB_OBFUSCATED = false
	getfenv().IB_NO_VIRTUALIZE = function(Function)
		return Function
	end
	getfenv().IB_ENCSTR = function(Input)
		return Input
	end
end
local IB_NO_UPVALUES = function(Function)
	local Identifier = tostring(Function):gsub("function: 0", "")

	local Callback =
		assert(loadstring(`return {Identifier}(...)`, "=IB_NO_UPVALUES"), "Failed to compile IB_NO_UPVALUES wrapper")
	getfenv(Callback)[Identifier] = Function

	return Callback
end

if getfflag("DebugRunParallelLuaOnMainThread"):lower() ~= "true" then
	setfflag("DebugRunParallelLuaOnMainThread", "True")
	local TeleportService = game:GetService("TeleportService")
	TeleportService:Teleport(game.PlaceId)
	return
end

local require = getrenv().shared.require

-- this shouldnt happen if player is fully loaded in i think?????
if not require then
	return warn("Failed to load script make sure to run it when fully loaded in rejoin to fix this")
end

local Hook = {
	Functions = {} :: { [AnyFunction]: AnyFunction },
}
function Hook:Function<A..., R...>(Target: (A...) -> R..., Callback: (A...) -> R...): (A...) -> R...
	local Original = hookfunction(Target, IB_NO_UPVALUES(Callback))
	Hook.Functions[Target] = Original
	return Original
end
function Hook:Restore()
	for Target, Original in Hook.Functions do
		hookfunction(Target, Original)
	end
end

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local ReplicationInterface = require("ReplicationInterface")
local PlayerStatusEvents = require("PlayerStatusEvents")
local CharacterInterface = require("CharacterInterface")
local MainCameraObject = require("MainCameraObject")
local CameraInterface = require("CameraInterface")
local RecoilSprings = require("RecoilSprings")
local FirearmObject = require("FirearmObject")
local NetworkClient = require("NetworkClient")
local BulletObject = require("BulletObject")

local Parts = {
	"Head",
	"Torso",
	"Left Leg",
	"Right Leg",
	"Left Arm",
	"Right Arm",
}

local AimbotFovOutline = Drawing.new("Circle")
AimbotFovOutline.Color = Color3.new(0, 0, 0)
AimbotFovOutline.Visible = false
AimbotFovOutline.Thickness = 3
AimbotFovOutline.Radius = 200
local AimbotFov = Drawing.new("Circle")
AimbotFov.Color = Color3.new(1, 1, 1)
AimbotFov.Visible = false
AimbotFov.Thickness = 1
AimbotFov.Radius = 200
local SilentFovOutline = Drawing.new("Circle")
SilentFovOutline.Color = Color3.new(0, 0, 0)
SilentFovOutline.Visible = false
SilentFovOutline.Thickness = 3
SilentFovOutline.Radius = 200
local SilentFov = Drawing.new("Circle")
SilentFov.Color = Color3.new(1, 1, 1)
SilentFov.Visible = false
SilentFov.Thickness = 1
SilentFov.Radius = 200

local Library: AnkaUi = assert(
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nfpw/XXSCRIPT/main/Library/Module.lua"), "=AnkaUi"),
	"Failed to compile AnkaUi"
)()

if not IB_OBFUSCATED then
	getfenv().IB_OBFUSCATED = false
	getfenv().IB_NO_VIRTUALIZE = function(Function)
		return Function
	end
	getfenv().IB_ENCSTR = function(Input)
		return Input
	end
end

local Esp = {
	Connections = {} :: { RBXScriptConnection },
	Gui = Instance.new("ScreenGui", gethui()),
	Prefabs = {
		TextLabel = Instance.new("TextLabel"),
	},
	Characters = {},
}
do
	do
		Esp.Gui.DisplayOrder = -1
		Esp.Gui.ClipToDeviceSafeArea = false
		Esp.Gui.IgnoreGuiInset = true
		Esp.Gui.Name = HttpService:GenerateGUID(false)

		local FontFileName = "Tahoma-Modern.ttf"
		local FontFilePath = FontFileName
		if not isfile(FontFilePath) then
			writefile(
				FontFilePath,
				game:HttpGet(`https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/{FontFileName}`)
			)
		end
		local TextLabelFont = Font.new(getcustomasset(FontFilePath), Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		Esp.Prefabs.TextLabel.Size = UDim2.new(1, 0, 0, 11)
		Esp.Prefabs.TextLabel.TextSize = 11
		Esp.Prefabs.TextLabel.BackgroundTransparency = 1
		Esp.Prefabs.TextLabel.TextColor3 = Color3.new(1, 1, 1)
		Esp.Prefabs.TextLabel.TextStrokeTransparency = 0
		Esp.Prefabs.TextLabel.FontFace = TextLabelFont
	end

	local GetBoundingBox = IB_NO_VIRTUALIZE(function(character): (UDim2?, UDim2?)
		local MinX, MinY = math.huge, math.huge
		local MaxX, MaxY = -math.huge, -math.huge
		local PartCount, VisiblePartCount = 0, 0

		for _, Part in character:getCharacterHash() do
			local CFrame = Part.CFrame
			local Size = Part.Size / 2

			local R = CFrame.RightVector
			local U = CFrame.UpVector
			local Z = CFrame.ZVector

			local Hx = R * Size.X
			local Hy = U * Size.Y
			local Hz = Z * Size.Z

			local P = CFrame.Position
			local Corners = {
				P + Hx + Hy + Hz,
				P + Hx - Hy + Hz,
				P + Hx + Hy - Hz,
				P + Hx - Hy - Hz,
				P - Hx + Hy + Hz,
				P - Hx - Hy + Hz,
				P - Hx + Hy - Hz,
				P - Hx - Hy - Hz,
			}

			PartCount += 8
			for _, Point in Corners do
				local ScreenPosition, Visible = workspace.CurrentCamera:WorldToViewportPoint(Point)
				if Visible then
					VisiblePartCount += 1
				end
				MinX = math.min(MinX, ScreenPosition.X)
				MinY = math.min(MinY, ScreenPosition.Y)
				MaxX = math.max(MaxX, ScreenPosition.X)
				MaxY = math.max(MaxY, ScreenPosition.Y)
			end
		end

		if MaxX == -math.huge or VisiblePartCount < PartCount / 2 then
			return nil, nil
		end

		local Size = UDim2.new(0, MaxX - MinX, 0, MaxY - MinY)
		local Position = UDim2.new(0, MinX, 0, MinY)

		return Position, Size
	end)

	function Esp:Destroy()
		Esp.Gui:Destroy()
		for _, Connection in Esp.Connections do
			Connection:Disconnect()
		end
		table.clear(Esp.Connections)
	end

	function Esp.CharacterAdded(Player: Player, Character, Entry)
		local CharacterFrame = Instance.new("Frame")
		CharacterFrame.Name = Player.Name
		CharacterFrame.BackgroundColor3 = Color3.new(1, 1, 1)
		CharacterFrame.BorderColor3 = Color3.new()
		CharacterFrame.BorderSizePixel = 0
		CharacterFrame.Visible = false

		local UIGradient = Instance.new("UIGradient")
		UIGradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(6, 234, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(19, 82, 255)),
		})
		UIGradient.Rotation = 90
		UIGradient.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.5),
			NumberSequenceKeypoint.new(1, 0.625),
		})
		UIGradient.Parent = CharacterFrame

		local Border = Instance.new("UIStroke")
		Border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Border.BorderOffset = UDim.new(0, -1)
		Border.LineJoinMode = Enum.LineJoinMode.Miter
		Border.Thickness = 3
		Border.Parent = CharacterFrame

		local Stroke = Instance.new("UIStroke")
		Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Stroke.Color = Color3.new(1, 1, 1)
		Stroke.LineJoinMode = Enum.LineJoinMode.Miter
		Stroke.ZIndex = 2
		Stroke.Parent = CharacterFrame

		local HealthBar = Instance.new("Frame")
		HealthBar.BackgroundColor3 = Color3.new(1, 1, 1)
		HealthBar.BorderColor3 = Color3.new()
		HealthBar.BorderSizePixel = 0
		HealthBar.Position = UDim2.fromOffset(-6, -1)
		HealthBar.Size = UDim2.new(0, 2, 1, 2)

		local UIGradient1 = Instance.new("UIGradient")
		UIGradient1.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
		})
		UIGradient1.Rotation = 90
		UIGradient1.Parent = HealthBar

		local Border1 = Instance.new("UIStroke")
		Border1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		Border1.LineJoinMode = Enum.LineJoinMode.Miter
		Border1.Parent = HealthBar

		HealthBar.Parent = CharacterFrame

		local Top = Instance.new("Frame")
		Top.BackgroundTransparency = 1
		Top.Position = UDim2.fromOffset(0, -4)
		Top.Size = UDim2.fromScale(1, 0)

		local UIGridLayout = Instance.new("UIGridLayout")
		UIGridLayout.CellPadding = UDim2.new()
		UIGridLayout.CellSize = UDim2.new(1, 0, 0, 13)
		UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		UIGridLayout.Parent = Top

		local DisplayName = Esp.Prefabs.TextLabel:Clone()
		DisplayName.Text = Player.Name
		DisplayName.Parent = Top

		Top.Parent = CharacterFrame

		local Bottom = Instance.new("Frame")
		Bottom.BackgroundTransparency = 1
		Bottom.Position = UDim2.new(0, 0, 1, 4)
		Bottom.Size = UDim2.fromScale(1, 0)

		local UIGridLayout1 = Instance.new("UIGridLayout")
		UIGridLayout1.CellPadding = UDim2.new()
		UIGridLayout1.CellSize = UDim2.new(1, 0, 0, 13)
		UIGridLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIGridLayout1.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout1.Parent = Bottom

		-- local Weapon = Esp.Prefabs.TextLabel:Clone()
		-- Weapon.Text = "some gun i think"
		-- Weapon.Parent = Bottom

		Bottom.Parent = CharacterFrame

		CharacterFrame.Parent = Esp.Gui

		local OldHealth = Entry._healthstate.health0
		local HealthUpdateDestroy: (() -> ())? = nil
		local function UpdateHealthBar()
			if HealthUpdateDestroy then
				HealthUpdateDestroy()
				HealthUpdateDestroy = nil
			end

			local HealthObject = Instance.new("NumberValue")
			HealthObject.Value = OldHealth
			local Tween = TweenService:Create(HealthObject, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {
				Value = Entry._healthstate.health0,
			})

			OldHealth = Entry._healthstate.health0

			local Connection = HealthObject:GetPropertyChangedSignal("Value"):Connect(function()
				local Health = HealthObject.Value
				local MaxHealth = Entry._healthstate.maxhealth
				if Health == MaxHealth then
					UIGradient1.Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
					})
				else
					UIGradient1.Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
						ColorSequenceKeypoint.new(1 - Health / MaxHealth + 1e-4, Color3.new(0, 0, 0)),
						ColorSequenceKeypoint.new(
							1 - Health / MaxHealth + 1e-3,
							Color3.new(1 - Health / MaxHealth, Health / MaxHealth, 0)
						),
						ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)),
					})
				end
			end)

			Tween:Play()

			Tween.Completed:Once(function()
				if HealthUpdateDestroy then
					HealthUpdateDestroy()
					HealthUpdateDestroy = nil
				end
			end)

			HealthUpdateDestroy = function()
				Tween:Cancel()
				Tween:Destroy()
				Tween = nil
				Connection:Disconnect()
				Connection = nil
			end
		end
		if Entry._healthstate.health0 ~= Entry._healthstate.maxhealth then
			UpdateHealthBar()
		end

		Esp.Characters[Player] = {
			Connections = {
				PreRender = RunService.PreRender:Connect(IB_NO_VIRTUALIZE(function()
					if not Character._characterModel then
						CharacterFrame.Visible = false
						return
					end
					local Position, Size = GetBoundingBox(Character)
					if Position and Size then
						CharacterFrame.Visible = true
						CharacterFrame.Position = Position
						CharacterFrame.Size = Size
					else
						CharacterFrame.Visible = false
					end
				end)),
				UpdateHealthBarShit = RunService.Heartbeat:Connect(IB_NO_VIRTUALIZE(function()
					if OldHealth ~= Entry._healthstate.health0 then
						UpdateHealthBar()
					end
				end)),
			},
			Frame = CharacterFrame,
		}
	end
end

table.insert(
	Library.Connections,
	PlayerStatusEvents.onPlayerSpawned:connect(function(Player: Player, _Location: Vector3, _Data: any)
		local Entry = ReplicationInterface.getEntry(Player)
		if not Entry or not Entry:isEnemy() then
			return
		end
		task.wait(0.5)
		-- wait for character cuz im sped
		local Character = Entry:getThirdPersonObject()
		if not Character then
			return
		end
		setthreadidentity(8)
		Esp.CharacterAdded(Player, Character, Entry)
	end)
)

for Player, Entry in debug.getupvalue(ReplicationInterface.getEntry, 1) do
	if not Entry:isEnemy() then
		continue
	end
	local Character = Entry:getThirdPersonObject()
	if Character then
		task.spawn(Esp.CharacterAdded, Player, Character, Entry)
	end
end

table.insert(
	Library.Connections,
	PlayerStatusEvents.onPlayerDied:connect(function(Player: Player)
		local Character = Esp.Characters[Player]
		if not Character then
			return
		end
		for _, Connection: RBXScriptConnection in Character.Connections do
			Connection:Disconnect()
		end
		Character.Frame:Destroy()
		Esp.Characters[Player] = nil
	end)
)

local GameUtility = {}
do
	function GameUtility:IsVisible(Part: BasePart, Origin: Vector3)
		local Raycast = RaycastParams.new()
		Raycast.FilterType = Enum.RaycastFilterType.Exclude
		Raycast.IgnoreWater = true
		Raycast.FilterDescendantsInstances = { LocalPlayer.Character, Camera }

		local Direction = Part.Position - Origin
		local Result = Workspace:Raycast(Origin, Direction, Raycast)

		if not Result then
			return
		end

		return (Result.Instance:IsDescendantOf(Part.Parent))
	end

	function GameUtility:Closest(Range: number, Part: string)
		local ClosestPart, ClosestRange = nil, Range

		local Entires = getupvalue(ReplicationInterface.getEntry, 1)
		local Mouse = UserInputService:GetMouseLocation()

		for Player, Entry in Entires do
			if (not Entry:isEnemy()) or (not Entry:isAlive()) then
				continue
			end

			local Character = Entry:getThirdPersonObject()

			if not Character then
				continue
			end

			local SelectedPart
			local Parts = Character:getCharacterHash()

			for PartName, RealPart in Parts do
				if PartName == Part then
					SelectedPart = RealPart
					break
				end
			end

			if not SelectedPart then
				continue
			end

			local ScreenPosition, OnScreen = Camera:WorldToScreenPoint(SelectedPart.Position)

			if not OnScreen then
				continue
			end

			if Library.flags.VisibleCheck and (not GameUtility:IsVisible(SelectedPart, Camera.CFrame.Position)) then
				continue
			end

			local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).Magnitude

			if Distance < ClosestRange then
				ClosestPart = SelectedPart
				ClosestRange = Distance
			end
		end

		return ClosestPart
	end
end

local OldSend
OldSend = Hook:Function(NetworkClient.send, function(self, Event: string, ...)
	if Event == "flaguser" then
		warn("FlagUser:", ...)
		return
	end
	return OldSend(self, Event, ...)
end)

local OldReload
OldReload = Hook:Function(FirearmObject.reload, function(self)
	if Library.flags.IntantReload and (self._spareCount > 0) then
		if self._spareCount >= self._weaponData.magsize then
			self._spareCount = self._spareCount - (self._weaponData.magsize - self._magCount)
			self._magCount = self._weaponData.magsize
		else
			self._magCount = self._spareCount
			self._spareCount = 0
		end

		NetworkClient:send("reload")

		return
	end

	return OldReload(self)
end)

local OldFire
OldFire = Hook:Function(FirearmObject.shoot, function(self, ...)
	if Library.flags.AlwaysAutomatic and not self._auto then
		self._auto = true
	end

	return OldFire(self, ...)
end)

local OldBullet
OldBullet = Hook:Function(BulletObject.new, function(self)
	return OldBullet(self)
end)

local OldStep
OldStep = Hook:Function(MainCameraObject.step, function(self, Value)
	if Library.flags.NoCameraBob then
		local Character = CharacterInterface.getCharacterObject()
		Character._speed = 0
	end
	return OldStep(self, Value)
end)

local OldWalkSway
OldWalkSway = Hook:Function(FirearmObject.computeWalkSway, function(...)
	if Library.flags.NoWalkSway then
		return CFrame.new()
	end

	return OldWalkSway(...)
end)

local OldRecoil
OldRecoil = Hook:Function(RecoilSprings.applyImpulse, function(self, a, value: number)
	value *= Library.flags.RecoilMod
	return OldRecoil(self, a, value)
end)

local OldGunSway
OldGunSway = Hook:Function(FirearmObject.computeGunSway, function(...)
	if Library.flags.NoGunSway then
		return CFrame.identity
	end

	return OldGunSway(...)
end)

table.insert(
	Library.Connections,
	RunService.RenderStepped:Connect(IB_NO_VIRTUALIZE(function()
		local Mouse = UserInputService:GetMouseLocation()

		AimbotFovOutline.Position = Vector2.new(Mouse.X, Mouse.Y)
		SilentFovOutline.Position = Vector2.new(Mouse.X, Mouse.Y)
		AimbotFov.Position = Vector2.new(Mouse.X, Mouse.Y)
		SilentFov.Position = Vector2.new(Mouse.X, Mouse.Y)

		if Library.flags.Aimbot and (UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)) then
			local Closest = GameUtility:Closest(AimbotFov.Radius, Library.flags.AimbotPart)

			if Closest then
				if Library.flags.AimbotType == "Mouse" then
					local ScreenPosition, _ = Camera:WorldToViewportPoint(Closest.Position)
					mousemoverel(
						(ScreenPosition.X - Mouse.X) / Library.flags.AimbotSmoothnessX,
						(ScreenPosition.Y - Mouse.Y) / Library.flags.AimbotSmoothnessY
					)
				elseif Library.flags.AimbotType == "Camera" then
					local ActiveCamera = CameraInterface:getActiveCamera()

					local LookAt = CFrame.lookAt(Camera.CFrame.Position, Closest.Position)
					local X, Y = LookAt:ToEulerAnglesYXZ()

					local AngleX, AngleY = ActiveCamera._angles.X, ActiveCamera._angles.Y

					local DeltaX = (X - AngleX + math.pi) % (2 * math.pi) - math.pi
					local DeltaY = (Y - AngleY + math.pi) % (2 * math.pi) - math.pi

					ActiveCamera._angles = Vector3.new(
						AngleX + DeltaX / Library.flags.AimbotSmoothnessX,
						AngleY + DeltaY / Library.flags.AimbotSmoothnessY,
						0
					)
				end
			end
		end
	end))
)

local Window = Library:CreateWindow({
	Color = Color3.fromRGB(128, 128, 128),
	Keybind = Enum.KeyCode.End,
	WindowName = "Sniper Hub | Phantom Forces",
}, gethui())

local Tabs = {
	Main = Window:CreateTab("Main"),
	Esp = Window:CreateTab("Esp"),
	Settings = Window:CreateTab("Settings"),
}

local Sections = {
	AimbotSection = Tabs.Main:CreateSection("Aimbot", "left"),
	--SilentAimSection = Tabs.Main:CreateSection("Silent Aim", "right"),
	MiscAimSettingsSection = Tabs.Main:CreateSection("Misc Aim Settings", "left"),
	GunModsSection = Tabs.Main:CreateSection("Gun Mods", "right"),
	GuiSection = Tabs.Settings:CreateSection("Gui", "right"),
}

Sections.AimbotSection:CreateToggle("Enable", false, function(Value)
	Library.flags.Aimbot = Value
end)

local AimbotFovToggle = Sections.AimbotSection:CreateToggle("Show Fov", false, function(Value)
	AimbotFovOutline.Visible = Value
	AimbotFov.Visible = Value
end)

Sections.AimbotSection
	:CreateColorpicker("Color Picker", function(Color)
		AimbotFov.Color = Color
	end, false, false, AimbotFovToggle)
	:UpdateColor(Color3.new(1, 1, 1))

Sections.AimbotSection:CreateSlider("Fov Range", 25, 500, AimbotFov.Radius, true, function(Value)
	AimbotFovOutline.Radius = Value
	AimbotFov.Radius = Value
end)

Sections.AimbotSection:CreateSlider("Smoothness X", 1, 10, 1, false, function(Value)
	Library.flags.AimbotSmoothnessX = Value
end)

Sections.AimbotSection:CreateSlider("Smoothness Y", 1, 10, 1, false, function(Value)
	Library.flags.AimbotSmoothnessY = Value
end)

Sections.AimbotSection:CreateDropdown("Aim Type", { "Camera", "Mouse" }, function(Value)
	Library.flags.AimbotType = Value
end, "Mouse", false)

Sections.AimbotSection:CreateDropdown("Hit Part", Parts, function(Value)
	Library.flags.AimbotPart = Value
end, "Head", false)

--[[
Sections.SilentAimSection:CreateToggle("Enable", false, function(Value)
	Library.flags.SilentAim = Value;
end):CreateKeybind("", function(key) end, "Toggle")

local SilentFovToggle = Sections.SilentAimSection:CreateToggle("Show Fov", false, function(Value)
	SilentFovOutline.Visible = Value
	SilentFov.Visible = Value
end)

Sections.SilentAimSection:CreateColorpicker("Color Picker", function(Color)
	SilentFov.Color = Color;
end, false, false, SilentFovToggle):UpdateColor(Color3.new(1, 1, 1))

Sections.SilentAimSection:CreateSlider("Hit Chance", 1, 100, 100, true, function(Value)
	Library.flags.SilentAimChance = Value
end)

Sections.SilentAimSection:CreateSlider("Fov Range", 25, 500, SilentFov.Radius, true, function(Value)
	SilentFovOutline.Radius = Value
	SilentFov.Radius = Value
end)

Sections.SilentAimSection:CreateDropdown("Targeted Part", Parts, function(Value)
	Library.flags.SilentAimPart = Value
end, "Head", false)
]]

Sections.MiscAimSettingsSection:CreateToggle("Visible Check", false, function(Value)
	Library.flags.VisibleCheck = Value
end)

Sections.GunModsSection:CreateToggle("Always Automatic", false, function(Value)
	Library.flags.AlwaysAutomatic = Value
end)

Sections.GunModsSection:CreateToggle("No Camera Bob", false, function(Value)
	Library.flags.NoCameraBob = Value
end)

Sections.GunModsSection:CreateToggle("Instant Reload", false, function(Value)
	Library.flags.IntantReload = Value
end)

Sections.GunModsSection:CreateToggle("No Walk Sway", false, function(Value)
	Library.flags.NoWalkSway = Value
end)

Sections.GunModsSection:CreateToggle("No Gun Sway", false, function(Value)
	Library.flags.NoGunSway = Value
end)

Sections.GunModsSection:CreateSlider("Recoil", 0, 200, 100, true, function(Value)
	Library.flags.RecoilMod = Value / 100
end, nil, "%")

Sections.GuiSection:CreateButton("Unload UI", function()
	Esp:Destroy()
	Hook:Restore()
	Library:Destroy()
	cleardrawcache()
end)

Sections.GuiSection
	:CreateButton("Toggle UI", function()
		Window:ToggleVisibility()
	end)
	:CreateKeybind(Enum.KeyCode.End, function()
		Window:ToggleVisibility()
	end)

local ConfigManager = assert(
	loadstring(
		game:HttpGet("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/ConfigManager.lua"),
		"=ConfigManager"
	),
	"Failed to compile ConfigManager.lua"
)()
ConfigManager:SetLibrary(Library)
ConfigManager:SetWindow(Window)
ConfigManager:SetFolder("Sniper Hub")
ConfigManager:BuildConfigSection(Tabs.Settings)
ConfigManager:LoadAutoloadConfig()
