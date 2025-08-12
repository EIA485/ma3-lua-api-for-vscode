---@meta

---@class ClockWindowSettingsCollect: Object
local ClockWindowSettingsCollect = {}
---@return "ClockWindowSettingsCollect"
function ClockWindowSettingsCollect:GetClass() end
---@return "ClockWindowSettings"
function ClockWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return ClockWindowSettings
function ClockWindowSettingsCollect:Ptr(index) end
---@return ClockWindowSettings[]
function ClockWindowSettingsCollect:Children() end
---@return ClockWindowSettings?
function ClockWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ClockWindowSettings
function ClockWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "ClockWindowSettings", undo: Undo?): ClockWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): ClockWindowSettings
function ClockWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "ClockWindowSettings", undo: Undo?, count: integer?): ClockWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): ClockWindowSettings
function ClockWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "ClockWindowSettings", undo: Undo?): ClockWindowSettings
---@overload fun(class: nil, undo: Undo?): ClockWindowSettings
function ClockWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "ClockWindowSettings", undo: Undo?): ClockWindowSettings
---@overload fun(class: nil, undo: Undo?): ClockWindowSettings
---@deprecated use "Acquire" instead
function ClockWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ClockWindowSettings", undo: Undo?, count: integer?): ClockWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ClockWindowSettings
function ClockWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ClockWindowSettings"): ClockWindowSettings
---@overload fun(name: string, class: nil): ClockWindowSettings
function ClockWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "ClockWindowSettings"): ClockWindowSettings
---@overload fun(name: string, class: nil): Object
function ClockWindowSettingsCollect:FindRecursive(name, class) end
