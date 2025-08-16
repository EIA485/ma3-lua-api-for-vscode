---@meta

---@class RunningTimers: RunningPlaybacks
local RunningTimers = {}
---@return "RunningTimers"
function RunningTimers:GetClass() end
---@return "Timer"
function RunningTimers:GetChildClass() end
---@generic T : RunningTimers
---@param class `T`
---@return boolean
function RunningTimers:IsClass(class) end
---@return RunningPlaybacksCollect
function RunningTimers:Parent() end
---@param index integer
---@return Timer
function RunningTimers:Ptr(index) end
---@return Timer[]
function RunningTimers:Children() end
---@return Timer?
function RunningTimers:CurrentChild() end
---@overload fun(name: integer, role: nil): Timer
function RunningTimers:Get(name, role) end
function RunningTimers:Create(index, class, undo) end
function RunningTimers:Append(class, undo, count) end
function RunningTimers:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function RunningTimers:Aquire(class, undo) end
function RunningTimers:Insert(index, class, undo, count) end
function RunningTimers:Find(class, undo) end
function RunningTimers:SetChildren(property_name, property_value) end
function RunningTimers:SetChildrenRecursive(property_name, property_value) end