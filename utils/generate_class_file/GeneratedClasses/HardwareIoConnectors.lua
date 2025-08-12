---@meta

---@class HardwareIoConnectors: Object
---@field DmxPortCount integer
---@field DmxPortDefaultDirection integer
---@field TimecodePortsIn integer
---@field TimecodePortsOut integer
---@field DCIoPorts integer
---@field DigitalIoPorts integer
---@field MidiCount integer
local HardwareIoConnectors = {
    DmxPortCount="0",
    DmxPortDefaultDirection="0",
    TimecodePortsIn="0",
    TimecodePortsOut="0",
    DCIoPorts="0",
    DigitalIoPorts="0",
    MidiCount="0"
}
---@return "HardwareIoConnectors"
function HardwareIoConnectors:GetClass() end
---@return "Object"
function HardwareIoConnectors:GetChildClass() end
---@return HardwareConfiguration
function HardwareIoConnectors:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DmxPortCount"|"DmxPortDefaultDirection"|"TimecodePortsIn"|"TimecodePortsOut"|"DCIoPorts"|"DigitalIoPorts"|"MidiCount", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DmxPortCount"|"DmxPortDefaultDirection"|"TimecodePortsIn"|"TimecodePortsOut"|"DCIoPorts"|"DigitalIoPorts"|"MidiCount", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function HardwareIoConnectors:Get(name, role) end
