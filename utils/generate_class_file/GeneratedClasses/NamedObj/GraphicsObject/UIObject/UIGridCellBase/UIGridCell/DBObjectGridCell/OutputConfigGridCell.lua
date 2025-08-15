---@meta

---@class OutputConfigGridCell: DBObjectGridCell
local OutputConfigGridCell = {}
---@return "OutputConfigGridCell"
function OutputConfigGridCell:GetClass() end
---@return "UIObject"
function OutputConfigGridCell:GetChildClass() end
---@generic T : OutputConfigGridCell
---@param class `T`
---@return boolean
function OutputConfigGridCell:IsClass(class) end