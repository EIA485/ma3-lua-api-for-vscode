---@meta

---@class Interfaces: Object Container for all network interfaces which the local station have.
---@field UpdateInterfaces fun() : boolean
---@field SetInterfaces fun()
local Interfaces = {}
---@return "Interfaces"
function Interfaces:GetClass() end
---@return "Interface"
function Interfaces:GetChildClass() end
---@generic T : Interfaces
---@param class `T`
---@return boolean
function Interfaces:IsClass(class) end
---@return Root
function Interfaces:Parent() end
---@param index integer
---@return Interface
function Interfaces:Ptr(index) end
---@return Interface[]
function Interfaces:Children() end
---@return Interface?
function Interfaces:CurrentChild() end
---@return 17
function Interfaces:PropertyCount() end
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
---@overload fun(idx: 15): "UpdateInterfaces"
---@overload fun(idx: 16): "SetInterfaces"
function Interfaces:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|15|16): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Interfaces:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16): "Method"
function Interfaces:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "SetInterfaces", role: nil): fun()
---@overload fun(name: "UpdateInterfaces", role: nil): fun() : boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UpdateInterfaces"|"SetInterfaces", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Interface
function Interfaces:Get(name, role) end
---@overload fun(index: integer, class: "Interface", undo: Undo?): Interface
---@overload fun(index: integer, class: nil, undo: Undo?): Interface
function Interfaces:Create(index, class, undo) end
---@overload fun(class: "Interface", undo: Undo?, count: integer?): Interface
---@overload fun(class: nil, undo: Undo?, count: integer?): Interface
function Interfaces:Append(class, undo, count) end
---@overload fun(class: "Interface", undo: Undo?): Interface
---@overload fun(class: nil, undo: Undo?): Interface
function Interfaces:Acquire(class, undo) end
---@overload fun(class: "Interface", undo: Undo?): Interface
---@overload fun(class: nil, undo: Undo?): Interface
---@deprecated use "Acquire" instead
function Interfaces:Aquire(class, undo) end
---@overload fun(index: integer, class: "Interface", undo: Undo?, count: integer?): Interface
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Interface
function Interfaces:Insert(index, class, undo, count) end
---@overload fun(class: "Interface", undo: Undo?): Interface
---@overload fun(class: nil, undo: Undo?): Interface
function Interfaces:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Interfaces:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "SpeedMbs", property_value: 100_1000)
---@overload fun(property_name: "SpeedMbs", property_value: 100_1000)
---@overload fun(property_name: "DHCP"|"Link", property_value: YesNo|boolean)
---@overload fun(property_name: "Gateway"|"DNS"|"DHCPTimeout"|"MAC", property_value: string)
function Interfaces:SetChildren(property_name, property_value) end