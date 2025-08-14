---@meta

---@class ColorPickerSettingsCollect: Object
local ColorPickerSettingsCollect = {}
---@return "ColorPickerSettingsCollect"
function ColorPickerSettingsCollect:GetClass() end
---@return "ColorPickerSettings"
function ColorPickerSettingsCollect:GetChildClass() end
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