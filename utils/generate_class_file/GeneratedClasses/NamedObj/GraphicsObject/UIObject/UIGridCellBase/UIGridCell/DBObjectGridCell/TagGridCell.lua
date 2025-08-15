---@meta

---@class TagGridCell: DBObjectGridCell
local TagGridCell = {}
---@return "TagGridCell"
function TagGridCell:GetClass() end
---@return "UIObject"
function TagGridCell:GetChildClass() end
---@generic T : TagGridCell
---@param class `T`
---@return boolean
function TagGridCell:IsClass(class) end