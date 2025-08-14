---@meta

---@class MeasurementFilter: Measurement
---@field Transmission number
local MeasurementFilter = {
    Transmission="0"
}
---@return "MeasurementFilter"
function MeasurementFilter:GetClass() end
---@return "MeasurementPoint"
function MeasurementFilter:GetChildClass() end
---@return FTFilter
function MeasurementFilter:Parent() end
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Transmission"|"Physical", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Transmission"|"Physical"|"InterpolationTo"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementPoint
function MeasurementFilter:Get(name, role) end
---@generic T : FTFilter|FTFilters
---@param class `T`
---@return T
function MeasurementFilter:FindParent(class) end