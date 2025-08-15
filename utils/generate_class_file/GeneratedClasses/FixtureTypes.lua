---@meta

---@class FixtureTypes: Object Container for all types of fixtures in a patch.
---@field SourceIsShow YesNo|boolean
local FixtureTypes = {
    SourceIsShow="0"
}
---@return "FixtureTypes"
function FixtureTypes:GetClass() end
---@return "FixtureType"
function FixtureTypes:GetChildClass() end
---@generic T : FixtureTypes
---@param class `T`
---@return boolean
function FixtureTypes:IsClass(class) end
---@return Patch
function FixtureTypes:Parent() end
---@param index integer
---@return FixtureType
function FixtureTypes:Ptr(index) end
---@return FixtureType[]
function FixtureTypes:Children() end
---@return FixtureType?
function FixtureTypes:CurrentChild() end
---@return 16
function FixtureTypes:PropertyCount() end
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
---@overload fun(idx: 15): "SourceIsShow"
function FixtureTypes:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function FixtureTypes:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function FixtureTypes:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"SourceIsShow", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SourceIsShow", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureType
function FixtureTypes:Get(name, role) end
---@generic T : FixtureType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureType
function FixtureTypes:Create(index, class, undo) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureType
function FixtureTypes:Append(class, undo, count) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureType
function FixtureTypes:Acquire(class, undo) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureType
---@deprecated use "Acquire" instead
function FixtureTypes:Aquire(class, undo) end
---@generic T : FixtureType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureType
function FixtureTypes:Insert(index, class, undo, count) end
---@generic T : FixtureType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureType
function FixtureTypes:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"SourceIsShow", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function FixtureTypes:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Source", property_value: FixtureTypeSource)
---@overload fun(property_name: "SpecialPurpose", property_value: SpecialPurposeFT)
---@overload fun(property_name: "Source", property_value: FixtureTypeSource)
---@overload fun(property_name: "SpecialPurpose", property_value: SpecialPurposeFT)
---@overload fun(property_name: "Universal"|"CanHaveChildren"|"NotUniqueAttributes"|"ShareGlobal"|"CircleInGeometries", property_value: YesNo|boolean)
---@overload fun(property_name: "Used"|"RealUsed", property_value: integer)
---@overload fun(property_name: "LongName"|"ShortName"|"Description"|"Manufacturer", property_value: string)
function FixtureTypes:SpecialPurpose(property_name, property_value) end