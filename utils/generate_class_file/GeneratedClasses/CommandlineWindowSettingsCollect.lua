---@meta

---@class CommandlineWindowSettingsCollect: Object
local CommandlineWindowSettingsCollect = {}
---@return "CommandlineWindowSettingsCollect"
function CommandlineWindowSettingsCollect:GetClass() end
---@return "CommandlineWindowSettings"
function CommandlineWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Ptr(index) end
---@return CommandlineWindowSettings[]
function CommandlineWindowSettingsCollect:Children() end
---@return CommandlineWindowSettings?
function CommandlineWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Get(name, role) end
---@generic T : CommandlineWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Create(index, class, undo) end
---@generic T : CommandlineWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Append(class, undo, count) end
---@generic T : CommandlineWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Acquire(class, undo) end
---@generic T : CommandlineWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CommandlineWindowSettings
---@deprecated use "Acquire" instead
function CommandlineWindowSettingsCollect:Aquire(class, undo) end
---@generic T : CommandlineWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : CommandlineWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Find(class, undo) end