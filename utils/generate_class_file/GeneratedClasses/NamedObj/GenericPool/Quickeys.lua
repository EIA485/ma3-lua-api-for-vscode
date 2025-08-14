---@meta

---@class Quickeys: GenericPool
---@field CLI integer
local Quickeys = {
    CLI="0"
}
---@return "Quickeys"
function Quickeys:GetClass() end
---@return "Quickey"
function Quickeys:GetChildClass() end
---@return Pool
function Quickeys:Parent() end
---@param index integer
---@return Quickey
function Quickeys:Ptr(index) end
---@return Quickey[]
function Quickeys:Children() end
---@return Quickey?
function Quickeys:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "CLI"|"DefaultsLoaded"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "CLI"|"DefaultsLoaded"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Quickey
function Quickeys:Get(name, role) end
---@generic T : Quickey
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Quickey
function Quickeys:Create(index, class, undo) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Quickey
function Quickeys:Append(class, undo, count) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Quickey
function Quickeys:Acquire(class, undo) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Quickey
---@deprecated use "Acquire" instead
function Quickeys:Aquire(class, undo) end
---@generic T : Quickey
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Quickey
function Quickeys:Insert(index, class, undo, count) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Quickey
function Quickeys:Find(class, undo) end