---@meta

---@class RunningPlaybacksSettingsCollect: Object
local RunningPlaybacksSettingsCollect = {}
---@return "RunningPlaybacksSettingsCollect"
function RunningPlaybacksSettingsCollect:GetClass() end
---@return "RunningPlaybacksSettings"
function RunningPlaybacksSettingsCollect:GetChildClass() end
---@generic T : RunningPlaybacksSettingsCollect
---@param class `T`
---@return boolean
function RunningPlaybacksSettingsCollect:IsClass(class) end
---@param index integer
---@return RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Ptr(index) end
---@return RunningPlaybacksSettings[]
function RunningPlaybacksSettingsCollect:Children() end
---@return RunningPlaybacksSettings?
function RunningPlaybacksSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Get(name, role) end
---@generic T : RunningPlaybacksSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Create(index, class, undo) end
---@generic T : RunningPlaybacksSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Append(class, undo, count) end
---@generic T : RunningPlaybacksSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Acquire(class, undo) end
---@generic T : RunningPlaybacksSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RunningPlaybacksSettings
---@deprecated use "Acquire" instead
function RunningPlaybacksSettingsCollect:Aquire(class, undo) end
---@generic T : RunningPlaybacksSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Insert(index, class, undo, count) end
---@generic T : RunningPlaybacksSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RunningPlaybacksSettings
function RunningPlaybacksSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "PlaybacksToShow", property_value: PlaybacksToShow)
---@overload fun(property_name: "SelectedDataPool", property_value: string)
---@overload fun(property_name: "PlaybacksToShow", property_value: PlaybacksToShow)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "MyPlaybacksOnly"|"OffMode"|"SheetStyle"|"HoldList", property_value: YesNo|boolean)
---@overload fun(property_name: "SelectedDataPool", property_value: string)
function RunningPlaybacksSettingsCollect:SelectedDataPool(property_name, property_value) end