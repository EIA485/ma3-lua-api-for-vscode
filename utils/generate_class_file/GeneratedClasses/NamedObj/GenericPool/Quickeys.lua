---@meta

---@class Quickeys: GenericPool
---@field CLI YesNo|boolean
local Quickeys = {
    CLI="0"
}
---@return "Quickeys"
function Quickeys:GetClass() end
---@return "Quickey"
function Quickeys:GetChildClass() end
---@generic T : Quickeys
---@param class `T`
---@return boolean
function Quickeys:IsClass(class) end
---@return Pool
function Quickeys:Parent() end
---@param index integer
---@return Quickey
function Quickeys:Ptr(index) end
---@return Quickey[]
function Quickeys:Children() end
---@return Quickey?
function Quickeys:CurrentChild() end
---@return 17
function Quickeys:PropertyCount() end
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
---@overload fun(idx: 15): "DefaultsLoaded"
---@overload fun(idx: 16): "CLI"
function Quickeys:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15|16): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Quickeys:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|16): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt8"
function Quickeys:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DefaultsLoaded"|"CLI", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultsLoaded"|"CLI", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Quickey
function Quickeys:Get(name, role) end
---@generic T : Quickey
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Quickey
function Quickeys:Create(index, class, undo) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Quickey
function Quickeys:Append(class, undo, count) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Quickey
function Quickeys:Acquire(class, undo) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Quickey
---@deprecated use "Acquire" instead
function Quickeys:Aquire(class, undo) end
---@generic T : Quickey
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Quickey
function Quickeys:Insert(index, class, undo, count) end
---@generic T : Quickey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Quickey
function Quickeys:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"DefaultsLoaded"|"CLI", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Quickeys:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Code", property_value: VirtualKeyCode)
---@overload fun(property_name: "Code", property_value: VirtualKeyCode)
function Quickeys:Code(property_name, property_value) end