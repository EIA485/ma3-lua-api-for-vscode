---@meta

---@class TimerPoolSettingsCollect: Object
local TimerPoolSettingsCollect = {}
---@return "TimerPoolSettingsCollect"
function TimerPoolSettingsCollect:GetClass() end
---@return "TimerPoolSettings"
function TimerPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return TimerPoolSettings
function TimerPoolSettingsCollect:Ptr(index) end
---@return TimerPoolSettings[]
function TimerPoolSettingsCollect:Children() end
---@return TimerPoolSettings?
function TimerPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): TimerPoolSettings
function TimerPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "TimerPoolSettings", undo: Undo?): TimerPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): TimerPoolSettings
function TimerPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "TimerPoolSettings", undo: Undo?, count: integer?): TimerPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): TimerPoolSettings
function TimerPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "TimerPoolSettings", undo: Undo?): TimerPoolSettings
---@overload fun(class: nil, undo: Undo?): TimerPoolSettings
function TimerPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "TimerPoolSettings", undo: Undo?): TimerPoolSettings
---@overload fun(class: nil, undo: Undo?): TimerPoolSettings
---@deprecated use "Acquire" instead
function TimerPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimerPoolSettings", undo: Undo?, count: integer?): TimerPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimerPoolSettings
function TimerPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimerPoolSettings"): TimerPoolSettings
---@overload fun(name: string, class: nil): TimerPoolSettings
function TimerPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "TimerPoolSettings"): TimerPoolSettings
---@overload fun(name: string, class: nil): Object
function TimerPoolSettingsCollect:FindRecursive(name, class) end
