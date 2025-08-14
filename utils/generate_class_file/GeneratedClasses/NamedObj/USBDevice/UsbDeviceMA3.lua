---@meta

---@class UsbDeviceMA3: USBDevice
---@field DeviceType string
---@field WingID WingID
---@field OutputConfigIndex integer
---@field SerialNumber string
---@field DroppedPackets integer
---@field IsInWholeDevCert boolean
---@field ConnectionTime integer
---@field Extension boolean
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
---@return grandMA3Modules
function UsbDeviceMA3:Parent() end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "WingID", role: nil): WingID
---@overload fun(name: "IsInWholeDevCert"|"Extension"|"Connected"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "OutputConfigIndex"|"DroppedPackets"|"ConnectionTime"|"DeviceTime"|"ConnectedCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "DeviceType"|"SerialNumber"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DeviceType"|"WingID"|"OutputConfigIndex"|"SerialNumber"|"DroppedPackets"|"IsInWholeDevCert"|"ConnectionTime"|"Extension"|"DeviceTime"|"Connected"|"ConnectedCount"|"IP"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UsbDeviceMA3:Get(name, role) end