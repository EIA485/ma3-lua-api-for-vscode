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
---@overload fun(index: integer, class: "TimecodeSlotPoolSettings", undo: Undo?): TimecodeSlotPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "TimecodeSlotPoolSettings", undo: Undo?, count: integer?): TimecodeSlotPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "TimecodeSlotPoolSettings", undo: Undo?): TimecodeSlotPoolSettings
---@overload fun(class: nil, undo: Undo?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "TimecodeSlotPoolSettings", undo: Undo?): TimecodeSlotPoolSettings
---@overload fun(class: nil, undo: Undo?): TimecodeSlotPoolSettings
---@deprecated use "Acquire" instead
function TimecodeSlotPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimecodeSlotPoolSettings", undo: Undo?, count: integer?): TimecodeSlotPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimecodeSlotPoolSettings"): TimecodeSlotPoolSettings
---@overload fun(name: string, class: nil): TimecodeSlotPoolSettings
function TimecodeSlotPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "TimecodeSlotPoolSettings"): TimecodeSlotPoolSettings
---@overload fun(name: string, class: nil): Object
function TimecodeSlotPoolSettingsCollect:FindRecursive(name, class) end
