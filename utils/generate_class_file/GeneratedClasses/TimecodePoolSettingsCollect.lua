---@meta

---@class TimecodePoolSettingsCollect: Object
local TimecodePoolSettingsCollect = {}
---@return "TimecodePoolSettingsCollect"
function TimecodePoolSettingsCollect:GetClass() end
---@return "TimecodePoolSettings"
function TimecodePoolSettingsCollect:GetChildClass() end
---@param index integer
---@return TimecodePoolSettings
function TimecodePoolSettingsCollect:Ptr(index) end
---@return TimecodePoolSettings[]
function TimecodePoolSettingsCollect:Children() end
---@return TimecodePoolSettings?
function TimecodePoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): TimecodePoolSettings
function TimecodePoolSettingsCollect:Get(name, role) end
---@generic T : TimecodePoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Create(index, class, undo) end
---@generic T : TimecodePoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Append(class, undo, count) end
---@generic T : TimecodePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Acquire(class, undo) end
---@generic T : TimecodePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodePoolSettings
---@deprecated use "Acquire" instead
function TimecodePoolSettingsCollect:Aquire(class, undo) end
---@generic T : TimecodePoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : TimecodePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Find(class, undo) end