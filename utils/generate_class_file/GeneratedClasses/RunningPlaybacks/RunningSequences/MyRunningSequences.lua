---@meta

---@class MyRunningSequences: RunningSequences
local MyRunningSequences = {}
---@return "MyRunningSequences"
function MyRunningSequences:GetClass() end
---@return "Sequence"
function MyRunningSequences:GetChildClass() end
---@generic T : MyRunningSequences
---@param class `T`
---@return boolean
function MyRunningSequences:IsClass(class) end