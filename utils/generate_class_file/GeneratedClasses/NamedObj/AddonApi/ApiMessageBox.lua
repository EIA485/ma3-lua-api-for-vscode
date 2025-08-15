---@meta

---@class ApiMessageBox: AddonApi
local ApiMessageBox = {}
---@return "ApiMessageBox"
function ApiMessageBox:GetClass() end
---@return "Object"
function ApiMessageBox:GetChildClass() end
---@generic T : ApiMessageBox
---@param class `T`
---@return boolean
function ApiMessageBox:IsClass(class) end