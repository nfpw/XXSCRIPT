if not game:IsLoaded() then
	repeat
		game.Loaded:Wait()
	until game:IsLoaded()
end

-- locals
local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
local http_request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;
local shared = (getgenv and getgenv()) or shared or _G
local executorname = (getexecutorname and getexecutorname()) or "noname"

local MarketplaceService = getservice("MarketplaceService")
local ReplicatedStorage = getservice("ReplicatedStorage")
local UserInputService = getservice("UserInputService")
local TweenService = getservice("TweenService")
local HttpService = getservice("HttpService")
local TextService = getservice("TextService")
local RunService = getservice("RunService")
local Players = getservice("Players")
local Stats = getservice("Stats")

local LocalPlayer = Players.LocalPlayer
local ScriptName = "Anka.Hook"

if not hookmetamethod then
    LocalPlayer:Kick("get better executor / bu executor script icin uygun degil")
    return
end

local function requesturl(url)
	local req = http_request({
		Url = url,
		Method = "GET"
	})
	if req.StatusCode ~= 200 then
		return nil, req.StatusCode
	end
	return req.Body
end

-- functions
local Sections = nil
local Hooks = nil
task.defer(function()
    repeat task.wait() until Sections and Sections.HookSection and Hooks
    if Sections.HookSection and Hooks then
        local va; va = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            local checkcall = checkcaller()

            -- checkcall
            if checkcall then
                return va(self, ...)
            end

            -- antikick
            if not checkcall and Hooks.AntiKick and self == LocalPlayer and method == "Kick" then
                return nil
            end
            
            -- afkspoof
            if not checkcall and Hooks.AFKSpoof and self == ReplicatedStorage.FindFirstChild(ReplicatedStorage, "AFK") and method == "FireServer" then
                local args = {...}
                args[1] = true
                return va(self, unpack(args))
            end
            
            -- platfromspoof
            if not checkcall and Hooks.PlatformSpoof and self == ReplicatedStorage.FindFirstChild(ReplicatedStorage, "reportPlatform") and method == "FireServer" then
                local args = {...}
                args[1] = Hooks.PlatformType
                return va(self, unpack(args))
            end

            return va(self, ...)
        end)
    end
end)

-- library
local Config = (shared.Anka and shared.Anka.Config) or nil
local Library = loadstring(requesturl("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/Module.lua"))()
local Window = Library:CreateWindow(Config, gethui())
local WindowName = Library:SetWindowName(ScriptName.." - "..executorname)

local Tabs = {
    Main = Window:CreateTab("Main"),
    Settings = Window:CreateTab("Settings"),
}

Sections = {
    OtherSettings = Tabs.Settings:CreateSection("Misc", "right"),
    HookSection = Tabs.Main:CreateSection("Hooks", "left"),
    FarmSection = Tabs.Main:CreateSection("Farm", "right"),
    BlablaSection = Tabs.Main:CreateSection("BlaBla", "right"),
}

