---@meta

---@class TimerPoolButton: PoolButton
local TimerPoolButton = {}
---@return "TimerPoolButton"
function TimerPoolButton:GetClass() end
---@return "UIObject"
function TimerPoolButton:GetChildClass() end
---@generic T : TimerPoolButton
---@param class `T`
---@return boolean
function TimerPoolButton:IsClass(class) end