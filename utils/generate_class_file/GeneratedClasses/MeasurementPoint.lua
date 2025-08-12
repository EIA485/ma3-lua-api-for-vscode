---@meta

---@class MeasurementPoint: Object
---@field WaveLength number
---@field Energy number
local MeasurementPoint = {
    WaveLength="0",
    Energy="0"
}
---@return "MeasurementPoint"
function MeasurementPoint:GetClass() end
---@return "Object"
function MeasurementPoint:GetChildClass() end
---@return Measurement
function MeasurementPoint:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "WaveLength"|"Energy", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"WaveLength"|"Energy", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MeasurementPoint:Get(name, role) end
