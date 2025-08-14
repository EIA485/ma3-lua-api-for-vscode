---@meta

---@class UsbDeviceMouse: USBDeviceHID
---@field DevNode string
---@field UsbAddr string
local UsbDeviceMouse = {}
---@return "UsbDeviceMouse"
function UsbDeviceMouse:GetClass() end
---@return "Object"
function UsbDeviceMouse:GetChildClass() end
---@return MouseDevices
function UsbDeviceMouse:Parent() end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "Connected"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ConnectedCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "DevNode"|"UsbAddr"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DevNode"|"UsbAddr"|"Connected"|"ConnectedCount"|"IP"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UsbDeviceMouse:Get(name, role) end