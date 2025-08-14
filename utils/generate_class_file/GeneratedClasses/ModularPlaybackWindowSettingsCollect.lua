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
---@generic T : ModularPlaybackWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Create(index, class, undo) end
---@generic T : ModularPlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Append(class, undo, count) end
---@generic T : ModularPlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Acquire(class, undo) end
---@generic T : ModularPlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ModularPlaybackWindowSettings
---@deprecated use "Acquire" instead
function ModularPlaybackWindowSettingsCollect:Aquire(class, undo) end
---@generic T : ModularPlaybackWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : ModularPlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ModularPlaybackWindowSettings
function ModularPlaybackWindowSettingsCollect:Find(class, undo) end