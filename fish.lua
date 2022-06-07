-----------------------------------------------------------------------------------
-- Small module to add Unix 'clear' & 'sleep(x)' functions to Lua scripts
-- Module will auto detect the user's system, if Unix/Linux/MacOS/Android{Termux}
-- OR
-- Windows
-- Sleep(x)  x-is always in seconds
-----------------------------------------------------------------------------------
local fish = {}

usrOS = (package.config:sub(1,1))

if usrOS == '/' then
	
	function fish.clear()
		os.execute('clear')
		end
	
	function fish.sleep(n)
		os.execute('sleep ' .. tonumber(n))
		end
	else
	
	function fish.clear()
		os.execute('cls')
	end

	function fish.sleep(s)
		os.execute('timeout ' .. tonumber(s) .. ' /nobreak >nul')
	end
end
	

-- Change print color functions:
-- This is implemented messy AF, I'll improve this as the project is consumed more.

function fish.red(hut)
  print( '\27[31m'..hut)
end

function fish.blue(hut1)
  print('\27[34m'..hut1)
end

function fish.magenta(hut2)
  print('\27[35m'..hut2)
end

function fish.green(hut3)
  print('\27[32m'..hut3)
end

function fish.yellow(hut4)
  print('\27[33m'..hut4)
end

function fish.black(hut5)
  print('\27[30m'..hut5)
end

function fish.white(hut6)
  print('\27[37m'..hut6)
end

function fish.cyan(hut7)
  print('\27[36m'..hut7)
end

	
return fish

