---@meta

---@class TimecodeSlotPoolTitleButton: PoolTitleButton A pool title bar UI control (derived from a button class) with an icon and a defined default font
local TimecodeSlotPoolTitleButton = {}
---@return "TimecodeSlotPoolTitleButton"
function TimecodeSlotPoolTitleButton:GetClass() end
---@return "UIObject"
function TimecodeSlotPoolTitleButton:GetChildClass() end
---@generic T : TimecodeSlotPoolTitleButton
---@param class `T`
---@return boolean
function TimecodeSlotPoolTitleButton:IsClass(class) end