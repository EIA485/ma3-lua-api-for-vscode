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
---@generic T : DmxCurves
---@param class `T`
---@return boolean
function DmxCurves:IsClass(class) end
---@return Patch
function DmxCurves:Parent() end
---@param index integer
---@return DmxCurve
function DmxCurves:Ptr(index) end
---@return DmxCurve[]
function DmxCurves:Children() end
---@return DmxCurve?
function DmxCurves:CurrentChild() end
---@return 18
function DmxCurves:PropertyCount() end
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
---@overload fun(idx: 15): "ApproxInvertibleCount"
---@overload fun(idx: 16): "NotInvertibleCount"
---@overload fun(idx: 17): "ConflictSummary"
function DmxCurves:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15|16|17): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function DmxCurves:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15|16): "UInt32"
---@overload fun(idx: 7|8|13|17): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function DmxCurves:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ApproxInvertibleCount"|"NotInvertibleCount", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"ConflictSummary", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ApproxInvertibleCount"|"NotInvertibleCount"|"ConflictSummary", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DmxCurve
function DmxCurves:Get(name, role) end
---@generic T : DmxCurve
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxCurve
function DmxCurves:Create(index, class, undo) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxCurve
function DmxCurves:Append(class, undo, count) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurve
function DmxCurves:Acquire(class, undo) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurve
---@deprecated use "Acquire" instead
function DmxCurves:Aquire(class, undo) end
---@generic T : DmxCurve
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxCurve
function DmxCurves:Insert(index, class, undo, count) end
---@generic T : DmxCurve
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurve
function DmxCurves:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function DmxCurves:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "UseForVisualization", property_value: YesNo|boolean)
---@overload fun(property_name: "CurveMode", property_value: DmxCurveModes)
---@overload fun(property_name: "MinY"|"MinX"|"MaxX"|"MaxY", property_value: DMXPropertyValue)
---@overload fun(property_name: "CurveMode", property_value: DmxCurveModes)
---@overload fun(property_name: "UseForVisualization", property_value: YesNo|boolean)
---@overload fun(property_name: "CurveIndexOld"|"CurveIndex", property_value: integer)
function DmxCurves:SetChildren(property_name, property_value) end