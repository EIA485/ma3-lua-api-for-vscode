---@meta

---@class NetworkInterface: Interface
---@field RenewDHCP Yes|true
local NetworkInterface = {}
---@return "NetworkInterface"
function NetworkInterface:GetClass() end
---@return "IP"
function NetworkInterface:GetChildClass() end
---@generic T : NetworkInterface
---@param class `T`
---@return boolean
function NetworkInterface:IsClass(class) end
---@return TempNetworkRemoteInterfaceCollect
function NetworkInterface:Parent() end
---@param index integer
---@return IP
function NetworkInterface:Ptr(index) end
---@return IP[]
function NetworkInterface:Children() end
---@return IP?
function NetworkInterface:CurrentChild() end
---@return 23
function NetworkInterface:PropertyCount() end
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
---@overload fun(idx: 22): "RenewDHCP"
function NetworkInterface:PropertyName(idx) end
---@overload fun(idx: 0|1|2|18): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|17): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16|20|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 19): {ExportIgnore: False, EnumCollection: 100_1000, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 22): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
function NetworkInterface:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|16|17|20|21): "String"
---@overload fun(idx: 10|11|15|18|19|22): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function NetworkInterface:PropertyType(idx) end
---@overload fun(name: "SpeedMbs", role: nil): 100_1000
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DHCP"|"Link", role: nil): YesNo|boolean
---@overload fun(name: "RenewDHCP", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Gateway"|"MAC"|"DHCPTimeout"|"DNS", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DHCP"|"Gateway"|"MAC"|"Link"|"SpeedMbs"|"DHCPTimeout"|"DNS"|"RenewDHCP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): IP
function NetworkInterface:Get(name, role) end
---@generic T : IP
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): IP
function NetworkInterface:Create(index, class, undo) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): IP
function NetworkInterface:Append(class, undo, count) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IP
function NetworkInterface:Acquire(class, undo) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IP
---@deprecated use "Acquire" instead
function NetworkInterface:Aquire(class, undo) end
---@generic T : IP
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IP
function NetworkInterface:Insert(index, class, undo, count) end
---@generic T : IP
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IP
function NetworkInterface:Find(class, undo) end
---@overload fun(property_name: "SpeedMbs", property_value: 100_1000, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"DHCP"|"Link", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RenewDHCP", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Gateway"|"MAC"|"DHCPTimeout"|"DNS", property_value: string, override_change_level: ChangeLevel?)
function NetworkInterface:Set(property_name, property_value, override_change_level) end
function NetworkInterface:SetChildren(property_name, property_value) end