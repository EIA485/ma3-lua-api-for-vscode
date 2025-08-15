---@meta

---@class GridColumnConfiguration: NamedObj
---@field DefaultColumns Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable'
---@field AllowAddContent YesNo|boolean
---@field AllowAddNewline YesNo|boolean
---@field AllowMergeChildren YesNo|boolean
---@field UserChangedSorting YesNo|boolean
---@field AllColumnsVisible YesNo|boolean
---@field AllColumnsInvisible YesNo|boolean
---@field InitialWhiteFilter integer
---@field MoveColumns fun(int1: integer, int2: integer, int3: integer, int4: integer) : boolean
local GridColumnConfiguration = {
    AllowAddContent="Yes",
    AllowAddNewline="Yes",
    AllowMergeChildren="Yes"
}
---@return "GridColumnConfiguration"
function GridColumnConfiguration:GetClass() end
---@return "GridLine"
function GridColumnConfiguration:GetChildClass() end
---@generic T : GridColumnConfiguration
---@param class `T`
---@return boolean
function GridColumnConfiguration:IsClass(class) end
---@param index integer
---@return GridLine
function GridColumnConfiguration:Ptr(index) end
---@return GridLine[]
function GridColumnConfiguration:Children() end
---@return GridLine?
function GridColumnConfiguration:CurrentChild() end
---@return 24
function GridColumnConfiguration:PropertyCount() end
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
---@overload fun(idx: 15): "DefaultColumns"
---@overload fun(idx: 16): "AllowAddContent"
---@overload fun(idx: 17): "AllowAddNewline"
---@overload fun(idx: 18): "AllowMergeChildren"
---@overload fun(idx: 19): "UserChangedSorting"
---@overload fun(idx: 20): "AllColumnsVisible"
---@overload fun(idx: 21): "AllColumnsInvisible"
---@overload fun(idx: 22): "InitialWhiteFilter"
---@overload fun(idx: 23): "MoveColumns"
function GridColumnConfiguration:PropertyName(idx) end
---@overload fun(idx: 0|1|2|20|21): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|16|17|18|19): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|22): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|23): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function GridColumnConfiguration:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|22): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|20|21): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Custom"
---@overload fun(idx: 16|17|18|19): "UInt8"
---@overload fun(idx: 23): "Method"
function GridColumnConfiguration:PropertyType(idx) end
---@overload fun(name: "DefaultColumns", role: nil): Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable'
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"AllColumnsVisible"|"AllColumnsInvisible", role: nil): YesNo|boolean
---@overload fun(name: "MoveColumns", role: nil): fun(int1: integer, int2: integer, int3: integer, int4: integer) : boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"InitialWhiteFilter", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultColumns"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"AllColumnsVisible"|"AllColumnsInvisible"|"InitialWhiteFilter"|"MoveColumns", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GridLine
function GridColumnConfiguration:Get(name, role) end
---@overload fun(index: integer, class: "GridLine", undo: Undo?): GridLine
---@overload fun(index: integer, class: nil, undo: Undo?): GridLine
function GridColumnConfiguration:Create(index, class, undo) end
---@overload fun(class: "GridLine", undo: Undo?, count: integer?): GridLine
---@overload fun(class: nil, undo: Undo?, count: integer?): GridLine
function GridColumnConfiguration:Append(class, undo, count) end
---@overload fun(class: "GridLine", undo: Undo?): GridLine
---@overload fun(class: nil, undo: Undo?): GridLine
function GridColumnConfiguration:Acquire(class, undo) end
---@overload fun(class: "GridLine", undo: Undo?): GridLine
---@overload fun(class: nil, undo: Undo?): GridLine
---@deprecated use "Acquire" instead
function GridColumnConfiguration:Aquire(class, undo) end
---@overload fun(index: integer, class: "GridLine", undo: Undo?, count: integer?): GridLine
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GridLine
function GridColumnConfiguration:Insert(index, class, undo, count) end
---@overload fun(class: "GridLine", undo: Undo?): GridLine
---@overload fun(class: nil, undo: Undo?): GridLine
function GridColumnConfiguration:Find(class, undo) end
---@overload fun(property_name: "DefaultColumns", property_value: Property<Container.HashFlatSet<GridLine, Container.MemPtrFlatHashPolicies<GridLine, 0>>>.`vftable', override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"UserChangedSorting"|"AllColumnsVisible"|"AllColumnsInvisible", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"InitialWhiteFilter", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function GridColumnConfiguration:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Visible", property_value: YesNo|boolean)
---@overload fun(property_name: "Size", property_value: integer)
---@overload fun(property_name: "Visible", property_value: YesNo|boolean)
---@overload fun(property_name: "Size", property_value: integer)
function GridColumnConfiguration:Size(property_name, property_value) end