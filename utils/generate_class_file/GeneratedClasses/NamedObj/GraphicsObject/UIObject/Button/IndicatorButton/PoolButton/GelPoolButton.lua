---@meta

---@class GelPoolButton: PoolButton
local GelPoolButton = {}
---@return "GelPoolButton"
function GelPoolButton:GetClass() end
---@return "UIObject"
function GelPoolButton:GetChildClass() end
---@generic T : GelPoolButton
---@param class `T`
---@return boolean
function GelPoolButton:IsClass(class) end