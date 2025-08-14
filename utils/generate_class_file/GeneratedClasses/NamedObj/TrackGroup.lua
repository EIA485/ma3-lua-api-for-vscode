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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Play"|"Rec"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Play"|"Rec"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Track
function TrackGroup:Get(name, role) end
---@generic T : Track
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Track
function TrackGroup:Create(index, class, undo) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Track
function TrackGroup:Append(class, undo, count) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Track
function TrackGroup:Acquire(class, undo) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Track
---@deprecated use "Acquire" instead
function TrackGroup:Aquire(class, undo) end
---@generic T : Track
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Track
function TrackGroup:Insert(index, class, undo, count) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Track
function TrackGroup:Find(class, undo) end