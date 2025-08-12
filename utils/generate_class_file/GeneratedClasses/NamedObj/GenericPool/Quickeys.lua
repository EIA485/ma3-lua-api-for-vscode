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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DefaultsLoaded"|"CLI", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultsLoaded"|"CLI", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Quickey
function Quickeys:Get(name, role) end
---@overload fun(index: integer, class: "Quickey", undo: Undo?): Quickey
---@overload fun(index: integer, class: nil, undo: Undo?): Quickey
function Quickeys:Create(index, class, undo) end
---@overload fun(class: "Quickey", undo: Undo?, count: integer?): Quickey
---@overload fun(class: nil, undo: Undo?, count: integer?): Quickey
function Quickeys:Append(class, undo, count) end
---@overload fun(class: "Quickey", undo: Undo?): Quickey
---@overload fun(class: nil, undo: Undo?): Quickey
function Quickeys:Acquire(class, undo) end
---@overload fun(class: "Quickey", undo: Undo?): Quickey
---@overload fun(class: nil, undo: Undo?): Quickey
---@deprecated use "Acquire" instead
function Quickeys:Aquire(class, undo) end
---@overload fun(index: integer, class: "Quickey", undo: Undo?, count: integer?): Quickey
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Quickey
function Quickeys:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Quickey"): Quickey
---@overload fun(name: string, class: nil): Quickey
function Quickeys:Find(name, class) end
---@overload fun(name: string, class: "Quickey"): Quickey
---@overload fun(name: string, class: nil): Object
function Quickeys:FindRecursive(name, class) end
