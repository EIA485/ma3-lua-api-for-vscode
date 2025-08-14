---@meta

---@class DmxCurves: Object
---@field ApproxInvertibleCount integer
---@field NotInvertibleCount integer
---@field ConflictSummary string
local DmxCurves = {}
---@return "DmxCurves"
function DmxCurves:GetClass() end
---@return "DmxCurve"
function DmxCurves:GetChildClass() end
---@return Patch
function DmxCurves:Parent() end
---@param index integer
---@return DmxCurve
function DmxCurves:Ptr(index) end
---@return DmxCurve[]
function DmxCurves:Children() end
---@return DmxCurve?
function DmxCurves:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ApproxInvertibleCount"|"NotInvertibleCount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "ConflictSummary"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ApproxInvertibleCount"|"NotInvertibleCount"|"ConflictSummary"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DmxCurve
function DmxCurves:Get(name, role) end
---@generic T : DmxCurve
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxCurve
function DmxCurves:Create(index, class, undo) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxCurve
function DmxCurves:Append(class, undo, count) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurve
function DmxCurves:Acquire(class, undo) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurve
---@deprecated use "Acquire" instead
function DmxCurves:Aquire(class, undo) end
---@generic T : DmxCurve
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxCurve
function DmxCurves:Insert(index, class, undo, count) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurve
function DmxCurves:Find(class, undo) end