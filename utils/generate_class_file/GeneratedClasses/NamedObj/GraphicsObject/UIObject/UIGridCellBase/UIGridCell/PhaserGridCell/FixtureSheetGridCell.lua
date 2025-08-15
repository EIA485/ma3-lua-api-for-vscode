---@meta

---@class FixtureSheetGridCell: PhaserGridCell
local FixtureSheetGridCell = {}
---@return "FixtureSheetGridCell"
function FixtureSheetGridCell:GetClass() end
---@return "UIObject"
function FixtureSheetGridCell:GetChildClass() end
---@generic T : FixtureSheetGridCell
---@param class `T`
---@return boolean
function FixtureSheetGridCell:IsClass(class) end