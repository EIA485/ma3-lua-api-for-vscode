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
---@overload fun(name: "DevNode"|"UsbAddr", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Connected"|"Connected
Count"|"IP"|"DevNode"|"UsbAddr", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UsbDeviceMouse:Get(name, role) end
