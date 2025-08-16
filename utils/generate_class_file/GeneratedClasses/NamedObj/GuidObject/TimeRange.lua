---@meta

---@class TimeRange: GuidObject
---@field Name string
---@field TrackGroup Object
---@field Track Object
---@field Start SignedTimePropertyValue
---@field RawStart integer
---@field Duration TCDuration
---@field Offset SignedTimePropertyValue
---@field SpeedFactor integer
---@field Play ECPlay|boolean
---@field Rec ECRec|boolean
local TimeRange = {
    Start="0",
    Duration="0",
    Offset="0",
    SpeedFactor="1",
    Play="1",
    Rec="1"
}
---@return "TimeRange"
function TimeRange:GetClass() end
---@return "SubTrack"
function TimeRange:GetChildClass() end
---@generic T : TimeRange
---@param class `T`
---@return boolean
function TimeRange:IsClass(class) end
---@return Track
function TimeRange:Parent() end
---@param index integer
---@return SubTrack
function TimeRange:Ptr(index) end
---@return SubTrack[]
function TimeRange:Children() end
---@return SubTrack?
function TimeRange:CurrentChild() end
---@return 29
function TimeRange:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "UserExpanded"
---@overload fun(idx: 8): "FaderEnabled"
---@overload fun(idx: 9): "Owned"
---@overload fun(idx: 10): "Hidden"
---@overload fun(idx: 11): "DependencyExport"
---@overload fun(idx: 12): "MemoryFootprint"
---@overload fun(idx: 13): "Guid"
---@overload fun(idx: 14): "Scribble"
---@overload fun(idx: 15): "Appearance"
---@overload fun(idx: 16): "NameAndApp"
---@overload fun(idx: 17): "Note"
---@overload fun(idx: 18): "Tags"
---@overload fun(idx: 19): "Name"
---@overload fun(idx: 20): "TrackGroup"
---@overload fun(idx: 21): "Track"
---@overload fun(idx: 22): "Start"
---@overload fun(idx: 23): "RawStart"
---@overload fun(idx: 24): "Duration"
---@overload fun(idx: 25): "Offset"
---@overload fun(idx: 26): "SpeedFactor"
---@overload fun(idx: 27): "Play"
---@overload fun(idx: 28): "Rec"
function TimeRange:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|10): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|20|21): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 8|9): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11|13|14|15|17|18|19|22|26): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 12|16|23|25): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: False, EnumCollection: TCDuration, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 27): {ExportIgnore: False, EnumCollection: ECPlay, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 28): {ExportIgnore: False, EnumCollection: ECRec, ReadOnly: False, ImportIgnore: False}
function TimeRange:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|7): "UInt32"
---@overload fun(idx: 8|9): "Bool"
---@overload fun(idx: 10|27|28): "UInt64"
---@overload fun(idx: 11|16|17|19): "String"
---@overload fun(idx: 12|23|26): "Int64"
---@overload fun(idx: 13|18): "Custom"
---@overload fun(idx: 14|15|20|21): "Handle"
---@overload fun(idx: 22|25): "Int64SignedTime"
---@overload fun(idx: 24): "Int64Time"
function TimeRange:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Play", role: nil): ECPlay|boolean
---@overload fun(name: "Rec", role: nil): ECRec|boolean
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "TrackGroup"|"Track", role: nil): Object
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Start"|"Offset", role: nil): SignedTimePropertyValue
---@overload fun(name: "Duration", role: nil): TCDuration
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"RawStart"|"SpeedFactor", role: nil): integer
---@overload fun(name: "DependencyExport"|"NameAndApp"|"Note"|"Name", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Name"|"TrackGroup"|"Track"|"Start"|"RawStart"|"Duration"|"Offset"|"SpeedFactor"|"Play"|"Rec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): SubTrack
function TimeRange:Get(name, role) end
---@generic T : SubTrack
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SubTrack
function TimeRange:Create(index, class, undo) end
---@generic T : SubTrack
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SubTrack
function TimeRange:Append(class, undo, count) end
---@generic T : SubTrack
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SubTrack
function TimeRange:Acquire(class, undo) end
---@generic T : SubTrack
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SubTrack
---@deprecated use "Acquire" instead
function TimeRange:Aquire(class, undo) end
---@generic T : SubTrack
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SubTrack
function TimeRange:Insert(index, class, undo, count) end
---@generic T : SubTrack
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SubTrack
function TimeRange:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TrackGroup"|"Track", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Start", property_value: SignedTimePropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Duration", property_value: TCDuration, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"SpeedFactor", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DependencyExport"|"Note"|"Name", property_value: string, override_change_level: ChangeLevel?)
function TimeRange:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "FaderToken", property_value: AssignmentFaderFunctionsSubTrack)
---@overload fun(property_name: "FaderToken", property_value: AssignmentFaderFunctionsSubTrack)
function TimeRange:SetChildren(property_name, property_value) end