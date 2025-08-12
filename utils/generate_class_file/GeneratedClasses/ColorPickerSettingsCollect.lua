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
---@overload fun(index: integer, class: "ColorPickerSettings", undo: Undo?): ColorPickerSettings
---@overload fun(index: integer, class: nil, undo: Undo?): ColorPickerSettings
function ColorPickerSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "ColorPickerSettings", undo: Undo?, count: integer?): ColorPickerSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): ColorPickerSettings
function ColorPickerSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "ColorPickerSettings", undo: Undo?): ColorPickerSettings
---@overload fun(class: nil, undo: Undo?): ColorPickerSettings
function ColorPickerSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "ColorPickerSettings", undo: Undo?): ColorPickerSettings
---@overload fun(class: nil, undo: Undo?): ColorPickerSettings
---@deprecated use "Acquire" instead
function ColorPickerSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ColorPickerSettings", undo: Undo?, count: integer?): ColorPickerSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ColorPickerSettings
function ColorPickerSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ColorPickerSettings"): ColorPickerSettings
---@overload fun(name: string, class: nil): ColorPickerSettings
function ColorPickerSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "ColorPickerSettings"): ColorPickerSettings
---@overload fun(name: string, class: nil): Object
function ColorPickerSettingsCollect:FindRecursive(name, class) end
