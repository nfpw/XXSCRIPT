local getinfo = getinfo or debug.getinfo
local trash = getgc(true)
local shitted = {}
local detected = nil; local crash = nil

for i, v in next, trash do
    if typeof(v) ~= "table" then
        continue
    end
    if not detected and typeof(rawget(v, "Detected")) == "function" then
        detected = rawget(v, "Detected")
        local detect; detect = hookfunction(detected, function(Action, Info, NoCrash) return true end)
        table.insert(shitted, detected)
        continue
    end
    if not crash and rawget(v, "Variables") and rawget(v, "Process") and typeof(rawget(v, "Kill")) == "function" then
        crash = rawget(v, "Kill")
        local nocrash; nocrash = hookfunction(crash, function(Info) end)
        table.insert(shitted, crash)
    end
    continue
end

local funnydetect; funnydetect = hookfunction(getrenv().debug.info, newcclosure(function(...)
    if detected then return coroutine.yield(coroutine.running()); end
    return funnydetect(...)
end))
