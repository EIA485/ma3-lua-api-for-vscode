---@meta

---@class ModularPlaybackWindowSettingsCollect: Object
local ModularPlaybackWindowSettingsCollect = {}
---@return "ModularPlaybackWindowSettingsCollect"
function ModularPlaybackWindowSettingsCollect:GetClass() end
---@return "ModularPlaybackWindowSettings"
function ModularPlaybackWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Ptr(index) end
---@return ModularPlaybackWindowSettings[]
function ModularPlaybackWindowSettingsCollect:Children() end
---@return ModularPlaybackWindowSettings?
function ModularPlaybackWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "ModularPlaybackWindowSettings", undo: Undo?): ModularPlaybackWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "ModularPlaybackWindowSettings", undo: Undo?, count: integer?): ModularPlaybackWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "ModularPlaybackWindowSettings", undo: Undo?): ModularPlaybackWindowSettings
---@overload fun(class: nil, undo: Undo?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "ModularPlaybackWindowSettings", undo: Undo?): ModularPlaybackWindowSettings
---@overload fun(class: nil, undo: Undo?): ModularPlaybackWindowSettings
---@deprecated use "Acquire" instead
function ModularPlaybackWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ModularPlaybackWindowSettings", undo: Undo?, count: integer?): ModularPlaybackWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ModularPlaybackWindowSettings"): ModularPlaybackWindowSettings
---@overload fun(name: string, class: nil): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "ModularPlaybackWindowSettings"): ModularPlaybackWindowSettings
---@overload fun(name: string, class: nil): Object
function ModularPlaybackWindowSettingsCollect:FindRecursive(name, class) end
