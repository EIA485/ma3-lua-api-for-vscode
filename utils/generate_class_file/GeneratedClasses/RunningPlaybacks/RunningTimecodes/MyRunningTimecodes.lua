---@meta

---@class MyRunningTimecodes: RunningTimecodes
local MyRunningTimecodes = {}
---@return "MyRunningTimecodes"
function MyRunningTimecodes:GetClass() end
---@return "Timecode"
function MyRunningTimecodes:GetChildClass() end
---@generic T : MyRunningTimecodes
---@param class `T`
---@return boolean
function MyRunningTimecodes:IsClass(class) end