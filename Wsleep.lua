--[[
-- Simple function that will pause for x seconds
-- This is OS specific - Windows
--]]

local function Wsleep(s)
	os.execute("timeout " .. tonumber(s) .. " /nobreak >nul")
end

print("Hello")
Wsleep(2)
print("Two second pause")
Wsleep(1)
os.exit()
