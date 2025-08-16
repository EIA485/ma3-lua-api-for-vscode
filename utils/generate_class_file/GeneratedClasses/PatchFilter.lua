---@meta

---@class PatchFilter: Object
---@field Target Object
---@field Settings PatchSettings
---@field AllVisible YesNo|boolean
---@field EmptyVisible YesNo|boolean
---@field CustomEntry3Visible YesNo|boolean
---@field AllFilterName string
---@field EmptyFilterName string
---@field CustomEntry3FilterName string
local PatchFilter = {
    AllVisible="Yes",
    EmptyVisible="Yes",
    CustomEntry3Visible="No"
}
---@return "PatchFilter"
function PatchFilter:GetClass() end
---@return "PatchFilterItem"
function PatchFilter:GetChildClass() end
---@generic T : PatchFilter
---@param class `T`
---@return boolean
function PatchFilter:IsClass(class) end
---@return Patch
function PatchFilter:Parent() end
---@param index integer
---@return PatchFilterItem
function PatchFilter:Ptr(index) end
---@return PatchFilterItem[]
function PatchFilter:Children() end
---@return PatchFilterItem?
function PatchFilter:CurrentChild() end
---@return 23
function PatchFilter:PropertyCount() end
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
---@overload fun(idx: 15): "Target"
---@overload fun(idx: 16): "Settings"
---@overload fun(idx: 17): "AllVisible"
---@overload fun(idx: 18): "EmptyVisible"
---@overload fun(idx: 19): "CustomEntry3Visible"
---@overload fun(idx: 20): "AllFilterName"
---@overload fun(idx: 21): "EmptyFilterName"
---@overload fun(idx: 22): "CustomEntry3FilterName"
function PatchFilter:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|17|18|19): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|20|21|22): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function PatchFilter:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|20|21|22): "String"
---@overload fun(idx: 10|11|17|18|19): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16): "Handle"
function PatchFilter:PropertyType(idx) end
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Settings", role: nil): PatchSettings
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"AllVisible"|"EmptyVisible"|"CustomEntry3Visible", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Target"|"Settings"|"AllVisible"|"EmptyVisible"|"CustomEntry3Visible"|"AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PatchFilterItem
function PatchFilter:Get(name, role) end
---@generic T : PatchFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Create(index, class, undo) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PatchFilterItem
function PatchFilter:Append(class, undo, count) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Acquire(class, undo) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
---@deprecated use "Acquire" instead
function PatchFilter:Aquire(class, undo) end
---@generic T : PatchFilterItem
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PatchFilterItem
function PatchFilter:Insert(index, class, undo, count) end
---@generic T : PatchFilterItem
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFilterItem
function PatchFilter:Find(class, undo) end
---@overload fun(property_name: "Target", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Settings", property_value: PatchSettings, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"AllVisible"|"EmptyVisible"|"CustomEntry3Visible", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"AllFilterName"|"EmptyFilterName"|"CustomEntry3FilterName", property_value: string, override_change_level: ChangeLevel?)
function PatchFilter:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "Used", property_value: integer)
function PatchFilter:SetChildren(property_name, property_value) end