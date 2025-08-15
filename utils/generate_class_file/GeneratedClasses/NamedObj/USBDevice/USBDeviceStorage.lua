---@meta

---@class USBDeviceStorage: USBDevice
---@field MountPoint string
local USBDeviceStorage = {}
---@return "USBDeviceStorage"
function USBDeviceStorage:GetClass() end
---@return "Object"
function USBDeviceStorage:GetChildClass() end
---@generic T : USBDeviceStorage
---@param class `T`
---@return boolean
function USBDeviceStorage:IsClass(class) end
---@return Storage
function USBDeviceStorage:Parent() end
---@return 19
function USBDeviceStorage:PropertyCount() end
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
---@overload fun(idx: 15): "Connected"
---@overload fun(idx: 16): "ConnectedCount"
---@overload fun(idx: 17): "IP"
---@overload fun(idx: 18): "MountPoint"
function USBDeviceStorage:PropertyName(idx) end
---@overload fun(idx: 0|1|2|15): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|16|17): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 18): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function USBDeviceStorage:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|16): "UInt32"
---@overload fun(idx: 7|8|13|18): "String"
---@overload fun(idx: 10|11|15): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17): "Custom"
function USBDeviceStorage:PropertyType(idx) end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Connected", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ConnectedCount", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"MountPoint", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Connected"|"ConnectedCount"|"IP"|"MountPoint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function USBDeviceStorage:Get(name, role) end
---@overload fun(property_name: "IP", property_value: Network.IP8, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Connected", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"ConnectedCount", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function USBDeviceStorage:Set(property_name, property_value, override_change_level) end