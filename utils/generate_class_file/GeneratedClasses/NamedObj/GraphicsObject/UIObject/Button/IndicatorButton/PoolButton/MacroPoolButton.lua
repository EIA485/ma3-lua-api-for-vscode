---@meta

---@class MacroPoolButton: PoolButton
local MacroPoolButton = {}
---@return "MacroPoolButton"
function MacroPoolButton:GetClass() end
---@return "UIObject"
function MacroPoolButton:GetChildClass() end
---@generic T : MacroPoolButton
---@param class `T`
---@return boolean
function MacroPoolButton:IsClass(class) end