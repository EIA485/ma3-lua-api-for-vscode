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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"ApproxInvertibleCount"|"NotInvertibleCount", role: nil): integer
---@overload fun(name: "ConflictSummary", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ApproxInvertibleCount"|"NotInvertibleCount"|"ConflictSummary", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DmxCurve
function DmxCurves:Get(name, role) end
---@overload fun(index: integer, class: "DmxCurve", undo: Undo?): DmxCurve
---@overload fun(index: integer, class: nil, undo: Undo?): DmxCurve
function DmxCurves:Create(index, class, undo) end
---@overload fun(class: "DmxCurve", undo: Undo?, count: integer?): DmxCurve
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxCurve
function DmxCurves:Append(class, undo, count) end
---@overload fun(class: "DmxCurve", undo: Undo?): DmxCurve
---@overload fun(class: nil, undo: Undo?): DmxCurve
function DmxCurves:Acquire(class, undo) end
---@overload fun(class: "DmxCurve", undo: Undo?): DmxCurve
---@overload fun(class: nil, undo: Undo?): DmxCurve
---@deprecated use "Acquire" instead
function DmxCurves:Aquire(class, undo) end
---@overload fun(index: integer, class: "DmxCurve", undo: Undo?, count: integer?): DmxCurve
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxCurve
function DmxCurves:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DmxCurve"): DmxCurve
---@overload fun(name: string, class: nil): DmxCurve
function DmxCurves:Find(name, class) end
---@overload fun(name: string, class: "DmxCurve"): DmxCurve
---@overload fun(name: string, class: nil): Object
function DmxCurves:FindRecursive(name, class) end
