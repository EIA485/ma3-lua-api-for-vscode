---@meta

---@class GelGridCell: DBObjectGridCell
local GelGridCell = {}
---@return "GelGridCell"
function GelGridCell:GetClass() end
---@return "UIObject"
function GelGridCell:GetChildClass() end
---@generic T : GelGridCell
---@param class `T`
---@return boolean
function GelGridCell:IsClass(class) end