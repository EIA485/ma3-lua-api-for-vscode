---@meta

---@class ContentSheetGridCell: FixtureSheetGridCell
local ContentSheetGridCell = {}
---@return "ContentSheetGridCell"
function ContentSheetGridCell:GetClass() end
---@return "UIObject"
function ContentSheetGridCell:GetChildClass() end
---@generic T : ContentSheetGridCell
---@param class `T`
---@return boolean
function ContentSheetGridCell:IsClass(class) end