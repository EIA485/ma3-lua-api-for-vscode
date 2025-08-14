---@meta

---@class Timecode: GuidObject
---@field Cursor SignedTimePropertyValue
---@field Duration SignedTimePropertyValue
---@field OffsetTCSlot SignedTimePropertyValue
---@field RawOffsetTCSlot integer
---@field RawDuration integer
---@field LoopMode integer
---@field LoopCount integer
---@field TimeMarkers Track
---@field TCSlot integer
---@field AutoStart integer
---@field AutoStop integer
---@field SwitchOff integer
---@field Goto integer
---@field AssertPrevEvents integer
---@field PlaybackandRecord integer
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
    OffsetTCSlot="0",
    LoopMode="Off",
    LoopCount="1",
    AutoStart="No",
    AutoStop="Yes",
    SwitchOff="Playbacks Off",
    Goto="as Goto (Status)",
    AssertPrevEvents="Yes",
    PlaybackandRecord="Manual Events",
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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Cursor"|"Duration"|"OffsetTCSlot", role: nil): SignedTimePropertyValue
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "TimeMarkers", role: nil): Track
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "StopRecording", role: nil): fun()
---@overload fun(name: "IsRecording", role: nil): fun() : boolean
---@overload fun(name: "LoadFromDefault"|"SaveToDefault", role: nil): fun(cmdline: Cmdline)
---@overload fun(name: "StartRecording", role: nil): fun(user: user)
---@overload fun(name: "RawOffsetTCSlot"|"RawDuration"|"LoopMode"|"LoopCount"|"TCSlot"|"AutoStart"|"AutoStop"|"SwitchOff"|"Goto"|"AssertPrevEvents"|"PlaybackandRecord"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"TimeDisplayFormat"|"FrameReadout"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"User"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Cursor"|"Duration"|"OffsetTCSlot"|"RawOffsetTCSlot"|"RawDuration"|"LoopMode"|"LoopCount"|"TimeMarkers"|"TCSlot"|"AutoStart"|"AutoStop"|"SwitchOff"|"Goto"|"AssertPrevEvents"|"PlaybackandRecord"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"TimeDisplayFormat"|"FrameReadout"|"Type"|"User"|"LoadFromDefault"|"SaveToDefault"|"StartRecording"|"StopRecording"|"IsRecording"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TrackGroup
function Timecode:Get(name, role) end
---@generic T : TrackGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TrackGroup
function Timecode:Create(index, class, undo) end
---@generic T : TrackGroup
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TrackGroup
function Timecode:Append(class, undo, count) end
---@generic T : TrackGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TrackGroup
function Timecode:Acquire(class, undo) end
---@generic T : TrackGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TrackGroup
---@deprecated use "Acquire" instead
function Timecode:Aquire(class, undo) end
---@generic T : TrackGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TrackGroup
function Timecode:Insert(index, class, undo, count) end
---@generic T : TrackGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TrackGroup
function Timecode:Find(class, undo) end