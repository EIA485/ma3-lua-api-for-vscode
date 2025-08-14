---@meta

---@class FaderSubTrack: SubTrack
---@field FaderToken integer
local FaderSubTrack = {
    FaderToken="Master"
}
---@return "FaderSubTrack"
function FaderSubTrack:GetClass() end
---@return "FaderEvent"
function FaderSubTrack:GetChildClass() end
---@param index integer
---@return FaderEvent
function FaderSubTrack:Ptr(index) end
---@return FaderEvent[]
function FaderSubTrack:Children() end
---@return FaderEvent?
function FaderSubTrack:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FaderToken"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FaderToken"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FaderEvent
function FaderSubTrack:Get(name, role) end
---@generic T : FaderEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Create(index, class, undo) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FaderEvent
function FaderSubTrack:Append(class, undo, count) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Acquire(class, undo) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderEvent
---@deprecated use "Acquire" instead
function FaderSubTrack:Aquire(class, undo) end
---@generic T : FaderEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FaderEvent
function FaderSubTrack:Insert(index, class, undo, count) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Find(class, undo) end