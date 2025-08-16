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
---@generic T : Measurement
---@param class `T`
---@return boolean
function Measurement:IsClass(class) end
---@param index integer
---@return MeasurementPoint
function Measurement:Ptr(index) end
---@return MeasurementPoint[]
function Measurement:Children() end
---@return MeasurementPoint?
function Measurement:CurrentChild() end
---@return 17
function Measurement:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "Physical"
---@overload fun(idx: 16): "InterpolationTo"
function Measurement:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: MeasurementInterpolation, ReadOnly: False, ImportIgnore: False}
function Measurement:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Float"
---@overload fun(idx: 16): "UInt8"
function Measurement:PropertyType(idx) end
---@overload fun(name: "InterpolationTo", role: nil): MeasurementInterpolation
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Physical", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Physical"|"InterpolationTo", role: Enums.Roles): string
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
---@overload fun(property_name: "InterpolationTo", property_value: MeasurementInterpolation, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Physical", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Measurement:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "WaveLength"|"Energy", property_value: number)
function Measurement:SetChildren(property_name, property_value) end