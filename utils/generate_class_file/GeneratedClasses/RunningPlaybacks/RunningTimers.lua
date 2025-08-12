---@meta

---@class RunningTimers: RunningPlaybacks
local RunningTimers = {}
---@return "RunningTimers"
function RunningTimers:GetClass() end
---@return "Timer"
function RunningTimers:GetChildClass() end
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
---@overload fun(name: string, class: nil): Object
function RunningTimers:FindRecursive(name, class) end
