---@meta

---@class Wheel: NamedObj Describes a physical gobo or color wheel.
---@field AllowShortcut YesNo|boolean
local Wheel = {
    AllowShortcut="No"
}
---@return "Wheel"
function Wheel:GetClass() end
---@return "Slot"
function Wheel:GetChildClass() end
---@generic T : Wheel
---@param class `T`
---@return boolean
function Wheel:IsClass(class) end
---@return Wheels
function Wheel:Parent() end
---@param index integer
---@return Slot
function Wheel:Ptr(index) end
---@return Slot[]
function Wheel:Children() end
---@return Slot?
function Wheel:CurrentChild() end
---@return 16
function Wheel:PropertyCount() end
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
---@overload fun(idx: 15): "AllowShortcut"
function Wheel:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Wheel:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function Wheel:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"AllowShortcut", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"AllowShortcut", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Slot
function Wheel:Get(name, role) end
---@generic T : Slot
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Slot
function Wheel:Create(index, class, undo) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Slot
function Wheel:Append(class, undo, count) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Slot
function Wheel:Acquire(class, undo) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Slot
---@deprecated use "Acquire" instead
function Wheel:Aquire(class, undo) end
---@generic T : Slot
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Slot
function Wheel:Insert(index, class, undo, count) end
---@generic T : Slot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Slot
function Wheel:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"AllowShortcut", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Wheel:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Filter", property_value: FTFilter)
---@overload fun(property_name: "AnimationSystemRadius", property_value: number)
---@overload fun(property_name: "Filter", property_value: FTFilter)
---@overload fun(property_name: "AnimationSystemP1"|"AnimationSystemP3"|"AnimationSystemP2", property_value: Math.Vector2<float>)
---@overload fun(property_name: "AnimationSystemRadius", property_value: number)
function Wheel:AnimationSystemRadius(property_name, property_value) end