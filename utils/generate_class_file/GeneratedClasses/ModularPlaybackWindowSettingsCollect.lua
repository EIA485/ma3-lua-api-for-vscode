---@meta

---@class ModularPlaybackWindowSettingsCollect: Object
local ModularPlaybackWindowSettingsCollect = {}
---@return "ModularPlaybackWindowSettingsCollect"
function ModularPlaybackWindowSettingsCollect:GetClass() end
---@return "ModularPlaybackWindowSettings"
function ModularPlaybackWindowSettingsCollect:GetChildClass() end
---@generic T : ModularPlaybackWindowSettingsCollect
---@param class `T`
---@return boolean
function ModularPlaybackWindowSettingsCollect:IsClass(class) end
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
---@overload fun(property_name: "#Sections", property_value: SectionCount)
---@overload fun(property_name: "Page", property_value: integer)
---@overload fun(property_name: "WingID", property_value: WingID)
---@overload fun(property_name: "DirectAction"|"Labels"|"Executors"|"Row400"|"Row300"|"Row200"|"Row100", property_value: OnOff|boolean)
---@overload fun(property_name: "#Sections", property_value: SectionCount)
---@overload fun(property_name: "WingID", property_value: WingID)
---@overload fun(property_name: "Page", property_value: integer)
function ModularPlaybackWindowSettingsCollect:WingID(property_name, property_value) end