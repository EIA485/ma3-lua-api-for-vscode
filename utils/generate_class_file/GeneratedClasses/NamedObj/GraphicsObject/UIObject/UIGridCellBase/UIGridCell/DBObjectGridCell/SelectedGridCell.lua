---@meta

---@class SelectedGridCell: DBObjectGridCell
local SelectedGridCell = {}
---@return "SelectedGridCell"
function SelectedGridCell:GetClass() end
---@return "UIObject"
function SelectedGridCell:GetChildClass() end
---@generic T : SelectedGridCell
---@param class `T`
---@return boolean
function SelectedGridCell:IsClass(class) end