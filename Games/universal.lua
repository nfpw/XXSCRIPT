-- locals
local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
local http_request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;
local shared = (getgenv and getgenv()) or shared or _G

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
local ScriptName = "Anka Hub"

local function requesturl(url)
	if RunService:IsStudio() then	
		return nil
	end
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

-- library
local Config = (shared.Anka and shared.Anka.Config) or nil
local Library = loadstring(requesturl("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/Module.lua"))()
local Window = Library:CreateWindow(Config, gethui())
local WindowName = Library:SetWindowName(ScriptName)

local Tabs = {
    Main = Window:CreateTab("Main"),
    Settings = Window:CreateTab("Settings"),
}

local Sections = {
    OtherSettings = Tabs.Settings:CreateSection("Misc", "right"),
}

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
local watermarktoggle = Sections.OtherSettings:CreateToggle("Watermark", false, function(state)
    watermark:SetVisibility(state)
    if state then
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
        until (not state)
    end
end)

-- config manager
local cfgm = loadstring(requesturl("https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Library/ConfigManager.lua"))()
cfgm:SetLibrary(Library)
cfgm:SetWindow(Window)
cfgm:SetFolder("Anka")
cfgm:BuildConfigSection(Tabs.Settings)
cfgm:LoadAutoloadConfig()
