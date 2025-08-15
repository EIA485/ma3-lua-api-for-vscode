---@meta

---@class RunningSequences: RunningPlaybacks
local RunningSequences = {}
---@return "RunningSequences"
function RunningSequences:GetClass() end
---@return "Sequence"
function RunningSequences:GetChildClass() end
---@generic T : RunningSequences
---@param class `T`
---@return boolean
function RunningSequences:IsClass(class) end
---@return RunningPlaybacksCollect
function RunningSequences:Parent() end
---@param index integer
---@return Sequence
function RunningSequences:Ptr(index) end
---@return Sequence[]
function RunningSequences:Children() end
---@return Sequence?
function RunningSequences:CurrentChild() end
---@overload fun(name: integer, role: nil): Sequence
function RunningSequences:Get(name, role) end
function RunningSequences:Create(index, class, undo) end
function RunningSequences:Append(class, undo, count) end
function RunningSequences:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function RunningSequences:Aquire(class, undo) end
function RunningSequences:Insert(index, class, undo, count) end
function RunningSequences:Find(class, undo) end
function RunningSequences:Mode(property_name, property_value) end
function RunningSequences:Mode(property_name, property_value) end
function RunningSequences:SetChildrenRecursive(property_name, property_value) end