---@meta

---@class SequenceGridCell: DBObjectGridCell
local SequenceGridCell = {}
---@return "SequenceGridCell"
function SequenceGridCell:GetClass() end
---@return "UIObject"
function SequenceGridCell:GetChildClass() end
---@generic T : SequenceGridCell
---@param class `T`
---@return boolean
function SequenceGridCell:IsClass(class) end