--[[

.____                __________.__                
|    |    __ _______ \______   \  |  __ __  ______
|    |   |  |  \__  \ |     ___/  | |  |  \/  ___/
|    |___|  |  // __ \|    |   |  |_|  |  /\___ \ 
|_______ \____/(____  /____|   |____/____//____ /

              A Open Source Lua Project
                  Made by WebMario

                Discord: Telamon#2533
            YouTube: https://bit.ly/32wMOti
]]

print("[i] Thanks for using LuaPlus!")
print("[i] Creating variables...")
LuaPlus = {}
TabNum = 0
print("[i] Creating functions...")
function getlfenv()
return LuaPlus
end

function throw_new_exception(obj)
if type(obj) == "string" then
print("[i] Exception has been thrown: "..obj)
error("")
else
print("[!] Exception couldn't be thrown; Argument 'obj' is not a string.")
end
end
TabNum = TabNum + 1
table.insert(LuaPlus, TabNum, throw_new_exception)

function IsInRLua()
if game then
return true
else
return false
end
end
TabNum = TabNum + 1
table.insert(LuaPlus, TabNum, IsInRLua)

function IsTrue(object)
if object then
return true
else
return false
end
end
TabNum = TabNum + 1
table.insert(LuaPlus, TabNum, IsTrue)

function OverrideBFunc(func, newfunc)
check = IsInRLua()
if check then
print("[X] OverrideBFunc must be ran outside of RLua (Roblox Lua). Trying to bypass this will break LuaPlus (by throwing an error).")
else
getfenv()[func] = newfunc -- I don't feel like using _G for this.
end
end
TabNum = TabNum + 1
table.insert(LuaPlus, TabNum, OverrideBFunc)
print("[i] LuaPlus has been successfully loaded!")