if Sections.OtherSettings then
    local OtherSettingsTable = {
        WatermarkBoolean = false,
    }
    local function GetCurrentTime()
        return os.date("%H:%M")
    end
    local function GetCurrentDate()
        return os.date("%B %d, %Y")
    end
    local function GetPing()
        local ping = Stats:FindFirstChild("PerformanceStats"):FindFirstChild("Ping")
        return ping and math.floor(ping:GetValue()) or 0
    end
    local function GetGameName()
        local success, result = pcall(function()
            return MarketplaceService:GetProductInfo(game.PlaceId)
        end)
        return success and result.Name or "Unknown Game"
    end
    local function GetPlayerName()
        return Players.LocalPlayer.Name
    end
    local accentcolorpicker = Sections.OtherSettings:CreateColorpicker(
        "UI Theme Color",
        function(color, transparency)
            print("UI theme updated:", color, "transparency:", transparency)
        end,
        true
    )
    accentcolorpicker:UpdateColor(Color3.fromRGB(255, 128, 64))
    local uikeybindtoggle = Sections.OtherSettings:CreateToggle("UI Keybind", false, function(enabled) end)
    uikeybindtoggle:CreateKeybind(Enum.KeyCode.RightControl, function(key)
        Library:ChangeToggleKeybind(Enum.KeyCode[key])
    end, "Toggle")
    local watermark = Library:Hud(); watermark:SetText(ScriptName)
    local selectedwatermark = {
        "Date",
        "Time",
        "Ping",
        "Game Name",
        "Player Name"
    }
    local watermarkdropdown = Sections.OtherSettings:CreateDropdown(
        "Watermark Options",
        {"Date", "Time", "Ping", "Game Name", "Player Name"},
        function(selected)
            selectedwatermark = selected
        end,
        selectedwatermark,
        true
    )
    local watermarktoggle = Sections.OtherSettings:CreateToggle("Watermark", OtherSettingsTable.WatermarkBoolean, function(state)
        OtherSettingsTable.WatermarkBoolean = state
        watermark:SetVisibility(OtherSettingsTable.WatermarkBoolean)
        if OtherSettingsTable.WatermarkBoolean then
            repeat
                local parts = {}
                if table.find(selectedwatermark, "Date") then
                    table.insert(parts, GetCurrentDate())
                end
                if table.find(selectedwatermark, "Time") then
                    table.insert(parts, GetCurrentTime())
                end
                if table.find(selectedwatermark, "Ping") then
                    table.insert(parts, string.format("%d ms", GetPing()))
                end
                if table.find(selectedwatermark, "Game Name") then
                    table.insert(parts, GetGameName())
                end
                if table.find(selectedwatermark, "Player Name") then
                    table.insert(parts, GetPlayerName())
                end
                watermark:SetText(table.concat(parts, " | "))
                task.wait()
            until (not WatermarkBoolean)
        end
    end)
    Window:Notify(ScriptName, "AntiCheat Kicks are disabled.", 20)
end

if Sections.FarmSection then
    local Farm = {
        AutoSteal = false,
        MinValue = 1,
        AutoParkour = false,
        AutoGrabMoney = false,
    }
    local autostealtoggle = Sections.FarmSection:CreateToggle("Auto-Steal", Farm.AutoSteal, function(state)
        Farm.AutoSteal = state
        if Farm.AutoSteal then
            repeat
                local dp = Workspace:FindFirstChild("DroppedCash")
                if dp then
                    for _, child in pairs(dp:GetChildren()) do
                        if not Farm.AutoSteal then break end
                        if child:FindFirstChild("Owner") and child.Owner.Value ~= LocalPlayer.UserId then
                            if child:FindFirstChild("Vault") and child.Vault.Value >= Farm.MinValue and LocalPlayer.Character and LocalPlayer.Character.HumanoidRootPart then
                                local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                                if humanoid and humanoid.Sit then
                                    humanoid.Sit = false
                                elseif humanoid and not humanoid.Sit then
                                    LocalPlayer.Character:SetPrimaryPartCFrame(child.CFrame)
                                    task.wait(.2)
                                    local cdscc = child:FindFirstChildOfClass("ClickDetector")
                                    if cdscc then
                                        fireclickdetector(cdscc)
                                    end
                                end
                                task.wait()
                            end
                        end
                    end
                end
                task.wait()
            until (not Farm.AutoSteal)
        end
    end)
    local valueslider = Sections.FarmSection:CreateSlider(
        "minimum money value",
        1,
        1000,
        Farm.MinValue,
        true,
        function(value)
            Farm.MinValue = value
        end
    )
    local autoparkourtoggle = Sections.FarmSection:CreateToggle("Auto-Parkour", Farm.AutoParkour, function(state)
        Farm.AutoParkour = state
        if Farm.AutoParkour then
            repeat
                local skiddedfolder = Workspace["b\007\010\007\010\007"]
                if skiddedfolder then
                    for _, child in pairs(skiddedfolder:GetChildren()) do
                        if not Farm.AutoParkour then break end
                        if child.Name == "ParkourMoney" then
                            local halo = child:FindFirstChild("Halo")
                            if halo and halo.Transparency < 1 then 
                                local touchpart = child:FindFirstChild("Touch part")
                                if touchpart then
                                    local touchinterest = touchpart:FindFirstChildOfClass("TouchTransmitter")
                                    if touchinterest and LocalPlayer.Character and LocalPlayer.Character.HumanoidRootPart then
                                        firetouchinterest(LocalPlayer.Character.HumanoidRootPart, touchpart, 0)
                                        firetouchinterest(LocalPlayer.Character.HumanoidRootPart, touchpart, 1)
                                    end
                                end
                            end
                        end
                    end
                end
                task.wait(.1)
            until (not Farm.AutoParkour)
        end
    end)
    local autograbmoneytoggle = Sections.FarmSection:CreateToggle("AutoGrab-Money", Farm.AutoGrabMoney, function(state)
        Farm.AutoGrabMoney = state
        if Farm.AutoGrabMoney then
            repeat
                local skiddedfolder = Workspace["b\007\010\007\010\007"]
                if skiddedfolder then
                    for _, child in pairs(skiddedfolder:GetChildren()) do
                        if not Farm.AutoGrabMoney then break end
                        if child:IsA("MeshPart") and child.Transparency < 1 then 
                            if LocalPlayer.Character then
                                local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                                if humanoid and humanoid.Sit then
                                    humanoid.Sit = false
                                elseif humanoid and not humanoid.Sit then
                                    local humanoidrootpart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                    if humanoidrootpart then
                                        humanoidrootpart.Velocity = Vector3.new(0, 0, 0)
                                        humanoidrootpart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                                    end
                                    LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(child.Position + Vector3.new(2, 5, -2)))
                                    task.wait(.1)
                                    LocalPlayer.Character:SetPrimaryPartCFrame(child.CFrame + Vector3.new(-1, 2, 1))
                                end
                                repeat task.wait(.1) until child.Transparency >= 1 or not Farm.AutoGrabMoney
                            end
                        end
                    end
                end
                task.wait()
            until (not Farm.AutoGrabMoney)
        end
    end)
