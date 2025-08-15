---@meta

---@class TimecodePoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local TimecodePoolTitleButton = {}
---@return "TimecodePoolTitleButton"
function TimecodePoolTitleButton:GetClass() end
---@return "UIObject"
function TimecodePoolTitleButton:GetChildClass() end
---@generic T : TimecodePoolTitleButton
---@param class `T`
---@return boolean
function TimecodePoolTitleButton:IsClass(class) end