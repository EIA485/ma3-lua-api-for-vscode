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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Physical", role: nil): number
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Physical"|"InterpolationTo", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MeasurementPoint
function Measurement:Get(name, role) end
---@overload fun(index: integer, class: "MeasurementPoint", undo: Undo?): MeasurementPoint
---@overload fun(index: integer, class: nil, undo: Undo?): MeasurementPoint
function Measurement:Create(index, class, undo) end
---@overload fun(class: "MeasurementPoint", undo: Undo?, count: integer?): MeasurementPoint
---@overload fun(class: nil, undo: Undo?, count: integer?): MeasurementPoint
function Measurement:Append(class, undo, count) end
---@overload fun(class: "MeasurementPoint", undo: Undo?): MeasurementPoint
---@overload fun(class: nil, undo: Undo?): MeasurementPoint
function Measurement:Acquire(class, undo) end
---@overload fun(class: "MeasurementPoint", undo: Undo?): MeasurementPoint
---@overload fun(class: nil, undo: Undo?): MeasurementPoint
---@deprecated use "Acquire" instead
function Measurement:Aquire(class, undo) end
---@overload fun(index: integer, class: "MeasurementPoint", undo: Undo?, count: integer?): MeasurementPoint
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MeasurementPoint
function Measurement:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MeasurementPoint"): MeasurementPoint
---@overload fun(name: string, class: nil): MeasurementPoint
function Measurement:Find(name, class) end
---@overload fun(name: string, class: "MeasurementPoint"): MeasurementPoint
---@overload fun(name: string, class: nil): Object
function Measurement:FindRecursive(name, class) end
