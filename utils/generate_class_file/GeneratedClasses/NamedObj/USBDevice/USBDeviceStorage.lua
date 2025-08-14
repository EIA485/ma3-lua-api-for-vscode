---@meta

---@class USBDeviceStorage: USBDevice
---@field MountPoint string
local USBDeviceStorage = {}
---@return "USBDeviceStorage"
function USBDeviceStorage:GetClass() end
---@return "Object"
function USBDeviceStorage:GetChildClass() end
---@return Storage
function USBDeviceStorage:Parent() end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "Connected"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ConnectedCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "MountPoint"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "MountPoint"|"Connected"|"ConnectedCount"|"IP"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function USBDeviceStorage:Get(name, role) end