end

if Sections.HookSection then
    Hooks = {
        AntiKick = true,
        AFKSpoof = false,
        PlatformSpoof = false,
        PlatformType = "Computer",
        RandomPlatform = false
    }
    local platforms = {"Computer", "Mobile", "Console"}
    local antikicktoggle = Sections.HookSection:CreateToggle("Anti-Kick", Hooks.AntiKick, function(state)
        Hooks.AntiKick = state
    end)
    local afkspooftoggle = Sections.HookSection:CreateToggle("AFK-Spoof", Hooks.AFKSpoof, function(state)
        Hooks.AFKSpoof = state
        ReplicatedStorage:FindFirstChild("AFK"):FireServer(Hooks.AFKSpoof)
    end)
    local platformspooftoggle = Sections.HookSection:CreateToggle("Platform-Spoof", Hooks.PlatformSpoof, function(state)
        Hooks.PlatformSpoof = state
        if Hooks.PlatformSpoof then
            ReplicatedStorage:FindFirstChild("reportPlatform"):FireServer(Hooks.PlatformType)
        end
    end)
    local platformdropdown = Sections.HookSection:CreateDropdown(
        "Platform-Type",
        platforms,
        function(selected)
            Hooks.PlatformType = selected
        end,
        "Computer",
        false
    )
    local randomplatformtoggle = Sections.HookSection:CreateToggle("Random-Platform", Hooks.RandomPlatform, function(state)
        Hooks.RandomPlatform = state
        if Hooks.RandomPlatform then
            repeat                   
                local platform = platforms[math.random(1, #platforms)]
                ReplicatedStorage:FindFirstChild("reportPlatform"):FireServer(platform)
                task.wait(.1)
            until (not Hooks.RandomPlatform)
        end
    end)
end

if Sections.BlablaSection then
    Sections.BlablaSection:CreateButton("Inf Yield", function()
        loadstring(requesturl("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    Sections.BlablaSection:CreateButton("Explorer", function()
        loadstring(requesturl("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
    end)
    Sections.BlablaSection:CreateButton("Remote Spy", function()
        loadstring(requesturl("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end)
end

-- config manager
local cfgm = loadstring(requesturl("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/ConfigManager.lua"))()
cfgm:SetLibrary(Library)
cfgm:SetWindow(Window)
cfgm:SetFolder("Anka")
cfgm:BuildConfigSection(Tabs.Settings)
cfgm:LoadAutoloadConfig()
