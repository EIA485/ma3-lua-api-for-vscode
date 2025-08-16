---@meta

---@class Macro: GuidObject
---@field CLI YesNo|boolean
---@field Type string
---@field LineNo string
---@field LineName string
---@field LineCommand string
---@field User string
local Macro = {
    CLI="Yes"
}
---@return "Macro"
function Macro:GetClass() end
---@return "MacroLine"
function Macro:GetChildClass() end
---@generic T : Macro
---@param class `T`
---@return boolean
function Macro:IsClass(class) end
---@return Macros
function Macro:Parent() end
---@param index integer
---@return MacroLine
function Macro:Ptr(index) end
---@return MacroLine[]
function Macro:Children() end
---@return MacroLine?
function Macro:CurrentChild() end
---@return 26
function Macro:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "CLI"
---@overload fun(idx: 21): "Type"
---@overload fun(idx: 22): "LineNo"
---@overload fun(idx: 23): "LineName"
---@overload fun(idx: 24): "LineCommand"
---@overload fun(idx: 25): "User"
function Macro:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|20): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|21|22|23|24|25): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Macro:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|20): "UInt32"
---@overload fun(idx: 7|12|17|18|21|22|23|24|25): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
function Macro:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"CLI", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"Type"|"LineNo"|"LineName"|"LineCommand"|"User", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"CLI"|"Type"|"LineNo"|"LineName"|"LineCommand"|"User", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroLine
function Macro:Get(name, role) end
---@generic T : MacroLine
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroLine
function Macro:Create(index, class, undo) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroLine
function Macro:Append(class, undo, count) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroLine
function Macro:Acquire(class, undo) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroLine
---@deprecated use "Acquire" instead
function Macro:Aquire(class, undo) end
---@generic T : MacroLine
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroLine
function Macro:Insert(index, class, undo, count) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroLine
function Macro:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"CLI", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"Type"|"LineNo"|"LineName"|"LineCommand"|"User", property_value: string, override_change_level: ChangeLevel?)
function Macro:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Command", property_value: string)
---@overload fun(property_name: "Wait", property_value: MacroLineWait)
---@overload fun(property_name: "Wait", property_value: MacroLineWait)
---@overload fun(property_name: "Enabled"|"Execute"|"AddToCmdline", property_value: YesNo|boolean)
---@overload fun(property_name: "Command", property_value: string)
function Macro:SetChildren(property_name, property_value) end