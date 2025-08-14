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
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "LuminousIntensity"|"Physical", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "LuminousIntensity"|"Physical"|"InterpolationTo"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementPoint
function MeasurementEmitter:Get(name, role) end
---@generic T : Emitters|Emitter
---@param class `T`
---@return T
function MeasurementEmitter:FindParent(class) end