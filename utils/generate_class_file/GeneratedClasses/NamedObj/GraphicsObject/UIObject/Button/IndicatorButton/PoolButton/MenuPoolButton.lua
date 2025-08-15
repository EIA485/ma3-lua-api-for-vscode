---@meta

---@class MenuPoolButton: PoolButton
local MenuPoolButton = {}
---@return "MenuPoolButton"
function MenuPoolButton:GetClass() end
---@return "UIObject"
function MenuPoolButton:GetChildClass() end
---@generic T : MenuPoolButton
---@param class `T`
---@return boolean
function MenuPoolButton:IsClass(class) end