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
---@generic T : ClockWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ClockWindowSettings
function ClockWindowSettingsCollect:Create(index, class, undo) end
---@generic T : ClockWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ClockWindowSettings
function ClockWindowSettingsCollect:Append(class, undo, count) end
---@generic T : ClockWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ClockWindowSettings
function ClockWindowSettingsCollect:Acquire(class, undo) end
---@generic T : ClockWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ClockWindowSettings
---@deprecated use "Acquire" instead
function ClockWindowSettingsCollect:Aquire(class, undo) end
---@generic T : ClockWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ClockWindowSettings
function ClockWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : ClockWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ClockWindowSettings
function ClockWindowSettingsCollect:Find(class, undo) end