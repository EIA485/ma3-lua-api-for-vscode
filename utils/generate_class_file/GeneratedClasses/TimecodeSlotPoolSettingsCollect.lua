---@meta

---@class TimecodeSlotPoolSettingsCollect: Object
local TimecodeSlotPoolSettingsCollect = {}
---@return "TimecodeSlotPoolSettingsCollect"
function TimecodeSlotPoolSettingsCollect:GetClass() end
---@return "TimecodeSlotPoolSettings"
function TimecodeSlotPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Ptr(index) end
---@return TimecodeSlotPoolSettings[]
function TimecodeSlotPoolSettingsCollect:Children() end
---@return TimecodeSlotPoolSettings?
function TimecodeSlotPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Get(name, role) end
---@generic T : TimecodeSlotPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Create(index, class, undo) end
---@generic T : TimecodeSlotPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Append(class, undo, count) end
---@generic T : TimecodeSlotPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Acquire(class, undo) end
---@generic T : TimecodeSlotPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeSlotPoolSettings
---@deprecated use "Acquire" instead
function TimecodeSlotPoolSettingsCollect:Aquire(class, undo) end
---@generic T : TimecodeSlotPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : TimecodeSlotPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Find(class, undo) end