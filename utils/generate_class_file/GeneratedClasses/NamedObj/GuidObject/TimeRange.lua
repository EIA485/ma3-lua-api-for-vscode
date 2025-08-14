---@meta

---@class TimeRange: GuidObject
---@field Name string
---@field TrackGroup Object
---@field Track Object
---@field Start SignedTimePropertyValue
---@field RawStart integer
---@field Duration TimePropertyValue
---@field Offset SignedTimePropertyValue
---@field SpeedFactor integer
---@field Play integer
---@field Rec integer
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
---@return Track
function TimeRange:Parent() end
---@param index integer
---@return SubTrack
function TimeRange:Ptr(index) end
---@return SubTrack[]
function TimeRange:Children() end
---@return SubTrack?
function TimeRange:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "TrackGroup"|"Track", role: nil): Object
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Start"|"Offset", role: nil): SignedTimePropertyValue
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "RawStart"|"SpeedFactor"|"Play"|"Rec"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"NameAndApp"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Name"|"TrackGroup"|"Track"|"Start"|"RawStart"|"Duration"|"Offset"|"SpeedFactor"|"Play"|"Rec"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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