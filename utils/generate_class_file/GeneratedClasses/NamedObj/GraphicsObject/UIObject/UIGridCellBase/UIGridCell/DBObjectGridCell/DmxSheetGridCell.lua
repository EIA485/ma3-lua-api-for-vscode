---@meta

---@class DmxSheetGridCell: DBObjectGridCell
local DmxSheetGridCell = {}
---@return "DmxSheetGridCell"
function DmxSheetGridCell:GetClass() end
---@return "UIObject"
function DmxSheetGridCell:GetChildClass() end
---@generic T : DmxSheetGridCell
---@param class `T`
---@return boolean
function DmxSheetGridCell:IsClass(class) end