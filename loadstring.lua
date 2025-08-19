local shared = (getgenv and getgenv()) or shared or _G
local request = (syn and syn.request) or (http and http.request) or http_request
shared.Anka = {
    Config = {
		Color = Color3.fromRGB(255, 128, 64),
		Keybind = Enum.KeyCode.RightShift,
		MinHeight = 100,
		MaxHeight = 600,
		InitialHeight = 400,
		MinWidth = 300,
		MaxWidth = 800,
		InitialWidth = 500,
	},
    Key = "NONE",
}

local req = request({Url = "https://raw.githubusercontent.com/nfpw/XXSCRIPT/refs/heads/main/Loader/GetScript.lua", Method = "GET"})
if req.StatusCode == 200 then
    loadstring(req.Body)()
end
