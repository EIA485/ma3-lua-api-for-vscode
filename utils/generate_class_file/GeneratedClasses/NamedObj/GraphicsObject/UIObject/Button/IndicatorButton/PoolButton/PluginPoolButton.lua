---@meta

---@class PluginPoolButton: PoolButton
local PluginPoolButton = {}
---@return "PluginPoolButton"
function PluginPoolButton:GetClass() end
---@return "UIObject"
function PluginPoolButton:GetChildClass() end
---@generic T : PluginPoolButton
---@param class `T`
---@return boolean
function PluginPoolButton:IsClass(class) end