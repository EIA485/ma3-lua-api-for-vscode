---@meta

---@class ConfigurationPoolButton: PoolButton
local ConfigurationPoolButton = {}
---@return "ConfigurationPoolButton"
function ConfigurationPoolButton:GetClass() end
---@return "UIObject"
function ConfigurationPoolButton:GetChildClass() end
---@generic T : ConfigurationPoolButton
---@param class `T`
---@return boolean
function ConfigurationPoolButton:IsClass(class) end