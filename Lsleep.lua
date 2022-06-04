--[[
-- Simple function that will pause for x seconds
-- This is OS specific - Unix/Linux (Works on termux as well)
----]]

local function Lsleep(n)
	os.execute("sleep " ..tonumber(n))
end

print("Hello")
Lsleep(2)
print("Two second pause")
