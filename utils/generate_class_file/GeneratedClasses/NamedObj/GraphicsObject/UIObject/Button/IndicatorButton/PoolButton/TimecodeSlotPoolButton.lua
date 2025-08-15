---@meta

---@class TimecodeSlotPoolButton: PoolButton
local TimecodeSlotPoolButton = {}
---@return "TimecodeSlotPoolButton"
function TimecodeSlotPoolButton:GetClass() end
---@return "UIObject"
function TimecodeSlotPoolButton:GetChildClass() end
---@generic T : TimecodeSlotPoolButton
---@param class `T`
---@return boolean
function TimecodeSlotPoolButton:IsClass(class) end