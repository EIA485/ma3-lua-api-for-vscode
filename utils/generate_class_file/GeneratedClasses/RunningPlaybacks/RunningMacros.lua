---@meta

---@class RunningMacros: RunningPlaybacks
local RunningMacros = {}
---@return "RunningMacros"
function RunningMacros:GetClass() end
---@return "Macro"
function RunningMacros:GetChildClass() end
---@return RunningPlaybacksCollect
function RunningMacros:Parent() end
---@param index integer
---@return Macro
function RunningMacros:Ptr(index) end
---@return Macro[]
function RunningMacros:Children() end
---@return Macro?
function RunningMacros:CurrentChild() end
---@overload fun(name: integer, role: nil): Macro
function RunningMacros:Get(name, role) end
function RunningMacros:Create(index, class, undo) end
function RunningMacros:Append(class, undo, count) end
function RunningMacros:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function RunningMacros:Aquire(class, undo) end
function RunningMacros:Insert(index, class, undo, count) end
function RunningMacros:Find(class, undo) end