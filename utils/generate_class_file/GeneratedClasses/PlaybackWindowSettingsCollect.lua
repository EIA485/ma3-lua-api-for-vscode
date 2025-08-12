---@meta

---@class PlaybackWindowSettingsCollect: Object
local PlaybackWindowSettingsCollect = {}
---@return "PlaybackWindowSettingsCollect"
function PlaybackWindowSettingsCollect:GetClass() end
---@return "PlaybackWindowSettings"
function PlaybackWindowSettingsCollect:GetChildClass() end
---@param index integer
---@return PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Ptr(index) end
---@return PlaybackWindowSettings[]
function PlaybackWindowSettingsCollect:Children() end
---@return PlaybackWindowSettings?
function PlaybackWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "PlaybackWindowSettings", undo: Undo?): PlaybackWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "PlaybackWindowSettings", undo: Undo?, count: integer?): PlaybackWindowSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "PlaybackWindowSettings", undo: Undo?): PlaybackWindowSettings
---@overload fun(class: nil, undo: Undo?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "PlaybackWindowSettings", undo: Undo?): PlaybackWindowSettings
---@overload fun(class: nil, undo: Undo?): PlaybackWindowSettings
---@deprecated use "Acquire" instead
function PlaybackWindowSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PlaybackWindowSettings", undo: Undo?, count: integer?): PlaybackWindowSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PlaybackWindowSettings"): PlaybackWindowSettings
---@overload fun(name: string, class: nil): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "PlaybackWindowSettings"): PlaybackWindowSettings
---@overload fun(name: string, class: nil): Object
function PlaybackWindowSettingsCollect:FindRecursive(name, class) end
