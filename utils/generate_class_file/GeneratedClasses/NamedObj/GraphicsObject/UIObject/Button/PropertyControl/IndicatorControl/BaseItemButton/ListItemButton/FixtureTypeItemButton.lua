---@meta

---@class FixtureTypeItemButton: ListItemButton
local FixtureTypeItemButton = {}
---@return "FixtureTypeItemButton"
function FixtureTypeItemButton:GetClass() end
---@return "UIObject"
function FixtureTypeItemButton:GetChildClass() end
---@generic T : FixtureTypeItemButton
---@param class `T`
---@return boolean
function FixtureTypeItemButton:IsClass(class) end