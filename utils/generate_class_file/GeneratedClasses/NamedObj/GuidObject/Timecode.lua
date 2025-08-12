---@meta

---@class Timecode: GuidObject
---@field Cursor SignedTimePropertyValue
---@field Duration SignedTimePropertyValue
---@field Offset
TCSlot SignedTimePropertyValue
---@field RawOffsetTCSlot integer
---@field RawDuration integer
---@field Loop
Mode integer
---@field Loop
Count integer
---@field TimeMarkers Track
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
---@field TimeDisplayFormat integer
---@field FrameReadout integer
---@field Type string
---@field User string
---@field LoadFromDefault fun(cmdline: Cmdline)
---@field SaveToDefault fun(cmdline: Cmdline)
---@field StartRecording fun(user: user)
---@field StopRecording fun()
---@field IsRecording fun() : boolean
local Timecode = {
    Cursor="0",
    Duration="0",
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
    TimeDisplayFormat="0",
    FrameReadout="0"
}
---@return "Timecode"
function Timecode:GetClass() end
---@return "TrackGroup"
function Timecode:GetChildClass() end
---@return Timecodes
function Timecode:Parent() end
---@param index integer
---@return TrackGroup
function Timecode:Ptr(index) end
---@return TrackGroup[]
function Timecode:Children() end
---@return TrackGroup?
function Timecode:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Cursor"|"Duration"|"Offset
TCSlot", role: nil): SignedTimePropertyValue
---@overload fun(name: "RawOffsetTCSlot"|"RawDuration"|"Loop
Mode"|"Loop
Count", role: nil): integer
---@overload fun(name: "TimeMarkers", role: nil): Track
---@overload fun(name: "TCSlot"|"Auto
Start"|"Auto
Stop"|"SwitchOff"|"Goto"|"AssertPrev
Events"|"Playbackand
Record"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"TimeDisplayFormat"|"FrameReadout", role: nil): integer
---@overload fun(name: "Type"|"User", role: nil): string
---@overload fun(name: "LoadFromDefault"|"SaveToDefault", role: nil): fun(cmdline: Cmdline)
---@overload fun(name: "StartRecording", role: nil): fun(user: user)
---@overload fun(name: "StopRecording", role: nil): fun()
---@overload fun(name: "IsRecording", role: nil): fun() : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Cursor"|"Duration"|"Offset
TCSlot"|"RawOffsetTCSlot"|"RawDuration"|"Loop
Mode"|"Loop
Count"|"TimeMarkers"|"TCSlot"|"Auto
Start"|"Auto
Stop"|"SwitchOff"|"Goto"|"AssertPrev
Events"|"Playbackand
Record"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"TimeDisplayFormat"|"FrameReadout"|"Type"|"User"|"LoadFromDefault"|"SaveToDefault"|"StartRecording"|"StopRecording"|"IsRecording", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TrackGroup
function Timecode:Get(name, role) end
---@overload fun(index: integer, class: "TrackGroup", undo: Undo?): TrackGroup
---@overload fun(index: integer, class: nil, undo: Undo?): TrackGroup
function Timecode:Create(index, class, undo) end
---@overload fun(class: "TrackGroup", undo: Undo?, count: integer?): TrackGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): TrackGroup
function Timecode:Append(class, undo, count) end
---@overload fun(class: "TrackGroup", undo: Undo?): TrackGroup
---@overload fun(class: nil, undo: Undo?): TrackGroup
function Timecode:Acquire(class, undo) end
---@overload fun(class: "TrackGroup", undo: Undo?): TrackGroup
---@overload fun(class: nil, undo: Undo?): TrackGroup
---@deprecated use "Acquire" instead
function Timecode:Aquire(class, undo) end
---@overload fun(index: integer, class: "TrackGroup", undo: Undo?, count: integer?): TrackGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TrackGroup
function Timecode:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TrackGroup"): TrackGroup
---@overload fun(name: string, class: nil): TrackGroup
function Timecode:Find(name, class) end
---@overload fun(name: string, class: "TrackGroup"): TrackGroup
---@overload fun(name: string, class: nil): Object
function Timecode:FindRecursive(name, class) end
