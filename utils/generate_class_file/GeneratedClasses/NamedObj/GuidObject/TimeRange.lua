---@meta

---@class TimeRange: GuidObject
---@field Name string
---@field TrackGroup Object
---@field Track Object
---@field Start SignedTimePropertyValue
---@field RawStart integer
---@field Duration TimePropertyValue
---@field Offset SignedTimePropertyValue
---@field Speed
Factor integer
---@field Play integer
---@field Rec integer
local TimeRange = {
    Start="0",
    Duration="0",
    Offset="0",
    ["Speed
Factor"]="1",
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
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "TrackGroup"|"Track", role: nil): Object
---@overload fun(name: "Start", role: nil): SignedTimePropertyValue
---@overload fun(name: "RawStart", role: nil): integer
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "Offset", role: nil): SignedTimePropertyValue
---@overload fun(name: "Speed
Factor"|"Play"|"Rec", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Name"|"TrackGroup"|"Track"|"Start"|"RawStart"|"Duration"|"Offset"|"Speed
Factor"|"Play"|"Rec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): SubTrack
function TimeRange:Get(name, role) end
---@overload fun(index: integer, class: "SubTrack", undo: Undo?): SubTrack
---@overload fun(index: integer, class: "FaderSubTrack", undo: Undo?): FaderSubTrack
---@overload fun(index: integer, class: "CmdSubTrack", undo: Undo?): CmdSubTrack
---@overload fun(index: integer, class: nil, undo: Undo?): SubTrack
function TimeRange:Create(index, class, undo) end
---@overload fun(class: "SubTrack", undo: Undo?, count: integer?): SubTrack
---@overload fun(class: "FaderSubTrack", undo: Undo?, count: integer?): FaderSubTrack
---@overload fun(class: "CmdSubTrack", undo: Undo?, count: integer?): CmdSubTrack
---@overload fun(class: nil, undo: Undo?, count: integer?): SubTrack
function TimeRange:Append(class, undo, count) end
---@overload fun(class: "SubTrack", undo: Undo?): SubTrack
---@overload fun(class: "FaderSubTrack", undo: Undo?): FaderSubTrack
---@overload fun(class: "CmdSubTrack", undo: Undo?): CmdSubTrack
---@overload fun(class: nil, undo: Undo?): SubTrack
function TimeRange:Acquire(class, undo) end
---@overload fun(class: "SubTrack", undo: Undo?): SubTrack
---@overload fun(class: "FaderSubTrack", undo: Undo?): FaderSubTrack
---@overload fun(class: "CmdSubTrack", undo: Undo?): CmdSubTrack
---@overload fun(class: nil, undo: Undo?): SubTrack
---@deprecated use "Acquire" instead
function TimeRange:Aquire(class, undo) end
---@overload fun(index: integer, class: "SubTrack", undo: Undo?, count: integer?): SubTrack
---@overload fun(index: integer, class: "FaderSubTrack", undo: Undo?, count: integer?): FaderSubTrack
---@overload fun(index: integer, class: "CmdSubTrack", undo: Undo?, count: integer?): CmdSubTrack
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SubTrack
function TimeRange:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SubTrack"): SubTrack
---@overload fun(name: string, class: "FaderSubTrack"): FaderSubTrack
---@overload fun(name: string, class: "CmdSubTrack"): CmdSubTrack
---@overload fun(name: string, class: nil): SubTrack
function TimeRange:Find(name, class) end
---@overload fun(name: string, class: "SubTrack"): SubTrack
---@overload fun(name: string, class: "FaderSubTrack"): FaderSubTrack
---@overload fun(name: string, class: "CmdSubTrack"): CmdSubTrack
---@overload fun(name: string, class: nil): Object
function TimeRange:FindRecursive(name, class) end
