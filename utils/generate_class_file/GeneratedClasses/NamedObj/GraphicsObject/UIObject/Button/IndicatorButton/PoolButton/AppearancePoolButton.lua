---@meta

---@class AppearancePoolButton: PoolButton
local AppearancePoolButton = {}
---@return "AppearancePoolButton"
function AppearancePoolButton:GetClass() end
---@return "UIObject"
function AppearancePoolButton:GetChildClass() end
---@generic T : AppearancePoolButton
---@param class `T`
---@return boolean
function AppearancePoolButton:IsClass(class) end