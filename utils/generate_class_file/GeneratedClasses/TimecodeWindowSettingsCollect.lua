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
---@overload fun(index: integer, class: "TimecodeWindowSettings", undo: Undo?): TimecodeWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "TimecodeWindowSettings", undo: Undo?, count: integer?): TimecodeWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "TimecodeWindowSettings", undo: Undo?): TimecodeWindowSettings
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "TimecodeWindowSettings", undo: Undo?): TimecodeWindowSettings
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSettings
---@deprecated use "Acquire" instead
function TimecodeWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimecodeWindowSettings", undo: Undo?, count: integer?): TimecodeWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimecodeWindowSettings"): TimecodeWindowSettings
---@overload fun(name: string, class: nil): TimecodeWindowSettings
function TimecodeWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "TimecodeWindowSettings"): TimecodeWindowSettings
---@overload fun(name: string, class: nil): Object
function TimecodeWindowSettingsCollect:FindRecursive(name, class) end
