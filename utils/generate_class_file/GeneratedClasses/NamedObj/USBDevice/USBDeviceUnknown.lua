---@meta

---@class USBDeviceUnknown: USBDevice
---@field DeviceTypeID string
---@field DeviceKey string
local USBDeviceUnknown = {}
---@return "USBDeviceUnknown"
function USBDeviceUnknown:GetClass() end
---@return "Object"
function USBDeviceUnknown:GetChildClass() end
---@return Unknown
function USBDeviceUnknown:Parent() end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "Connected"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ConnectedCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "DeviceTypeID"|"DeviceKey"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DeviceTypeID"|"DeviceKey"|"Connected"|"ConnectedCount"|"IP"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function USBDeviceUnknown:Get(name, role) end