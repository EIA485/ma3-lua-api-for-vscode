---@meta

---@class USBDevice: NamedObj
---@field Connected boolean
---@field Connected
Count integer
---@field IP Network.IP8
local USBDevice = {
    Connected="No",
    ["Connected
Count"]="No"
}
---@return "USBDevice"
function USBDevice:GetClass() end
---@return "Object"
function USBDevice:GetChildClass() end
---@return USBDeviceContainer
function USBDevice:Parent() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Connected"|"Connected
Count"|"IP", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function USBDevice:Get(name, role) end
