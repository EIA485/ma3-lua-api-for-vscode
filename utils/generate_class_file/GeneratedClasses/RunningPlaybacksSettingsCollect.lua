---@meta

---@class RunningPlaybacksSettingsCollect: Object
local RunningPlaybacksSettingsCollect = {}
---@return "RunningPlaybacksSettingsCollect"
function RunningPlaybacksSettingsCollect:GetClass() end
---@return "RunningPlaybacksSettings"
function RunningPlaybacksSettingsCollect:GetChildClass() end
---@param index integer
---@return RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Ptr(index) end
---@return RunningPlaybacksSettings[]
function RunningPlaybacksSettingsCollect:Children() end
---@return RunningPlaybacksSettings?
function RunningPlaybacksSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "RunningPlaybacksSettings", undo: Undo?): RunningPlaybacksSettings
---@overload fun(index: integer, class: nil, undo: Undo?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "RunningPlaybacksSettings", undo: Undo?, count: integer?): RunningPlaybacksSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "RunningPlaybacksSettings", undo: Undo?): RunningPlaybacksSettings
---@overload fun(class: nil, undo: Undo?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "RunningPlaybacksSettings", undo: Undo?): RunningPlaybacksSettings
---@overload fun(class: nil, undo: Undo?): RunningPlaybacksSettings
---@deprecated use "Acquire" instead
function RunningPlaybacksSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "RunningPlaybacksSettings", undo: Undo?, count: integer?): RunningPlaybacksSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RunningPlaybacksSettings"): RunningPlaybacksSettings
---@overload fun(name: string, class: nil): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "RunningPlaybacksSettings"): RunningPlaybacksSettings
---@overload fun(name: string, class: nil): Object
function RunningPlaybacksSettingsCollect:FindRecursive(name, class) end
