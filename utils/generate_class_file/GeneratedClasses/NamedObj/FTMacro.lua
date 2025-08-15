---@meta

---@class FTMacro: NamedObj Describes a set of values that need to be apllied to a fixture in order to trigger a special behavior (like striking the lamp).
---@field ChannelFunction ChannelFunction
local FTMacro = {}
---@return "FTMacro"
function FTMacro:GetClass() end
---@return "MacroDMX"
function FTMacro:GetChildClass() end
---@generic T : FTMacro
---@param class `T`
---@return boolean
function FTMacro:IsClass(class) end
---@return FTMacros
function FTMacro:Parent() end
---@param index integer
---@return MacroDMX
function FTMacro:Ptr(index) end
---@return MacroDMX[]
function FTMacro:Children() end
---@return MacroDMX?
function FTMacro:CurrentChild() end
---@return 16
function FTMacro:PropertyCount() end
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
---@overload fun(idx: 15): "ChannelFunction"
function FTMacro:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function FTMacro:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Handle"
function FTMacro:PropertyType(idx) end
---@overload fun(name: "ChannelFunction", role: nil): ChannelFunction
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ChannelFunction", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroDMX
function FTMacro:Get(name, role) end
---@generic T : MacroDMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMX
function FTMacro:Create(index, class, undo) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMX
function FTMacro:Append(class, undo, count) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMX
function FTMacro:Acquire(class, undo) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMX
---@deprecated use "Acquire" instead
function FTMacro:Aquire(class, undo) end
---@generic T : MacroDMX
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMX
function FTMacro:Insert(index, class, undo, count) end
---@generic T : MacroDMX
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMX
function FTMacro:Find(class, undo) end
---@overload fun(property_name: "ChannelFunction", property_value: ChannelFunction, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function FTMacro:Set(property_name, property_value, override_change_level) end
function FTMacro:ActiveDisplay(property_name, property_value) end