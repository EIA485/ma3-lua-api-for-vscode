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
---@overload fun(index: integer, class: "TimecodePoolSettings", undo: Undo?): TimecodePoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "TimecodePoolSettings", undo: Undo?, count: integer?): TimecodePoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "TimecodePoolSettings", undo: Undo?): TimecodePoolSettings
---@overload fun(class: nil, undo: Undo?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "TimecodePoolSettings", undo: Undo?): TimecodePoolSettings
---@overload fun(class: nil, undo: Undo?): TimecodePoolSettings
---@deprecated use "Acquire" instead
function TimecodePoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimecodePoolSettings", undo: Undo?, count: integer?): TimecodePoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodePoolSettings
function TimecodePoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimecodePoolSettings"): TimecodePoolSettings
---@overload fun(name: string, class: nil): TimecodePoolSettings
function TimecodePoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "TimecodePoolSettings"): TimecodePoolSettings
---@overload fun(name: string, class: nil): Object
function TimecodePoolSettingsCollect:FindRecursive(name, class) end
