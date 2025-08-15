---@meta

---@class ApiObject: AddonApi
local ApiObject = {}
---@return "ApiObject"
function ApiObject:GetClass() end
---@return "Object"
function ApiObject:GetChildClass() end
---@generic T : ApiObject
---@param class `T`
---@return boolean
function ApiObject:IsClass(class) end