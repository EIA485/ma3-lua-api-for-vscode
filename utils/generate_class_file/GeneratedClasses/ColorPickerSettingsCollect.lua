---@meta

---@class ColorPickerSettingsCollect: Object
local ColorPickerSettingsCollect = {}
---@return "ColorPickerSettingsCollect"
function ColorPickerSettingsCollect:GetClass() end
---@return "ColorPickerSettings"
function ColorPickerSettingsCollect:GetChildClass() end
---@generic T : ColorPickerSettingsCollect
---@param class `T`
---@return boolean
function ColorPickerSettingsCollect:IsClass(class) end
---@param index integer
---@return ColorPickerSettings
function ColorPickerSettingsCollect:Ptr(index) end
---@return ColorPickerSettings[]
function ColorPickerSettingsCollect:Children() end
---@return ColorPickerSettings?
function ColorPickerSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): ColorPickerSettings
function ColorPickerSettingsCollect:Get(name, role) end
---@generic T : ColorPickerSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ColorPickerSettings
function ColorPickerSettingsCollect:Create(index, class, undo) end
---@generic T : ColorPickerSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorPickerSettings
function ColorPickerSettingsCollect:Append(class, undo, count) end
---@generic T : ColorPickerSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorPickerSettings
function ColorPickerSettingsCollect:Acquire(class, undo) end
---@generic T : ColorPickerSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorPickerSettings
---@deprecated use "Acquire" instead
function ColorPickerSettingsCollect:Aquire(class, undo) end
---@generic T : ColorPickerSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorPickerSettings
function ColorPickerSettingsCollect:Insert(index, class, undo, count) end
---@generic T : ColorPickerSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ColorPickerSettings
function ColorPickerSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "BrightnessOverdriveMode", property_value: YesNo|boolean)
---@overload fun(property_name: "ColorMixMode", property_value: ColorMixMode)
---@overload fun(property_name: "Mode", property_value: ColorPickerWindowMode)
---@overload fun(property_name: "ColorWheelMode", property_value: ColorWheelMode)
---@overload fun(property_name: "LastColorEncoderFunction", property_value: ColorEncoderFunction)
---@overload fun(property_name: "LastColorEncoderFunction", property_value: ColorEncoderFunction)
---@overload fun(property_name: "ColorMixMode", property_value: ColorMixMode)
---@overload fun(property_name: "Mode", property_value: ColorPickerWindowMode)
---@overload fun(property_name: "ColorWheelMode", property_value: ColorWheelMode)
---@overload fun(property_name: "BrightnessOverdriveMode", property_value: YesNo|boolean)
function ColorPickerSettingsCollect:SetChildren(property_name, property_value) end