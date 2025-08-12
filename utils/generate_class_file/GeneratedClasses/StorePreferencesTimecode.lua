---@meta

---@class StorePreferencesTimecode: Object
---@field Offset
TCSlot SignedTimePropertyValue
---@field Loop
Mode integer
---@field Loop
Count integer
---@field TCSlot integer
---@field Auto
Start integer
---@field Auto
Stop integer
---@field SwitchOff integer
---@field Goto integer
---@field AssertPrev
Events integer
---@field Playbackand
Record integer
---@field RecordTimedCues integer
---@field RecordCueCommands integer
---@field RecordMacroEvents integer
---@field RecordRemoteEvents integer
---@field UserBits integer
---@field Timedisplayformat integer
---@field FrameReadout integer
local StorePreferencesTimecode = {
    ["Offset
TCSlot"]="0",
    ["Loop
Mode"]="Off",
    ["Loop
Count"]="1",
    ["Auto
Start"]="No",
    ["Auto
Stop"]="Yes",
    SwitchOff="Playbacks Off",
    Goto="as Goto (Status)",
    ["AssertPrev
Events"]="Yes",
    ["Playbackand
Record"]="Manual Events",
    RecordTimedCues="Yes",
    RecordCueCommands="Yes",
    RecordMacroEvents="Yes",
    RecordRemoteEvents="Yes",
    UserBits="0",
    Timedisplayformat="0",
    FrameReadout="0"
}
---@return "StorePreferencesTimecode"
function StorePreferencesTimecode:GetClass() end
---@return "Object"
function StorePreferencesTimecode:GetChildClass() end
---@return StorePreferences
function StorePreferencesTimecode:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Offset
TCSlot", role: nil): SignedTimePropertyValue
---@overload fun(name: "Loop
Mode"|"Loop
Count"|"TCSlot"|"Auto
Start"|"Auto
Stop"|"SwitchOff"|"Goto"|"AssertPrev
Events"|"Playbackand
Record"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"Timedisplayformat"|"FrameReadout", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Offset
TCSlot"|"Loop
Mode"|"Loop
Count"|"TCSlot"|"Auto
Start"|"Auto
Stop"|"SwitchOff"|"Goto"|"AssertPrev
Events"|"Playbackand
Record"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"Timedisplayformat"|"FrameReadout", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function StorePreferencesTimecode:Get(name, role) end
