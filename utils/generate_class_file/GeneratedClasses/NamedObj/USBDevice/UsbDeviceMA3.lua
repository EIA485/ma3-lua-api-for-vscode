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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Connected", role: nil): boolean
---@overload fun(name: "Connected
Count", role: nil): integer
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "DeviceType", role: nil): string
---@overload fun(name: "WingID", role: nil): WingID
---@overload fun(name: "OutputConfigIndex", role: nil): integer
---@overload fun(name: "SerialNumber", role: nil): string
---@overload fun(name: "DroppedPackets", role: nil): integer
---@overload fun(name: "IsInWholeDevCert", role: nil): boolean
---@overload fun(name: "ConnectionTime", role: nil): integer
---@overload fun(name: "Extension", role: nil): boolean
---@overload fun(name: "DeviceTime", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Connected"|"Connected
Count"|"IP"|"DeviceType"|"WingID"|"OutputConfigIndex"|"SerialNumber"|"DroppedPackets"|"IsInWholeDevCert"|"ConnectionTime"|"Extension"|"DeviceTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UsbDeviceMA3:Get(name, role) end
