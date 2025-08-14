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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DefaultsLoaded"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Manufacturer"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Manufacturer"|"DefaultsLoaded"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Gel
function GelPool:Get(name, role) end
---@generic T : Gel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Gel
function GelPool:Create(index, class, undo) end
---@generic T : Gel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Gel
function GelPool:Append(class, undo, count) end
---@generic T : Gel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Gel
function GelPool:Acquire(class, undo) end
---@generic T : Gel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Gel
---@deprecated use "Acquire" instead
function GelPool:Aquire(class, undo) end
---@generic T : Gel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Gel
function GelPool:Insert(index, class, undo, count) end
---@generic T : Gel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Gel
function GelPool:Find(class, undo) end