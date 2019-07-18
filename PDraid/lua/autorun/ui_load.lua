PDraid = PDraid or {}
PDraid.Dir = "ui"
PDraid.Tests = {}


function PDraid:IncludeClinet(path)
 local str = self.Dir .. "/" .. path .. ".lua"
 
 print ("Including PDraid file", str)
 
if (CLIENT) then
 include (str)
 end
 
if(SERVER) then
  AddCSLuaFile(str)
  end
 end

PDraid:IncludeClinet("settings/theme")
PDraid:IncludeClinet("misc/font")
PDraid:IncludeClinet("elements/frame")
PDraid:IncludeClinet("test/frame")
PDraid:IncludeClinet("elements/squad")


