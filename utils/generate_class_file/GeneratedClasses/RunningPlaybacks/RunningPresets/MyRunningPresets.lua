---@meta

---@class MyRunningPresets: RunningPresets
local MyRunningPresets = {}
---@return "MyRunningPresets"
function MyRunningPresets:GetClass() end
---@return "Preset"
function MyRunningPresets:GetChildClass() end
---@generic T : MyRunningPresets
---@param class `T`
---@return boolean
function MyRunningPresets:IsClass(class) end