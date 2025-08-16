---@meta

---@class KeyboardLayout: NamedObj
---@field ShortName string A short name for the keyboard translation (layout) table (e.g. 'en', 'de', 'ua', 'ru'...)
local KeyboardLayout = {}
---@return "KeyboardLayout"
function KeyboardLayout:GetClass() end
---@return "KeyboardKey"
function KeyboardLayout:GetChildClass() end
---@generic T : KeyboardLayout
---@param class `T`
---@return boolean
function KeyboardLayout:IsClass(class) end
---@return KeyboardLayouts
function KeyboardLayout:Parent() end
---@param index integer
---@return KeyboardKey
function KeyboardLayout:Ptr(index) end
---@return KeyboardKey[]
function KeyboardLayout:Children() end
---@return KeyboardKey?
function KeyboardLayout:CurrentChild() end
---@return 16
function KeyboardLayout:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "ShortName"
function KeyboardLayout:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function KeyboardLayout:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function KeyboardLayout:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"ShortName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ShortName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyboardKey
function KeyboardLayout:Get(name, role) end
---@generic T : KeyboardKey
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Create(index, class, undo) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardKey
function KeyboardLayout:Append(class, undo, count) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Acquire(class, undo) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardKey
---@deprecated use "Acquire" instead
function KeyboardLayout:Aquire(class, undo) end
---@generic T : KeyboardKey
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardKey
function KeyboardLayout:Insert(index, class, undo, count) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"ShortName", property_value: string, override_change_level: ChangeLevel?)
function KeyboardLayout:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "KeyCode", property_value: KeyboardCodes)
---@overload fun(property_name: "KeyIsModifier", property_value: YesNo|boolean)
---@overload fun(property_name: "KeyCode", property_value: KeyboardCodes)
---@overload fun(property_name: "KeyIsModifier", property_value: YesNo|boolean)
---@overload fun(property_name: "Value"|"ValueRightAlted"|"ValueShifted", property_value: string)
function KeyboardLayout:SetChildren(property_name, property_value) end