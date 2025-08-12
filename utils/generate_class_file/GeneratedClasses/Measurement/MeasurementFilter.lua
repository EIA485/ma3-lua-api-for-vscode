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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Physical", role: nil): number
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "Transmission", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Physical"|"InterpolationTo"|"Transmission", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementPoint
function MeasurementFilter:Get(name, role) end
