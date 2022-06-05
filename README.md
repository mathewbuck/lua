# Lua
collection of lua modules & scripts

***Modules:***
1. fish.lua
    - A small module that adds Bash 'clear' & 'sleep(x) functions to Lua scripting.
    - Module will automatically detect users OS and use the corresponding os.execute() commands
    - example: 
       - local fish = require('fish')
       - fish.clear() -- clears console
       - fish.sleep(3) -- this will sleep for 3 seconds             
