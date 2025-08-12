---@meta

---@class GelPool: GenericPool A group of gel definitions
---@field Manufacturer string
local GelPool = {}
---@return "GelPool"
function GelPool:GetClass() end
---@return "Gel"
function GelPool:GetChildClass() end
---@return GelPools
function GelPool:Parent() end
---@param index integer
---@return Gel
function GelPool:Ptr(index) end
---@return Gel[]
function GelPool:Children() end
---@return Gel?
function GelPool:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DefaultsLoaded", role: nil): integer
---@overload fun(name: "Manufacturer", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultsLoaded"|"Manufacturer", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Gel
function GelPool:Get(name, role) end
---@overload fun(index: integer, class: "Gel", undo: Undo?): Gel
---@overload fun(index: integer, class: nil, undo: Undo?): Gel
function GelPool:Create(index, class, undo) end
---@overload fun(class: "Gel", undo: Undo?, count: integer?): Gel
---@overload fun(class: nil, undo: Undo?, count: integer?): Gel
function GelPool:Append(class, undo, count) end
---@overload fun(class: "Gel", undo: Undo?): Gel
---@overload fun(class: nil, undo: Undo?): Gel
function GelPool:Acquire(class, undo) end
---@overload fun(class: "Gel", undo: Undo?): Gel
---@overload fun(class: nil, undo: Undo?): Gel
---@deprecated use "Acquire" instead
function GelPool:Aquire(class, undo) end
---@overload fun(index: integer, class: "Gel", undo: Undo?, count: integer?): Gel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Gel
function GelPool:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Gel"): Gel
---@overload fun(name: string, class: nil): Gel
function GelPool:Find(name, class) end
---@overload fun(name: string, class: "Gel"): Gel
---@overload fun(name: string, class: nil): Object
function GelPool:FindRecursive(name, class) end
