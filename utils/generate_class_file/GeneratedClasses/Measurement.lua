---@meta

---@class Measurement: Object
---@field Physical number
---@field InterpolationTo MeasurementInterpolation
local Measurement = {
    Physical="100",
    InterpolationTo="Linear"
}
---@return "Measurement"
function Measurement:GetClass() end
---@return "MeasurementPoint"
function Measurement:GetChildClass() end
---@param index integer
---@return MeasurementPoint
function Measurement:Ptr(index) end
---@return MeasurementPoint[]
function Measurement:Children() end
---@return MeasurementPoint?
function Measurement:CurrentChild() end
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Physical", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Physical"|"InterpolationTo"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementPoint
function Measurement:Get(name, role) end
---@generic T : MeasurementPoint
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MeasurementPoint
function Measurement:Create(index, class, undo) end
---@generic T : MeasurementPoint
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MeasurementPoint
function Measurement:Append(class, undo, count) end
---@generic T : MeasurementPoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MeasurementPoint
function Measurement:Acquire(class, undo) end
---@generic T : MeasurementPoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MeasurementPoint
---@deprecated use "Acquire" instead
function Measurement:Aquire(class, undo) end
---@generic T : MeasurementPoint
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MeasurementPoint
function Measurement:Insert(index, class, undo, count) end
---@generic T : MeasurementPoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MeasurementPoint
function Measurement:Find(class, undo) end