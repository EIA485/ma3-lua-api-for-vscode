---@meta

---@class CueInputGridCell: DBObjectGridCell
local CueInputGridCell = {}
---@return "CueInputGridCell"
function CueInputGridCell:GetClass() end
---@return "UIObject"
function CueInputGridCell:GetChildClass() end
---@generic T : CueInputGridCell
---@param class `T`
---@return boolean
function CueInputGridCell:IsClass(class) end