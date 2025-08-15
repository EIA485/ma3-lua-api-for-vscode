---@meta

---@class UsbDeviceMA3: USBDevice
---@field DeviceType string
---@field WingID WingID
---@field OutputConfigIndex integer
---@field SerialNumber string
---@field DroppedPackets integer
---@field IsInWholeDevCert boolean
---@field ConnectionTime integer
---@field Extension YesNo|boolean
---@field DeviceTime integer
local UsbDeviceMA3 = {
    DeviceType="Unknown",
    WingID="Unmapped",
    OutputConfigIndex="1",
    SerialNumber="Unknown",
    Extension="No"
}
---@return "UsbDeviceMA3"
function UsbDeviceMA3:GetClass() end
---@return "Object"
function UsbDeviceMA3:GetChildClass() end
---@generic T : UsbDeviceMA3
---@param class `T`
---@return boolean
function UsbDeviceMA3:IsClass(class) end
---@return grandMA3Modules
function UsbDeviceMA3:Parent() end
---@return 27
function UsbDeviceMA3:PropertyCount() end
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
---@overload fun(idx: 18): "DeviceType"
---@overload fun(idx: 19): "WingID"
---@overload fun(idx: 20): "OutputConfigIndex"
---@overload fun(idx: 21): "SerialNumber"
---@overload fun(idx: 22): "DroppedPackets"
---@overload fun(idx: 23): "IsInWholeDevCert"
---@overload fun(idx: 24): "ConnectionTime"
---@overload fun(idx: 25): "Extension"
---@overload fun(idx: 26): "DeviceTime"
function UsbDeviceMA3:PropertyName(idx) end
---@overload fun(idx: 0|1|2|15|25): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|16|17|18|21|22|23|26): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|20): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 19): {ExportIgnore: False, EnumCollection: WingID, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 24): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function UsbDeviceMA3:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|16|22): "UInt32"
---@overload fun(idx: 7|8|13|18|21): "String"
---@overload fun(idx: 10|11|15|23|25): "Bool"
---@overload fun(idx: 12|24|26): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17): "Custom"
---@overload fun(idx: 19|20): "UInt8"
function UsbDeviceMA3:PropertyType(idx) end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "WingID", role: nil): WingID
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Connected"|"Extension", role: nil): YesNo|boolean
---@overload fun(name: "IsInWholeDevCert", role: nil): boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ConnectedCount"|"OutputConfigIndex"|"DroppedPackets"|"ConnectionTime"|"DeviceTime", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"DeviceType"|"SerialNumber", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Connected"|"ConnectedCount"|"IP"|"DeviceType"|"WingID"|"OutputConfigIndex"|"SerialNumber"|"DroppedPackets"|"IsInWholeDevCert"|"ConnectionTime"|"Extension"|"DeviceTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UsbDeviceMA3:Get(name, role) end
---@overload fun(property_name: "IP", property_value: Network.IP8, override_change_level: ChangeLevel?)
---@overload fun(property_name: "WingID", property_value: WingID, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Connected"|"Extension", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IsInWholeDevCert", property_value: boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"ConnectedCount"|"OutputConfigIndex"|"DroppedPackets"|"DeviceTime", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"DeviceType"|"SerialNumber", property_value: string, override_change_level: ChangeLevel?)
function UsbDeviceMA3:Set(property_name, property_value, override_change_level) end