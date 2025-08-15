---@meta

---@class MyRunningMacros: RunningMacros
local MyRunningMacros = {}
---@return "MyRunningMacros"
function MyRunningMacros:GetClass() end
---@return "Macro"
function MyRunningMacros:GetChildClass() end
---@generic T : MyRunningMacros
---@param class `T`
---@return boolean
function MyRunningMacros:IsClass(class) end