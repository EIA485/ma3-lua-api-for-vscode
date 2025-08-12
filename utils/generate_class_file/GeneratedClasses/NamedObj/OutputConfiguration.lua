---@meta

---@class OutputConfiguration: NamedObj
---@field Type integer
---@field SMPTE
Mode integer
---@field SMPTE
TC integer
---@field MIDITC
Mode integer
---@field MIDI
TC integer
---@field MIDIData
Mode integer
---@field MIDI
Offset integer
---@field DC
Start integer
---@field XLRPortCount integer
---@field DmxPortDefaultDirection integer
---@field TimecodePortsIn integer
---@field TimecodePortsOut integer
---@field DCIoPorts integer
---@field DigitalIoPorts integer
---@field MidiCount integer
---@field UsbDeviceIndex integer
---@field UsbDeviceType integer
local OutputConfiguration = {
    ["SMPTE
Mode"]="In",
    ["SMPTE
TC"]="Slot1",
    ["MIDITC
Mode"]="In",
    ["MIDI
TC"]="Slot1",
    ["MIDIData
Mode"]="In",
    ["MIDI
Offset"]="0",
    ["DC
Start"]="0",
    XLRPortCount="0",
    DCIoPorts="0",
    DigitalIoPorts="0",
    MidiCount="0",
    UsbDeviceIndex="0",
    UsbDeviceType="0"
}
---@return "OutputConfiguration"
function OutputConfiguration:GetClass() end
---@return "Object"
function OutputConfiguration:GetChildClass() end
---@return OutputStation
function OutputConfiguration:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Type"|"SMPTE
Mode"|"SMPTE
TC"|"MIDITC
Mode"|"MIDI
TC"|"MIDIData
Mode"|"MIDI
Offset"|"DC
Start"|"XLRPortCount"|"DmxPortDefaultDirection"|"TimecodePortsIn"|"TimecodePortsOut"|"DCIoPorts"|"DigitalIoPorts"|"MidiCount"|"UsbDeviceIndex"|"UsbDeviceType", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"SMPTE
Mode"|"SMPTE
TC"|"MIDITC
Mode"|"MIDI
TC"|"MIDIData
Mode"|"MIDI
Offset"|"DC
Start"|"XLRPortCount"|"DmxPortDefaultDirection"|"TimecodePortsIn"|"TimecodePortsOut"|"DCIoPorts"|"DigitalIoPorts"|"MidiCount"|"UsbDeviceIndex"|"UsbDeviceType", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function OutputConfiguration:Get(name, role) end
