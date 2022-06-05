
-- Small module to add Unix 'clear' & 'sleep(x)' functions to Lua scripts
-- Module will auto detect the user's system, if Unix/Linux/MacOS/Android{Termux}
-- OR
-- Windows
-- Sleep(x)  x-is always in seconds
--


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
	
	
return fish

