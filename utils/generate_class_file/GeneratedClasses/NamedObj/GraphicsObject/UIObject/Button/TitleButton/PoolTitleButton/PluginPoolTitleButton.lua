---@meta

---@class PluginPoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local PluginPoolTitleButton = {}
---@return "PluginPoolTitleButton"
function PluginPoolTitleButton:GetClass() end
---@return "UIObject"
function PluginPoolTitleButton:GetChildClass() end
---@generic T : PluginPoolTitleButton
---@param class `T`
---@return boolean
function PluginPoolTitleButton:IsClass(class) end