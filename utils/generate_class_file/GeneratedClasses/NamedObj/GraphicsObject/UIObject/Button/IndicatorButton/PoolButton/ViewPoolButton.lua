---@meta

---@class ViewPoolButton: PoolButton
local ViewPoolButton = {}
---@return "ViewPoolButton"
function ViewPoolButton:GetClass() end
---@return "UIObject"
function ViewPoolButton:GetChildClass() end
---@generic T : ViewPoolButton
---@param class `T`
---@return boolean
function ViewPoolButton:IsClass(class) end