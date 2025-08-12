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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"FaderToken", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FaderToken", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FaderEvent
function FaderSubTrack:Get(name, role) end
---@overload fun(index: integer, class: "FaderEvent", undo: Undo?): FaderEvent
---@overload fun(index: integer, class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Create(index, class, undo) end
---@overload fun(class: "FaderEvent", undo: Undo?, count: integer?): FaderEvent
---@overload fun(class: nil, undo: Undo?, count: integer?): FaderEvent
function FaderSubTrack:Append(class, undo, count) end
---@overload fun(class: "FaderEvent", undo: Undo?): FaderEvent
---@overload fun(class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Acquire(class, undo) end
---@overload fun(class: "FaderEvent", undo: Undo?): FaderEvent
---@overload fun(class: nil, undo: Undo?): FaderEvent
---@deprecated use "Acquire" instead
function FaderSubTrack:Aquire(class, undo) end
---@overload fun(index: integer, class: "FaderEvent", undo: Undo?, count: integer?): FaderEvent
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FaderEvent
function FaderSubTrack:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FaderEvent"): FaderEvent
---@overload fun(name: string, class: nil): FaderEvent
function FaderSubTrack:Find(name, class) end
---@overload fun(name: string, class: "FaderEvent"): FaderEvent
---@overload fun(name: string, class: nil): Object
function FaderSubTrack:FindRecursive(name, class) end
