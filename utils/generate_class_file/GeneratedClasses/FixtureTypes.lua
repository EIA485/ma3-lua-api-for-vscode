---@meta

---@class FixtureTypes: Object Container for all types of fixtures in a patch.
---@field SourceIsShow boolean
local FixtureTypes = {
    SourceIsShow="0"
}
---@return "FixtureTypes"
function FixtureTypes:GetClass() end
---@return "FixtureType"
function FixtureTypes:GetChildClass() end
---@return Patch
function FixtureTypes:Parent() end
---@param index integer
---@return FixtureType
function FixtureTypes:Ptr(index) end
---@return FixtureType[]
function FixtureTypes:Children() end
---@return FixtureType?
function FixtureTypes:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SourceIsShow", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SourceIsShow", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureType
function FixtureTypes:Get(name, role) end
---@overload fun(index: integer, class: "FixtureType", undo: Undo?): FixtureType
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureType
function FixtureTypes:Create(index, class, undo) end
---@overload fun(class: "FixtureType", undo: Undo?, count: integer?): FixtureType
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureType
function FixtureTypes:Append(class, undo, count) end
---@overload fun(class: "FixtureType", undo: Undo?): FixtureType
---@overload fun(class: nil, undo: Undo?): FixtureType
function FixtureTypes:Acquire(class, undo) end
---@overload fun(class: "FixtureType", undo: Undo?): FixtureType
---@overload fun(class: nil, undo: Undo?): FixtureType
---@deprecated use "Acquire" instead
function FixtureTypes:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureType", undo: Undo?, count: integer?): FixtureType
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureType
function FixtureTypes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureType"): FixtureType
---@overload fun(name: string, class: nil): FixtureType
function FixtureTypes:Find(name, class) end
---@overload fun(name: string, class: "FixtureType"): FixtureType
---@overload fun(name: string, class: nil): Object
function FixtureTypes:FindRecursive(name, class) end
