---@meta

---@class FTFilter: NamedObj
---@field Color Colors.RGB<float>
---@field SubtractiveIntensity number
local FTFilter = {
    Color="1,1,1,1",
    SubtractiveIntensity="0.5"
}
---@return "FTFilter"
function FTFilter:GetClass() end
---@return "MeasurementFilter"
function FTFilter:GetChildClass() end
---@return FTFilters
function FTFilter:Parent() end
---@param index integer
---@return MeasurementFilter
function FTFilter:Ptr(index) end
---@return MeasurementFilter[]
function FTFilter:Children() end
---@return MeasurementFilter?
function FTFilter:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "SubtractiveIntensity", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Color"|"SubtractiveIntensity", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementFilter
function FTFilter:Get(name, role) end
---@overload fun(index: integer, class: "MeasurementFilter", undo: Undo?): MeasurementFilter
---@overload fun(index: integer, class: nil, undo: Undo?): MeasurementFilter
function FTFilter:Create(index, class, undo) end
---@overload fun(class: "MeasurementFilter", undo: Undo?, count: integer?): MeasurementFilter
---@overload fun(class: nil, undo: Undo?, count: integer?): MeasurementFilter
function FTFilter:Append(class, undo, count) end
---@overload fun(class: "MeasurementFilter", undo: Undo?): MeasurementFilter
---@overload fun(class: nil, undo: Undo?): MeasurementFilter
function FTFilter:Acquire(class, undo) end
---@overload fun(class: "MeasurementFilter", undo: Undo?): MeasurementFilter
---@overload fun(class: nil, undo: Undo?): MeasurementFilter
---@deprecated use "Acquire" instead
function FTFilter:Aquire(class, undo) end
---@overload fun(index: integer, class: "MeasurementFilter", undo: Undo?, count: integer?): MeasurementFilter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MeasurementFilter
function FTFilter:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MeasurementFilter"): MeasurementFilter
---@overload fun(name: string, class: nil): MeasurementFilter
function FTFilter:Find(name, class) end
---@overload fun(name: string, class: "MeasurementFilter"): MeasurementFilter
---@overload fun(name: string, class: nil): Object
function FTFilter:FindRecursive(name, class) end
