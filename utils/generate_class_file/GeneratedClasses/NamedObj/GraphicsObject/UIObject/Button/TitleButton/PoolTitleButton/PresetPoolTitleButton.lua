---@meta

---@class PresetPoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local PresetPoolTitleButton = {}
---@return "PresetPoolTitleButton"
function PresetPoolTitleButton:GetClass() end
---@return "UIObject"
function PresetPoolTitleButton:GetChildClass() end
---@generic T : PresetPoolTitleButton
---@param class `T`
---@return boolean
function PresetPoolTitleButton:IsClass(class) end
---@return PresetPoolLayoutGrid
function PresetPoolTitleButton:Parent() end