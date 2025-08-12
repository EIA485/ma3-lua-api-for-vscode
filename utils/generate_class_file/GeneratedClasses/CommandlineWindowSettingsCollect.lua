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
---@overload fun(index: integer, class: "CommandlineWindowSettings", undo: Undo?): CommandlineWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "CommandlineWindowSettings", undo: Undo?, count: integer?): CommandlineWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "CommandlineWindowSettings", undo: Undo?): CommandlineWindowSettings
---@overload fun(class: nil, undo: Undo?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "CommandlineWindowSettings", undo: Undo?): CommandlineWindowSettings
---@overload fun(class: nil, undo: Undo?): CommandlineWindowSettings
---@deprecated use "Acquire" instead
function CommandlineWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "CommandlineWindowSettings", undo: Undo?, count: integer?): CommandlineWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "CommandlineWindowSettings"): CommandlineWindowSettings
---@overload fun(name: string, class: nil): CommandlineWindowSettings
function CommandlineWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "CommandlineWindowSettings"): CommandlineWindowSettings
---@overload fun(name: string, class: nil): Object
function CommandlineWindowSettingsCollect:FindRecursive(name, class) end
