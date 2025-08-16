---@meta

---@class Interface: Object Represents a network interface card.
---@field DHCP YesNo|boolean
---@field Gateway string
---@field MAC string
---@field Link YesNo|boolean
---@field SpeedMbs 100_1000
---@field DHCPTimeout string
---@field DNS string
local Interface = {
    DHCP="Yes",
    Link="Yes",
    SpeedMbs="1000"
}
---@return "Interface"
function Interface:GetClass() end
---@return "NetworkIP"
function Interface:GetChildClass() end
---@generic T : Interface
---@param class `T`
---@return boolean
function Interface:IsClass(class) end
---@return Interfaces
function Interface:Parent() end
---@param index integer
---@return NetworkIP
function Interface:Ptr(index) end
---@return NetworkIP[]
function Interface:Children() end
---@return NetworkIP?
function Interface:CurrentChild() end
---@return 22
function Interface:PropertyCount() end
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
---@overload fun(idx: 15): "DHCP"
---@overload fun(idx: 16): "Gateway"
---@overload fun(idx: 17): "MAC"
---@overload fun(idx: 18): "Link"
---@overload fun(idx: 19): "SpeedMbs"
---@overload fun(idx: 20): "DHCPTimeout"
---@overload fun(idx: 21): "DNS"
function Interface:PropertyName(idx) end
---@overload fun(idx: 0|1|2|18): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|17): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16|20|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 19): {ExportIgnore: False, EnumCollection: 100_1000, ReadOnly: False, ImportIgnore: False}
function Interface:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|16|17|20|21): "String"
---@overload fun(idx: 10|11|15|18|19): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function Interface:PropertyType(idx) end
---@overload fun(name: "SpeedMbs", role: nil): 100_1000
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DHCP"|"Link", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Gateway"|"MAC"|"DHCPTimeout"|"DNS", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DHCP"|"Gateway"|"MAC"|"Link"|"SpeedMbs"|"DHCPTimeout"|"DNS", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): NetworkIP
function Interface:Get(name, role) end
---@overload fun(index: integer, class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkIP
function Interface:Create(index, class, undo) end
---@overload fun(class: "NetworkIP", undo: Undo?, count: integer?): NetworkIP
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkIP
function Interface:Append(class, undo, count) end
---@overload fun(class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(class: nil, undo: Undo?): NetworkIP
function Interface:Acquire(class, undo) end
---@overload fun(class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(class: nil, undo: Undo?): NetworkIP
---@deprecated use "Acquire" instead
function Interface:Aquire(class, undo) end
---@overload fun(index: integer, class: "NetworkIP", undo: Undo?, count: integer?): NetworkIP
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkIP
function Interface:Insert(index, class, undo, count) end
---@overload fun(class: "NetworkIP", undo: Undo?): NetworkIP
---@overload fun(class: nil, undo: Undo?): NetworkIP
function Interface:Find(class, undo) end
---@overload fun(property_name: "SpeedMbs", property_value: 100_1000, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"DHCP"|"Link", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Gateway"|"MAC"|"DHCPTimeout"|"DNS", property_value: string, override_change_level: ChangeLevel?)
function Interface:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "IP"|"Mask", property_value: string)
function Interface:SetChildren(property_name, property_value) end