--[[
--*****************************************************************************************************
--* What-It-Do: Module that adds bash shell 'clear' & 'sleep(x)' Functionaity to lua scripting.       *
--* Module will auto determine the user's OS, allowing user's to call the same function names         *
--* Regardless of Operating system.                                                                   *
--*                                                                                                   *
--*****************************************************************************************************
--]]

local usrOS = (package.config:sub(1,1))

if usrOS == '/' then
	local userSys = "Unix/Linux & Android"
	
	local function clear()
		os.execute('clear')
	end

	local function sleep(s)
		os.execute('sleep ' .. tonumber(s))
	end
else
	local userSys = "Windows"

	local function clear()
		os.execute('cls')
	end

	local function sleep(s)
		os.execute('timeout ' .. tonumber(s) .. ' /nobreak >nul')
	end
end





