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
print("[i] Creating variables and tables...")
VJGjTIBggTjn = {}
LuaPlus = {
ObjectManager = {}
ScriptManager = {}
SimulationManager = {}
}
TabNum = 0

function getlfenv()
return VJGjTIBggTjn
end

print("[i] Creating ScriptManager functions...")
if game then
function LuaPlus.ScriptManager.DisableScript(obj)
  if obj:IsA("BaseScript") or obj:IsA("LocalScript") then
    obj.Disabled = true
    else
    print("[!] Script couldn't be disabled; Argument 'obj' is not a vaild script.")
    end
  end

function LuaPlus.ScriptManager.EnableScript(obj)
  if obj:IsA("BaseScript") or obj:IsA("LocalScript") then
    obj.Disabled = false
    else
    print("[!] Script couldn't be enabled; Argument 'obj' is not a vaild script.")
    end
  end

function LuaPlus.ScriptManager.CreateScript(scripttype, parent, code)
  print("[!] CreateScript is not available at this time due to PluginSecurity.")
  --[[
  if type(code) == "string" then
    if parent ~= nil then
      if scripttype == "LocalScript" then
        newscript = Instance.new("LocalScript")
        newscript = "LuaPlus_Script_"..math.random(100000, 999999)
        newscript.Parent = parent
        newscript.Source = code
        elseif scripttype = "BaseScript" then
        newscript = Instance.new("Script")
        newscript = "LuaPlus_Script_"..math.random(100000, 999999)
        newscript.Parent = parent
        newscript.Source = code
        elseif scripttype = "ModuleScript" then
        newscript = Instance.new("ModuleScript")
        newscript = "LuaPlus_Script_"..math.random(100000, 999999)
        newscript.Parent = parent
        newscript.Source = code
        end
      else
      print("[!] Couldn't create the script; The parent cannot be nil!")
      end
    else
    print("[!] Couldn't create the script; Argument 'code' is not a string.")
    end
  ]]
  end
  else
  print("[!] ScriptManager will not work because this is not being ran inside of Roblox.")
  end

print("[i] Creating ObjectManager functions...")
if game then
function LuaPlus.ObjectManager.DestroyObject(obj)
  if obj:IsA("BasePart") then
    obj.Name = "LuaPlus_Destroyed_Object"
    obj:Destroy()
    else
    print("[!] Couldn't destroy object; Argument 'obj' is not a BasePart.")
    end
  end

function LuaPlus.ObjectManager.DestroyBaseParts()
  for i,v in pairs(workspace:GetDescendants()) do
  if obj:IsA("BasePart") then
    obj.Name = "LuaPlus_Destroyed_Object"
    obj:Destroy()
    else
    end
    end
  end
  else
  print("[!] ObjectManager will not work because this is not being ran inside of Roblox.")
  end

print("[i] Creating SimulationManager functions...")
if game then
  RunService = game:GetService("RunService")
  function LuaPlus.SimulationManager.Pause()
    RunService:Pause()
  end
  
   function LuaPlus.SimulationManager.Run()
    RunService:Run()
  end
  
    function LuaPlus.SimulationManager.Stop()
    RunService:Stop()
  end
  else
  print("[!] SimulationManager will not work because this is not being ran inside of Roblox.")
end

print("[i] Creating functions...")
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
