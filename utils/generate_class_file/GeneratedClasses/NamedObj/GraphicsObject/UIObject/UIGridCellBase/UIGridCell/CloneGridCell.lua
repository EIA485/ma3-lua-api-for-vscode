---@meta

---@class CloneGridCell: UIGridCell
local CloneGridCell = {}
---@return "CloneGridCell"
function CloneGridCell:GetClass() end
---@return "UIObject"
function CloneGridCell:GetChildClass() end
---@generic T : CloneGridCell
---@param class `T`
---@return boolean
function CloneGridCell:IsClass(class) end