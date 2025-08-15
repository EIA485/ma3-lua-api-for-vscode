---@meta

---@class ColumnSetGridData: DBObjectGridData
local ColumnSetGridData = {}
---@return "ColumnSetGridData"
function ColumnSetGridData:GetClass() end
---@return "Object"
function ColumnSetGridData:GetChildClass() end
---@generic T : ColumnSetGridData
---@param class `T`
---@return boolean
function ColumnSetGridData:IsClass(class) end