---@meta

---@class DmxCurve: GuidObject
---@field CurveMode DmxCurveModes
---@field MinX DMXPropertyValue
---@field MinY DMXPropertyValue
---@field MaxX DMXPropertyValue
---@field MaxY DMXPropertyValue
---@field CurveIndex integer
---@field CurveIndexOld integer
---@field UseForVisualization YesNo|boolean
local DmxCurve = {
    UseForVisualization="Yes"
}
---@return "DmxCurve"
function DmxCurve:GetClass() end
---@return "DmxCurvePoint"
function DmxCurve:GetChildClass() end
---@generic T : DmxCurve
---@param class `T`
---@return boolean
function DmxCurve:IsClass(class) end
---@return DmxCurves
function DmxCurve:Parent() end
---@param index integer
---@return DmxCurvePoint
function DmxCurve:Ptr(index) end
---@return DmxCurvePoint[]
function DmxCurve:Children() end
---@return DmxCurvePoint?
function DmxCurve:CurrentChild() end
---@return 28
function DmxCurve:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "CurveMode"
---@overload fun(idx: 21): "MinX"
---@overload fun(idx: 22): "MinY"
---@overload fun(idx: 23): "MaxX"
---@overload fun(idx: 24): "MaxY"
---@overload fun(idx: 25): "CurveIndex"
---@overload fun(idx: 26): "CurveIndexOld"
---@overload fun(idx: 27): "UseForVisualization"
function DmxCurve:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|27): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|25|26): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|21|22|23|24): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: DmxCurveModes, ReadOnly: False, ImportIgnore: False}
function DmxCurve:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|21|22|23|24|25|26): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 20|27): "UInt8"
function DmxCurve:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "MinX"|"MinY"|"MaxX"|"MaxY", role: nil): DMXPropertyValue
---@overload fun(name: "CurveMode", role: nil): DmxCurveModes
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"UseForVisualization", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"CurveIndex"|"CurveIndexOld", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"CurveMode"|"MinX"|"MinY"|"MaxX"|"MaxY"|"CurveIndex"|"CurveIndexOld"|"UseForVisualization", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DmxCurvePoint
function DmxCurve:Get(name, role) end
---@generic T : DmxCurvePoint
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Create(index, class, undo) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxCurvePoint
function DmxCurve:Append(class, undo, count) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Acquire(class, undo) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
---@deprecated use "Acquire" instead
function DmxCurve:Aquire(class, undo) end
---@generic T : DmxCurvePoint
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxCurvePoint
function DmxCurve:Insert(index, class, undo, count) end
---@generic T : DmxCurvePoint
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxCurvePoint
function DmxCurve:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MinX"|"MinY"|"MaxX"|"MaxY", property_value: DMXPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "CurveMode", property_value: DmxCurveModes, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"UseForVisualization", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"CurveIndex"|"CurveIndexOld", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function DmxCurve:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Out"|"In", property_value: DMXPropertyValue)
---@overload fun(property_name: "Decel"|"Accel", property_value: ValueTPropertyValue)
function DmxCurve:Wait(property_name, property_value) end