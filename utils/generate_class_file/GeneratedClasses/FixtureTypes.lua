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
---@overload fun(name: "SourceIsShow"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SourceIsShow"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureType
function FixtureTypes:Get(name, role) end
---@generic T : FixtureType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureType
function FixtureTypes:Create(index, class, undo) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureType
function FixtureTypes:Append(class, undo, count) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureType
function FixtureTypes:Acquire(class, undo) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureType
---@deprecated use "Acquire" instead
function FixtureTypes:Aquire(class, undo) end
---@generic T : FixtureType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureType
function FixtureTypes:Insert(index, class, undo, count) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureType
function FixtureTypes:Find(class, undo) end