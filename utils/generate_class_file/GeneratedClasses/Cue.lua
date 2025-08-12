---@meta

---@class Cue: Object A cue in a sequence.
---@field No CueNumber
---@field Release integer
---@field Assert integer
---@field Allow
Duplicates integer
---@field TrigType integer
---@field TrigTime TimePropertyValue
---@field TrigSound integer
---@field MIB
Preference integer
---@field Break Object
local Cue = {
    ["Allow
Duplicates"]="0",
    TrigType="Go",
    TrigTime="0",
    TrigSound="0",
    ["MIB
Preference"]="Normal"
}
---@return "Cue"
function Cue:GetClass() end
---@return "Part"
function Cue:GetChildClass() end
---@return Sequence
function Cue:Parent() end
---@param index integer
---@return Part
function Cue:Ptr(index) end
---@return Part[]
function Cue:Children() end
---@return Part?
function Cue:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "No", role: nil): CueNumber
---@overload fun(name: "Release"|"Assert"|"Allow
Duplicates"|"TrigType", role: nil): integer
---@overload fun(name: "TrigTime", role: nil): TimePropertyValue
---@overload fun(name: "TrigSound"|"MIB
Preference", role: nil): integer
---@overload fun(name: "Break", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"No"|"Release"|"Assert"|"Allow
Duplicates"|"TrigType"|"TrigTime"|"TrigSound"|"MIB
Preference"|"Break", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Part
function Cue:Get(name, role) end
---@overload fun(index: integer, class: "Part", undo: Undo?): Part
---@overload fun(index: integer, class: nil, undo: Undo?): Part
function Cue:Create(index, class, undo) end
---@overload fun(class: "Part", undo: Undo?, count: integer?): Part
---@overload fun(class: nil, undo: Undo?, count: integer?): Part
function Cue:Append(class, undo, count) end
---@overload fun(class: "Part", undo: Undo?): Part
---@overload fun(class: nil, undo: Undo?): Part
function Cue:Acquire(class, undo) end
---@overload fun(class: "Part", undo: Undo?): Part
---@overload fun(class: nil, undo: Undo?): Part
---@deprecated use "Acquire" instead
function Cue:Aquire(class, undo) end
---@overload fun(index: integer, class: "Part", undo: Undo?, count: integer?): Part
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Part
function Cue:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Part"): Part
---@overload fun(name: string, class: nil): Part
function Cue:Find(name, class) end
---@overload fun(name: string, class: "Part"): Part
---@overload fun(name: string, class: nil): Object
function Cue:FindRecursive(name, class) end
