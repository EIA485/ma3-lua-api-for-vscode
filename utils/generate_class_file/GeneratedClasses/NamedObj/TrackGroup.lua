---@meta

---@class TrackGroup: NamedObj
---@field Play integer
---@field Rec integer
local TrackGroup = {
    Play="1",
    Rec="1"
}
---@return "TrackGroup"
function TrackGroup:GetClass() end
---@return "Track"
function TrackGroup:GetChildClass() end
---@return Timecode
function TrackGroup:Parent() end
---@param index integer
---@return Track
function TrackGroup:Ptr(index) end
---@return Track[]
function TrackGroup:Children() end
---@return Track?
function TrackGroup:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Play"|"Rec", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Play"|"Rec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Track
function TrackGroup:Get(name, role) end
---@overload fun(index: integer, class: "Track", undo: Undo?): Track
---@overload fun(index: integer, class: "MarkerTrack", undo: Undo?): MarkerTrack
---@overload fun(index: integer, class: nil, undo: Undo?): Track
function TrackGroup:Create(index, class, undo) end
---@overload fun(class: "Track", undo: Undo?, count: integer?): Track
---@overload fun(class: "MarkerTrack", undo: Undo?, count: integer?): MarkerTrack
---@overload fun(class: nil, undo: Undo?, count: integer?): Track
function TrackGroup:Append(class, undo, count) end
---@overload fun(class: "Track", undo: Undo?): Track
---@overload fun(class: "MarkerTrack", undo: Undo?): MarkerTrack
---@overload fun(class: nil, undo: Undo?): Track
function TrackGroup:Acquire(class, undo) end
---@overload fun(class: "Track", undo: Undo?): Track
---@overload fun(class: "MarkerTrack", undo: Undo?): MarkerTrack
---@overload fun(class: nil, undo: Undo?): Track
---@deprecated use "Acquire" instead
function TrackGroup:Aquire(class, undo) end
---@overload fun(index: integer, class: "Track", undo: Undo?, count: integer?): Track
---@overload fun(index: integer, class: "MarkerTrack", undo: Undo?, count: integer?): MarkerTrack
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Track
function TrackGroup:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Track"): Track
---@overload fun(name: string, class: "MarkerTrack"): MarkerTrack
---@overload fun(name: string, class: nil): Track
function TrackGroup:Find(name, class) end
---@overload fun(name: string, class: "Track"): Track
---@overload fun(name: string, class: "MarkerTrack"): MarkerTrack
---@overload fun(name: string, class: nil): Object
function TrackGroup:FindRecursive(name, class) end
