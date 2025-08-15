---@meta

---@class ApiPSN: AddonApi
local ApiPSN = {}
---@return "ApiPSN"
function ApiPSN:GetClass() end
---@return "Object"
function ApiPSN:GetChildClass() end
---@generic T : ApiPSN
---@param class `T`
---@return boolean
function ApiPSN:IsClass(class) end