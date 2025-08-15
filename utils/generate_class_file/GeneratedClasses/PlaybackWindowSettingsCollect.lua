---@meta

---@class PlaybackWindowSettingsCollect: Object
local PlaybackWindowSettingsCollect = {}
---@return "PlaybackWindowSettingsCollect"
function PlaybackWindowSettingsCollect:GetClass() end
---@return "PlaybackWindowSettings"
function PlaybackWindowSettingsCollect:GetChildClass() end
---@generic T : PlaybackWindowSettingsCollect
---@param class `T`
---@return boolean
function PlaybackWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Ptr(index) end
---@return PlaybackWindowSettings[]
function PlaybackWindowSettingsCollect:Children() end
---@return PlaybackWindowSettings?
function PlaybackWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Get(name, role) end
---@generic T : PlaybackWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Create(index, class, undo) end
---@generic T : PlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Append(class, undo, count) end
---@generic T : PlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Acquire(class, undo) end
---@generic T : PlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PlaybackWindowSettings
---@deprecated use "Acquire" instead
function PlaybackWindowSettingsCollect:Aquire(class, undo) end
---@generic T : PlaybackWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PlaybackWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PlaybackWindowSettings
function PlaybackWindowSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "#Sections", property_value: SectionCount)
---@overload fun(property_name: "WingID", property_value: WingID)
---@overload fun(property_name: "Page", property_value: integer)
---@overload fun(property_name: "Executors"|"Row400"|"Row300"|"Row200"|"Row100"|"Labels", property_value: OnOff|boolean)
---@overload fun(property_name: "#Sections", property_value: SectionCount)
---@overload fun(property_name: "WingID", property_value: WingID)
---@overload fun(property_name: "Page", property_value: integer)
function PlaybackWindowSettingsCollect:Page(property_name, property_value) end