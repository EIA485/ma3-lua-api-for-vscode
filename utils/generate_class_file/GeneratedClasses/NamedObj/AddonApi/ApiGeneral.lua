---@meta

---@class ApiGeneral: AddonApi
local ApiGeneral = {}
---@return "ApiGeneral"
function ApiGeneral:GetClass() end
---@return "Object"
function ApiGeneral:GetChildClass() end
---@generic T : ApiGeneral
---@param class `T`
---@return boolean
function ApiGeneral:IsClass(class) end