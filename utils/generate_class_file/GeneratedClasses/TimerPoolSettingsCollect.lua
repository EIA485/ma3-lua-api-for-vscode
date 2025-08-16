---@meta

---@class TimerPoolSettingsCollect: Object
local TimerPoolSettingsCollect = {}
---@return "TimerPoolSettingsCollect"
function TimerPoolSettingsCollect:GetClass() end
---@return "TimerPoolSettings"
function TimerPoolSettingsCollect:GetChildClass() end
---@generic T : TimerPoolSettingsCollect
---@param class `T`
---@return boolean
function TimerPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return TimerPoolSettings
function TimerPoolSettingsCollect:Ptr(index) end
---@return TimerPoolSettings[]
function TimerPoolSettingsCollect:Children() end
---@return TimerPoolSettings?
function TimerPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): TimerPoolSettings
function TimerPoolSettingsCollect:Get(name, role) end
---@generic T : TimerPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimerPoolSettings
function TimerPoolSettingsCollect:Create(index, class, undo) end
---@generic T : TimerPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimerPoolSettings
function TimerPoolSettingsCollect:Append(class, undo, count) end
---@generic T : TimerPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimerPoolSettings
function TimerPoolSettingsCollect:Acquire(class, undo) end
---@generic T : TimerPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimerPoolSettings
---@deprecated use "Acquire" instead
function TimerPoolSettingsCollect:Aquire(class, undo) end
---@generic T : TimerPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimerPoolSettings
function TimerPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : TimerPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimerPoolSettings
function TimerPoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "TimerAction", property_value: TimerAction)
---@overload fun(property_name: "TimerAction", property_value: TimerAction)
function TimerPoolSettingsCollect:SetChildren(property_name, property_value) end