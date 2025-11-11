local request = (syn and syn.request) or (http and http.request) or http_request
local shared = (getgenv and getgenv()) or shared or _G or {}
local loadstring_handler = {}
local req = nil

local load_url = "https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Loader/loader.lua"

loadstring_handler["setup_config"] = function()
	shared["Anka"] = {
		["Config"] = {
			Color = Color3.fromRGB(255, 128, 64); Keybind = Enum.KeyCode.RightShift;
			MinHeight = 100; MaxHeight = 600; InitialHeight = 400;
			MinWidth = 300; MaxWidth = 800; InitialWidth = 500;
		}; ["Key"] = "NONE";
	};
end

loadstring_handler["init"] = function()
	loadstring_handler["setup_config"]()
	req = request({Url = load_url; Method = "GET"})
	if req["StatusCode"] == 200 then loadstring(req["Body"])(); end
end

loadstring_handler["init"]()
