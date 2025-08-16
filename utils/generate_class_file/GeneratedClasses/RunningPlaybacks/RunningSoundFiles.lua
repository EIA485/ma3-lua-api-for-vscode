---@meta

---@class RunningSoundFiles: RunningPlaybacks
local RunningSoundFiles = {}
---@return "RunningSoundFiles"
function RunningSoundFiles:GetClass() end
---@return "Sound"
function RunningSoundFiles:GetChildClass() end
---@generic T : RunningSoundFiles
---@param class `T`
---@return boolean
function RunningSoundFiles:IsClass(class) end
---@return RunningPlaybacksCollect
function RunningSoundFiles:Parent() end
---@param index integer
---@return Sound
function RunningSoundFiles:Ptr(index) end
---@return Sound[]
function RunningSoundFiles:Children() end
---@return Sound?
function RunningSoundFiles:CurrentChild() end
---@overload fun(name: integer, role: nil): Sound
function RunningSoundFiles:Get(name, role) end
function RunningSoundFiles:Create(index, class, undo) end
function RunningSoundFiles:Append(class, undo, count) end
function RunningSoundFiles:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function RunningSoundFiles:Aquire(class, undo) end
function RunningSoundFiles:Insert(index, class, undo, count) end
function RunningSoundFiles:Find(class, undo) end
function RunningSoundFiles:SetChildren(property_name, property_value) end
function RunningSoundFiles:SetChildrenRecursive(property_name, property_value) end