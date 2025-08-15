---@meta

---@class SpecialWindowSettingsCollect: Object
local SpecialWindowSettingsCollect = {}
---@return "SpecialWindowSettingsCollect"
function SpecialWindowSettingsCollect:GetClass() end
---@return "SpecialWindowSettings"
function SpecialWindowSettingsCollect:GetChildClass() end
---@generic T : SpecialWindowSettingsCollect
---@param class `T`
---@return boolean
function SpecialWindowSettingsCollect:IsClass(class) end
---@param index integer
---@return SpecialWindowSettings
function SpecialWindowSettingsCollect:Ptr(index) end
---@return SpecialWindowSettings[]
function SpecialWindowSettingsCollect:Children() end
---@return SpecialWindowSettings?
function SpecialWindowSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SpecialWindowSettings
function SpecialWindowSettingsCollect:Get(name, role) end
---@generic T : SpecialWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Create(index, class, undo) end
---@generic T : SpecialWindowSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Append(class, undo, count) end
---@generic T : SpecialWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Acquire(class, undo) end
---@generic T : SpecialWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialWindowSettings
---@deprecated use "Acquire" instead
function SpecialWindowSettingsCollect:Aquire(class, undo) end
---@generic T : SpecialWindowSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SpecialWindowSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SpecialWindowSettings
function SpecialWindowSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "ColorPickerSettings", property_value: ColorPickerSettings)
---@overload fun(property_name: "RememberedTab", property_value: SpecialWindowRememberedTab)
---@overload fun(property_name: "ShaperWindowSettings", property_value: ShaperWindowSettings)
---@overload fun(property_name: "ColorPickerSettings", property_value: ColorPickerSettings)
---@overload fun(property_name: "ShaperWindowSettings", property_value: ShaperWindowSettings)
---@overload fun(property_name: "RememberedTab", property_value: SpecialWindowRememberedTab)
---@overload fun(property_name: "LinkToEncoderBank"|"ShowTabs", property_value: YesNo|boolean)
function SpecialWindowSettingsCollect:ShaperWindowSettings(property_name, property_value) end