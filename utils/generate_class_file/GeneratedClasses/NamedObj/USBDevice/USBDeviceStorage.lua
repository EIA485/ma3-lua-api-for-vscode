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
---@overload fun(name: "MountPoint", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Connected"|"Connected
Count"|"IP"|"MountPoint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function USBDeviceStorage:Get(name, role) end
