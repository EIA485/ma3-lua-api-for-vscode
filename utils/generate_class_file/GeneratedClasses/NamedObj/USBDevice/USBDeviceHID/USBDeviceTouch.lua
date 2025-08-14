---@meta

---@class USBDeviceTouch: USBDeviceHID
---@field MonitorId string
---@field DevNode string
---@field UsbAddr string
local USBDeviceTouch = {}
---@return "USBDeviceTouch"
function USBDeviceTouch:GetClass() end
---@return "Object"
function USBDeviceTouch:GetChildClass() end
---@return TouchDevices
function USBDeviceTouch:Parent() end
---@overload fun(name: "IP", role: nil): Network.IP8
---@overload fun(name: "Connected"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ConnectedCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "MonitorId"|"DevNode"|"UsbAddr"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "MonitorId"|"DevNode"|"UsbAddr"|"Connected"|"ConnectedCount"|"IP"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function USBDeviceTouch:Get(name, role) end