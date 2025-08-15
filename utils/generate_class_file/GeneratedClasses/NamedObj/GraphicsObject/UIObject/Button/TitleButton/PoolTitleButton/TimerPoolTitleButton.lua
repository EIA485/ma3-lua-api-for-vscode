---@meta

---@class TimerPoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local TimerPoolTitleButton = {}
---@return "TimerPoolTitleButton"
function TimerPoolTitleButton:GetClass() end
---@return "UIObject"
function TimerPoolTitleButton:GetChildClass() end
---@generic T : TimerPoolTitleButton
---@param class `T`
---@return boolean
function TimerPoolTitleButton:IsClass(class) end