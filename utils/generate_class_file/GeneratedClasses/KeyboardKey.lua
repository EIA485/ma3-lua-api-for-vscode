---@meta

---@class KeyboardKey: Object
---@field KeyCode KeyboardCodes A keyboard key code that is supposed to be translated
---@field Value string A string value that a key code should be translated to
---@field ValueShifted string A string value that a key code should be translated to if a shift key is pressed
---@field ValueRightAlted string A string value that a key code should be translated to if a right alt key is pressed
---@field KeyIsModifier YesNo|boolean
local KeyboardKey = {
    KeyCode="None",
    KeyIsModifier="No"
}
---@return "KeyboardKey"
function KeyboardKey:GetClass() end
---@return "KeyModifier"
function KeyboardKey:GetChildClass() end
---@generic T : KeyboardKey
---@param class `T`
---@return boolean
function KeyboardKey:IsClass(class) end
---@return KeyboardLayout
function KeyboardKey:Parent() end
---@param index integer
---@return KeyModifier
function KeyboardKey:Ptr(index) end
---@return KeyModifier[]
function KeyboardKey:Children() end
---@return KeyModifier?
function KeyboardKey:CurrentChild() end
---@return 20
function KeyboardKey:PropertyCount() end
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
---@overload fun(idx: 15): "KeyCode"
---@overload fun(idx: 16): "Value"
---@overload fun(idx: 17): "ValueShifted"
---@overload fun(idx: 18): "ValueRightAlted"
---@overload fun(idx: 19): "KeyIsModifier"
function KeyboardKey:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|19): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16|17|18): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: KeyboardCodes, ReadOnly: False, ImportIgnore: False}
function KeyboardKey:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|16|17|18): "String"
---@overload fun(idx: 10|11|19): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Int16"
function KeyboardKey:PropertyType(idx) end
---@overload fun(name: "KeyCode", role: nil): KeyboardCodes
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"KeyIsModifier", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Value"|"ValueShifted"|"ValueRightAlted", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"KeyCode"|"Value"|"ValueShifted"|"ValueRightAlted"|"KeyIsModifier", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyModifier
function KeyboardKey:Get(name, role) end
---@generic T : KeyModifier
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Create(index, class, undo) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyModifier
function KeyboardKey:Append(class, undo, count) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Acquire(class, undo) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyModifier
---@deprecated use "Acquire" instead
function KeyboardKey:Aquire(class, undo) end
---@generic T : KeyModifier
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyModifier
function KeyboardKey:Insert(index, class, undo, count) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Find(class, undo) end
---@overload fun(property_name: "KeyCode", property_value: KeyboardCodes, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"KeyIsModifier", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Value"|"ValueShifted"|"ValueRightAlted", property_value: string, override_change_level: ChangeLevel?)
function KeyboardKey:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Modifier"|"ValueShifted"|"Value", property_value: string)
function KeyboardKey:ActiveDisplay(property_name, property_value) end