local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
local Players = getservice("Players")
local lp = Players.LocalPlayer

local va; va = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if not checkcaller() and self == lp and method == "Kick" then
        local reason = (...)
        return nil
    end
    return va(self, ...)
end)
