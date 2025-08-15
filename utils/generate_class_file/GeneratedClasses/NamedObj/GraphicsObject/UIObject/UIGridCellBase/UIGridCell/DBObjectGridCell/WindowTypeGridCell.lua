---@meta

---@class WindowTypeGridCell: DBObjectGridCell
local WindowTypeGridCell = {}
---@return "WindowTypeGridCell"
function WindowTypeGridCell:GetClass() end
---@return "UIObject"
function WindowTypeGridCell:GetChildClass() end
---@generic T : WindowTypeGridCell
---@param class `T`
---@return boolean
function WindowTypeGridCell:IsClass(class) end