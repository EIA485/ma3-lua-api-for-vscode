---@meta

---@class SmartViewPoolButton: PoolButton
local SmartViewPoolButton = {}
---@return "SmartViewPoolButton"
function SmartViewPoolButton:GetClass() end
---@return "UIObject"
function SmartViewPoolButton:GetChildClass() end
---@generic T : SmartViewPoolButton
---@param class `T`
---@return boolean
function SmartViewPoolButton:IsClass(class) end