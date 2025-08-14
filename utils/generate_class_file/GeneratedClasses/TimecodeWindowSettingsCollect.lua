---@meta

---@class TimecodeWindowSettingsCollect: Object
local TimecodeWindowSettingsCollect = {}
---@return "TimecodeWindowSettingsCollect"
function TimecodeWindowSettingsCollect:GetClass() end
---@return "TimecodeWindowSettings"
function TimecodeWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Ptr(index) end
---@return TimecodeWindowSettings[]
function TimecodeWindowSettingsCollect:Children() end
---@return TimecodeWindowSettings?
function TimecodeWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Get(name, role) end
---@generic T : TimecodeWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Create(index, class, undo) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Append(class, undo, count) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Acquire(class, undo) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
---@deprecated use "Acquire" instead
function TimecodeWindowSettingsCollect:Aquire(class, undo) end
---@generic T : TimecodeWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : TimecodeWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Find(class, undo) end