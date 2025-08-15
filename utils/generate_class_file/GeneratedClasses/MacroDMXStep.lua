---@meta

---@class MacroDMXStep: Object your description here
---@field Duration TimePropertyValue
local MacroDMXStep = {
    Duration="1"
}
---@return "MacroDMXStep"
function MacroDMXStep:GetClass() end
---@return "MacroDMXValue"
function MacroDMXStep:GetChildClass() end
---@generic T : MacroDMXStep
---@param class `T`
---@return boolean
function MacroDMXStep:IsClass(class) end
---@return MacroDMX
function MacroDMXStep:Parent() end
---@param index integer
---@return MacroDMXValue
function MacroDMXStep:Ptr(index) end
---@return MacroDMXValue[]
function MacroDMXStep:Children() end
---@return MacroDMXValue?
function MacroDMXStep:CurrentChild() end
---@return 16
function MacroDMXStep:PropertyCount() end
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
---@overload fun(idx: 15): "Duration"
function MacroDMXStep:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function MacroDMXStep:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Int64Time"
function MacroDMXStep:PropertyType(idx) end
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Duration", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroDMXValue
function MacroDMXStep:Get(name, role) end
---@generic T : MacroDMXValue
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Create(index, class, undo) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMXValue
function MacroDMXStep:Append(class, undo, count) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Acquire(class, undo) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
---@deprecated use "Acquire" instead
function MacroDMXStep:Aquire(class, undo) end
---@generic T : MacroDMXValue
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMXValue
function MacroDMXStep:Insert(index, class, undo, count) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Find(class, undo) end
---@overload fun(property_name: "Duration", property_value: TimePropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function MacroDMXStep:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Value", property_value: DMXPropertyValue)
---@overload fun(property_name: "DMXChannel", property_value: DMXChannel)
---@overload fun(property_name: "DMXChannel", property_value: DMXChannel)
---@overload fun(property_name: "Value", property_value: DMXPropertyValue)
function MacroDMXStep:DMXChannel(property_name, property_value) end