---@meta

---@class MyRunningTimers: RunningTimers
local MyRunningTimers = {}
---@return "MyRunningTimers"
function MyRunningTimers:GetClass() end
---@return "Timer"
function MyRunningTimers:GetChildClass() end
---@generic T : MyRunningTimers
---@param class `T`
---@return boolean
function MyRunningTimers:IsClass(class) end