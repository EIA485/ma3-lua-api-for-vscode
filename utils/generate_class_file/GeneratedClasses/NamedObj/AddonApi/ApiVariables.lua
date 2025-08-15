---@meta

---@class ApiVariables: AddonApi
local ApiVariables = {}
---@return "ApiVariables"
function ApiVariables:GetClass() end
---@return "Object"
function ApiVariables:GetChildClass() end
---@generic T : ApiVariables
---@param class `T`
---@return boolean
function ApiVariables:IsClass(class) end