---@meta

---@class SpecialExecutor: Exec
local SpecialExecutor = {}
---@return "SpecialExecutor"
function SpecialExecutor:GetClass() end
---@return "Object"
function SpecialExecutor:GetChildClass() end
---@generic T : SpecialExecutor
---@param class `T`
---@return boolean
function SpecialExecutor:IsClass(class) end
---@return SpecialExecutors
function SpecialExecutor:Parent() end