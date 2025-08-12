---@meta

---@class MeasurementEmitter: Measurement
---@field LuminousIntensity number
local MeasurementEmitter = {
    LuminousIntensity="0"
}
---@return "MeasurementEmitter"
function MeasurementEmitter:GetClass() end
---@return "MeasurementPoint"
function MeasurementEmitter:GetChildClass() end
---@return Emitter
function MeasurementEmitter:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Physical", role: nil): number
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "LuminousIntensity", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Physical"|"InterpolationTo"|"LuminousIntensity", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementPoint
function MeasurementEmitter:Get(name, role) end
