---@meta

---@class USBDeviceContainer: NamedObj
---@field SaveDevices YesNo|boolean
---@field NotifyDevices YesNo|boolean
---@field NotifyRemote YesNo|boolean
---@field FilterRules Hardware.UsbDeviceFilterRule[]
local USBDeviceContainer = {
    SaveDevices="No",
    NotifyDevices="No",
    NotifyRemote="Yes"
}
---@return "USBDeviceContainer"
function USBDeviceContainer:GetClass() end
---@return "USBDevice"
function USBDeviceContainer:GetChildClass() end
---@generic T : USBDeviceContainer
---@param class `T`
---@return boolean
function USBDeviceContainer:IsClass(class) end
---@return UsbNotifier
function USBDeviceContainer:Parent() end
---@param index integer
---@return USBDevice
function USBDeviceContainer:Ptr(index) end
---@return USBDevice[]
function USBDeviceContainer:Children() end
---@return USBDevice?
function USBDeviceContainer:CurrentChild() end
---@return 19
function USBDeviceContainer:PropertyCount() end
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
---@overload fun(idx: 15): "SaveDevices"
---@overload fun(idx: 16): "NotifyDevices"
---@overload fun(idx: 17): "NotifyRemote"
---@overload fun(idx: 18): "FilterRules"
function USBDeviceContainer:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15|16|17): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|18): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function USBDeviceContainer:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15|16|17): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 18): "Custom"
function USBDeviceContainer:PropertyType(idx) end
---@overload fun(name: "FilterRules", role: nil): Hardware.UsbDeviceFilterRule[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"SaveDevices"|"NotifyDevices"|"NotifyRemote", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SaveDevices"|"NotifyDevices"|"NotifyRemote"|"FilterRules", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): USBDevice
function USBDeviceContainer:Get(name, role) end
---@overload fun(index: integer, class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(index: integer, class: nil, undo: Undo?): USBDevice
function USBDeviceContainer:Create(index, class, undo) end
---@overload fun(class: "USBDevice", undo: Undo?, count: integer?): USBDevice
---@overload fun(class: nil, undo: Undo?, count: integer?): USBDevice
function USBDeviceContainer:Append(class, undo, count) end
---@overload fun(class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(class: nil, undo: Undo?): USBDevice
function USBDeviceContainer:Acquire(class, undo) end
---@overload fun(class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(class: nil, undo: Undo?): USBDevice
---@deprecated use "Acquire" instead
function USBDeviceContainer:Aquire(class, undo) end
---@overload fun(index: integer, class: "USBDevice", undo: Undo?, count: integer?): USBDevice
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): USBDevice
function USBDeviceContainer:Insert(index, class, undo, count) end
---@overload fun(class: "USBDevice", undo: Undo?): USBDevice
---@overload fun(class: nil, undo: Undo?): USBDevice
function USBDeviceContainer:Find(class, undo) end
---@overload fun(property_name: "FilterRules", property_value: Hardware.UsbDeviceFilterRule[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"SaveDevices"|"NotifyDevices"|"NotifyRemote", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function USBDeviceContainer:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Connected", property_value: YesNo|boolean)
---@overload fun(property_name: "IP", property_value: Network.IP8)
---@overload fun(property_name: "ConnectedCount", property_value: integer)
---@overload fun(property_name: "IP", property_value: Network.IP8)
---@overload fun(property_name: "Connected", property_value: YesNo|boolean)
---@overload fun(property_name: "ConnectedCount", property_value: integer)
function USBDeviceContainer:SetChildren(property_name, property_value) end