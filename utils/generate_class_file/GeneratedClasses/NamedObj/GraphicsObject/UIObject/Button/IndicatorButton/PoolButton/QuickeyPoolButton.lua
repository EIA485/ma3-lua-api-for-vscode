---@meta

---@class QuickeyPoolButton: PoolButton
local QuickeyPoolButton = {}
---@return "QuickeyPoolButton"
function QuickeyPoolButton:GetClass() end
---@return "UIObject"
function QuickeyPoolButton:GetChildClass() end
---@generic T : QuickeyPoolButton
---@param class `T`
---@return boolean
function QuickeyPoolButton:IsClass(class) end