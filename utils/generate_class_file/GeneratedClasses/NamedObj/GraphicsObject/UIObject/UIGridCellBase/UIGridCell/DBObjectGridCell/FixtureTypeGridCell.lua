---@meta

---@class FixtureTypeGridCell: DBObjectGridCell
local FixtureTypeGridCell = {}
---@return "FixtureTypeGridCell"
function FixtureTypeGridCell:GetClass() end
---@return "UIObject"
function FixtureTypeGridCell:GetChildClass() end
---@generic T : FixtureTypeGridCell
---@param class `T`
---@return boolean
function FixtureTypeGridCell:IsClass(class) end