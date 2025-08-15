---@meta

---@class OopsGridData: DBObjectGridData
local OopsGridData = {}
---@return "OopsGridData"
function OopsGridData:GetClass() end
---@return "Object"
function OopsGridData:GetChildClass() end
---@generic T : OopsGridData
---@param class `T`
---@return boolean
function OopsGridData:IsClass(class) end