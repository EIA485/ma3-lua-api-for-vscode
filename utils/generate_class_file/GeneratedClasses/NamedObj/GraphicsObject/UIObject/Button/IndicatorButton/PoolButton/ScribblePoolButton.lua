---@meta

---@class ScribblePoolButton: PoolButton
local ScribblePoolButton = {}
---@return "ScribblePoolButton"
function ScribblePoolButton:GetClass() end
---@return "UIObject"
function ScribblePoolButton:GetChildClass() end
---@generic T : ScribblePoolButton
---@param class `T`
---@return boolean
function ScribblePoolButton:IsClass(class) end