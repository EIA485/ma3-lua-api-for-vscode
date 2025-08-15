---@meta

---@class GoboPoolButton: PoolButton
local GoboPoolButton = {}
---@return "GoboPoolButton"
function GoboPoolButton:GetClass() end
---@return "UIObject"
function GoboPoolButton:GetChildClass() end
---@generic T : GoboPoolButton
---@param class `T`
---@return boolean
function GoboPoolButton:IsClass(class) end