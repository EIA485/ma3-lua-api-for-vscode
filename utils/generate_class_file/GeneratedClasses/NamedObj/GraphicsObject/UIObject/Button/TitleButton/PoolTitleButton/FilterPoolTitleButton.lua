---@meta

---@class FilterPoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local FilterPoolTitleButton = {}
---@return "FilterPoolTitleButton"
function FilterPoolTitleButton:GetClass() end
---@return "UIObject"
function FilterPoolTitleButton:GetChildClass() end
---@generic T : FilterPoolTitleButton
---@param class `T`
---@return boolean
function FilterPoolTitleButton:IsClass(class) end