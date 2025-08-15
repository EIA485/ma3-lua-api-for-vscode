---@meta

---@class Timecode: GuidObject
---@field Cursor SignedTimePropertyValue
---@field Duration SignedTimePropertyValue
---@field OffsetTCSlot SignedTimePropertyValue
---@field RawOffsetTCSlot integer
---@field RawDuration integer
---@field LoopMode LoopMode
---@field LoopCount integer
---@field TimeMarkers Track
---@field TCSlot integer
---@field AutoStart YesNo|boolean
---@field AutoStop YesNo|boolean
---@field SwitchOff PlaybacksOff
---@field Goto RecordGo
---@field AssertPrevEvents YesNo|boolean
---@field PlaybackandRecord EventsPlaybackRecord
---@field RecordTimedCues YesNo|boolean
---@field RecordCueCommands YesNo|boolean
---@field RecordMacroEvents YesNo|boolean
---@field RecordRemoteEvents YesNo|boolean
---@field UserBits integer
---@field TimeDisplayFormat TimeDisplayFormatSelected
---@field FrameReadout FrameFormatDefault
---@field Type string
---@field User string
---@field LoadFromDefault fun(cmdline: Cmdline)
---@field SaveToDefault fun(cmdline: Cmdline)
---@field StartRecording fun(user: User)
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
---@generic T : Timecode
---@param class `T`
---@return boolean
function Timecode:IsClass(class) end
---@return Timecodes
function Timecode:Parent() end
---@param index integer
---@return TrackGroup
function Timecode:Ptr(index) end
---@return TrackGroup[]
function Timecode:Children() end
---@return TrackGroup?
function Timecode:CurrentChild() end
---@return 49
function Timecode:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "Cursor"
---@overload fun(idx: 21): "Duration"
---@overload fun(idx: 22): "OffsetTCSlot"
---@overload fun(idx: 23): "RawOffsetTCSlot"
---@overload fun(idx: 24): "RawDuration"
---@overload fun(idx: 25): "LoopMode"
---@overload fun(idx: 26): "LoopCount"
---@overload fun(idx: 27): "TimeMarkers"
---@overload fun(idx: 28): "TCSlot"
---@overload fun(idx: 29): "AutoStart"
---@overload fun(idx: 30): "AutoStop"
---@overload fun(idx: 31): "SwitchOff"
---@overload fun(idx: 32): "Goto"
---@overload fun(idx: 33): "AssertPrevEvents"
---@overload fun(idx: 34): "PlaybackandRecord"
---@overload fun(idx: 35): "RecordTimedCues"
---@overload fun(idx: 36): "RecordCueCommands"
---@overload fun(idx: 37): "RecordMacroEvents"
---@overload fun(idx: 38): "RecordRemoteEvents"
---@overload fun(idx: 39): "UserBits"
---@overload fun(idx: 40): "TimeDisplayFormat"
---@overload fun(idx: 41): "FrameReadout"
---@overload fun(idx: 42): "Type"
---@overload fun(idx: 43): "User"
---@overload fun(idx: 44): "LoadFromDefault"
---@overload fun(idx: 45): "SaveToDefault"
---@overload fun(idx: 46): "StartRecording"
---@overload fun(idx: 47): "StopRecording"
---@overload fun(idx: 48): "IsRecording"
function Timecode:PropertyName(idx) end
---@overload fun(idx: 0|1|2|35|36|37): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|29|30|33|38): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|27|42|43): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21|22|26|28|39): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17|23|24|44|45|46|47|48): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 25): {ExportIgnore: False, EnumCollection: LoopMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 31): {ExportIgnore: False, EnumCollection: PlaybacksOff, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 32): {ExportIgnore: False, EnumCollection: RecordGo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 34): {ExportIgnore: False, EnumCollection: EventsPlaybackRecord, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 40): {ExportIgnore: False, EnumCollection: TimeDisplayFormatSelected, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 41): {ExportIgnore: False, EnumCollection: FrameFormatDefault, ReadOnly: False, ImportIgnore: False}
function Timecode:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|26|39): "UInt32"
---@overload fun(idx: 7|12|17|18|42|43): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11|29|30|31|32|33|34|35|36|37|38): "UInt64"
---@overload fun(idx: 13|23|24): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16|27): "Handle"
---@overload fun(idx: 20|21|22): "Int64SignedTime"
---@overload fun(idx: 25|40|41): "UInt8"
---@overload fun(idx: 28): "Int8"
---@overload fun(idx: 44|45|46|47|48): "Method"
function Timecode:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "PlaybackandRecord", role: nil): EventsPlaybackRecord
---@overload fun(name: "FrameReadout", role: nil): FrameFormatDefault
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "LoopMode", role: nil): LoopMode
---@overload fun(name: "SwitchOff", role: nil): PlaybacksOff
---@overload fun(name: "Goto", role: nil): RecordGo
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Cursor"|"Duration"|"OffsetTCSlot", role: nil): SignedTimePropertyValue
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "TimeDisplayFormat", role: nil): TimeDisplayFormatSelected
---@overload fun(name: "TimeMarkers", role: nil): Track
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"AutoStart"|"AutoStop"|"AssertPrevEvents"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents", role: nil): YesNo|boolean
---@overload fun(name: "StopRecording", role: nil): fun()
---@overload fun(name: "IsRecording", role: nil): fun() : boolean
---@overload fun(name: "LoadFromDefault"|"SaveToDefault", role: nil): fun(cmdline: Cmdline)
---@overload fun(name: "StartRecording", role: nil): fun(user: User)
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"RawOffsetTCSlot"|"RawDuration"|"LoopCount"|"TCSlot"|"UserBits", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"Type"|"User", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Cursor"|"Duration"|"OffsetTCSlot"|"RawOffsetTCSlot"|"RawDuration"|"LoopMode"|"LoopCount"|"TimeMarkers"|"TCSlot"|"AutoStart"|"AutoStop"|"SwitchOff"|"Goto"|"AssertPrevEvents"|"PlaybackandRecord"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents"|"UserBits"|"TimeDisplayFormat"|"FrameReadout"|"Type"|"User"|"LoadFromDefault"|"SaveToDefault"|"StartRecording"|"StopRecording"|"IsRecording", role: Enums.Roles): string
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
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PlaybackandRecord", property_value: EventsPlaybackRecord, override_change_level: ChangeLevel?)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LoopMode", property_value: LoopMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SwitchOff", property_value: PlaybacksOff, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Goto", property_value: RecordGo, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Cursor"|"Duration"|"OffsetTCSlot", property_value: SignedTimePropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TimeMarkers", property_value: Track, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"AutoStart"|"AutoStop"|"AssertPrevEvents"|"RecordTimedCues"|"RecordCueCommands"|"RecordMacroEvents"|"RecordRemoteEvents", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"LoopCount"|"TCSlot"|"UserBits", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"Type"|"User", property_value: string, override_change_level: ChangeLevel?)
function Timecode:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Play", property_value: ECPlay|boolean)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean)
function Timecode:Rec(property_name, property_value) end