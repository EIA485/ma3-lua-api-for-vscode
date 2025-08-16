---@meta

---@class FixtureFilterRules: Object
---@field Not YesNo|boolean
local FixtureFilterRules = {
    Not="No"
}
---@return "FixtureFilterRules"
function FixtureFilterRules:GetClass() end
---@return "FilterRuleFixture"
function FixtureFilterRules:GetChildClass() end
---@generic T : FixtureFilterRules
---@param class `T`
---@return boolean
function FixtureFilterRules:IsClass(class) end
---@return World
function FixtureFilterRules:Parent() end
---@param index integer
---@return FilterRuleFixture
function FixtureFilterRules:Ptr(index) end
---@return FilterRuleFixture[]
function FixtureFilterRules:Children() end
---@return FilterRuleFixture?
function FixtureFilterRules:CurrentChild() end
---@return 16
function FixtureFilterRules:PropertyCount() end
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
---@overload fun(idx: 15): "Not"
function FixtureFilterRules:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function FixtureFilterRules:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function FixtureFilterRules:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Not", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Not", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FilterRuleFixture
function FixtureFilterRules:Get(name, role) end
---@generic T : FilterRuleFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Create(index, class, undo) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FilterRuleFixture
function FixtureFilterRules:Append(class, undo, count) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Acquire(class, undo) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
---@deprecated use "Acquire" instead
function FixtureFilterRules:Aquire(class, undo) end
---@generic T : FilterRuleFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FilterRuleFixture
function FixtureFilterRules:Insert(index, class, undo, count) end
---@generic T : FilterRuleFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FilterRuleFixture
function FixtureFilterRules:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Not", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function FixtureFilterRules:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Invert", property_value: Yes|true)
---@overload fun(property_name: "Invert", property_value: Yes|true)
---@overload fun(property_name: "FilterValue"|"FilterValue", property_value: string)
function FixtureFilterRules:SetChildren(property_name, property_value) end