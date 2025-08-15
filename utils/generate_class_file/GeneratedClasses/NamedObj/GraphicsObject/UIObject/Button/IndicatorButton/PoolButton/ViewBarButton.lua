---@meta

---@class ViewBarButton: PoolButton
local ViewBarButton = {}
---@return "ViewBarButton"
function ViewBarButton:GetClass() end
---@return "UIObject"
function ViewBarButton:GetChildClass() end
---@generic T : ViewBarButton
---@param class `T`
---@return boolean
function ViewBarButton:IsClass(class) end