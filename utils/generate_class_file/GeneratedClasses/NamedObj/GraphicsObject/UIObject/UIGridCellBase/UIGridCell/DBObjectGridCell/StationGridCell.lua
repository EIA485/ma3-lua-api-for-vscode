---@meta

---@class StationGridCell: DBObjectGridCell
local StationGridCell = {}
---@return "StationGridCell"
function StationGridCell:GetClass() end
---@return "UIObject"
function StationGridCell:GetChildClass() end
---@generic T : StationGridCell
---@param class `T`
---@return boolean
function StationGridCell:IsClass(class) end