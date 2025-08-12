---@meta

---@class Track: GuidObject
---@field Target Object
---@field Play integer
---@field Rec integer
local Track = {
    Play="1",
    Rec="1"
}
---@return "Track"
function Track:GetClass() end
---@return "TimeRange"
function Track:GetChildClass() end
---@return TrackGroup
function Track:Parent() end
---@param index integer
---@return TimeRange
function Track:Ptr(index) end
---@return TimeRange[]
function Track:Children() end
---@return TimeRange?
function Track:CurrentChild() end
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
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Play"|"Rec", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Target"|"Play"|"Rec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TimeRange
function Track:Get(name, role) end
---@overload fun(index: integer, class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(index: integer, class: nil, undo: Undo?): TimeRange
function Track:Create(index, class, undo) end
---@overload fun(class: "TimeRange", undo: Undo?, count: integer?): TimeRange
---@overload fun(class: nil, undo: Undo?, count: integer?): TimeRange
function Track:Append(class, undo, count) end
---@overload fun(class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(class: nil, undo: Undo?): TimeRange
function Track:Acquire(class, undo) end
---@overload fun(class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(class: nil, undo: Undo?): TimeRange
---@deprecated use "Acquire" instead
function Track:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimeRange", undo: Undo?, count: integer?): TimeRange
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimeRange
function Track:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimeRange"): TimeRange
---@overload fun(name: string, class: nil): TimeRange
function Track:Find(name, class) end
---@overload fun(name: string, class: "TimeRange"): TimeRange
---@overload fun(name: string, class: nil): Object
function Track:FindRecursive(name, class) end
