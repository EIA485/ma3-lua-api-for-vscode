---@meta

---@class Sequence: GuidObject A sequence is a collection of cues and prests.
---@field CurrentCue Cue
---@field LoadedCue Cue
---@field Type string
---@field Cue
No string
---@field Cue
Name string
---@field User string
---@field Action SequenceActionToken
---@field TimingGoto TimePropertyValue
---@field TimingGoBack TimePropertyValue
---@field TimingGoFast TimePropertyValue
---@field TimingGoBackFast TimePropertyValue
local Sequence = {
    TimingGoto="Default",
    TimingGoBack="Default",
    TimingGoFast="Default",
    TimingGoBackFast="Default"
}
---@return "Sequence"
function Sequence:GetClass() end
---@return "Cue"
function Sequence:GetChildClass() end
---@return Sequences
function Sequence:Parent() end
---@param index integer
---@return Cue
function Sequence:Ptr(index) end
---@return Cue[]
function Sequence:Children() end
---@return Cue?
function Sequence:CurrentChild() end
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
---@overload fun(name: "CurrentCue"|"LoadedCue", role: nil): Cue
---@overload fun(name: "Type"|"Cue
No"|"Cue
Name"|"User", role: nil): string
---@overload fun(name: "Action", role: nil): SequenceActionToken
---@overload fun(name: "TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"CurrentCue"|"LoadedCue"|"Type"|"Cue
No"|"Cue
Name"|"User"|"Action"|"TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Cue
function Sequence:Get(name, role) end
---@overload fun(index: integer, class: "Cue", undo: Undo?): Cue
---@overload fun(index: integer, class: nil, undo: Undo?): Cue
function Sequence:Create(index, class, undo) end
---@overload fun(class: "Cue", undo: Undo?, count: integer?): Cue
---@overload fun(class: nil, undo: Undo?, count: integer?): Cue
function Sequence:Append(class, undo, count) end
---@overload fun(class: "Cue", undo: Undo?): Cue
---@overload fun(class: nil, undo: Undo?): Cue
function Sequence:Acquire(class, undo) end
---@overload fun(class: "Cue", undo: Undo?): Cue
---@overload fun(class: nil, undo: Undo?): Cue
---@deprecated use "Acquire" instead
function Sequence:Aquire(class, undo) end
---@overload fun(index: integer, class: "Cue", undo: Undo?, count: integer?): Cue
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Cue
function Sequence:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Cue"): Cue
---@overload fun(name: string, class: nil): Cue
function Sequence:Find(name, class) end
---@overload fun(name: string, class: "Cue"): Cue
---@overload fun(name: string, class: nil): Object
function Sequence:FindRecursive(name, class) end
