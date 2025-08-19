local cloneref = cloneref or function(v) return v; end
local function getservice(v) return cloneref(game:GetService(v)); end
local Players = getservice("Players")
local mps = getservice("MarketplaceService")
local lp = Players.LocalPlayer

local ohmeygadhook; ohmeygadhook = hookmetamethod(mps, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if not checkcaller() and method == "UserOwnsGamePassAsync" then
        local args = {...}
        if args[1] == lp.UserId then
            return true
        end
    end
    return ohmeygadhook(self, ...)
end)
