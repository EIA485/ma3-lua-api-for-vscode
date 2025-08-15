---@meta

---@class Mouse: Device
---@field AbsPos ItemGroupPosition
---@field DisplayIndex integer
---@field Cursor string
---@field Visible YesNo|boolean
---@field AutoHideInterval integer
local Mouse = {
    Visible="No",
    AutoHideInterval="0"
}
---@return "Mouse"
function Mouse:GetClass() end
---@return "Object"
function Mouse:GetChildClass() end
---@generic T : Mouse
---@param class `T`
---@return boolean
function Mouse:IsClass(class) end
---@return MouseCollect
function Mouse:Parent() end
---@return 20
function Mouse:PropertyCount() end
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
---@overload fun(idx: 15): "AbsPos"
---@overload fun(idx: 16): "DisplayIndex"
---@overload fun(idx: 17): "Cursor"
---@overload fun(idx: 18): "Visible"
---@overload fun(idx: 19): "AutoHideInterval"
function Mouse:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|18): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|16): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|17|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Mouse:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|16): "UInt32"
---@overload fun(idx: 7|8|13|17): "String"
---@overload fun(idx: 10|11|18): "Bool"
---@overload fun(idx: 12|19): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "2Ints"
function Mouse:PropertyType(idx) end
---@overload fun(name: "AbsPos", role: nil): ItemGroupPosition
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Visible", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"DisplayIndex"|"AutoHideInterval", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Cursor", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"AbsPos"|"DisplayIndex"|"Cursor"|"Visible"|"AutoHideInterval", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Mouse:Get(name, role) end
---@generic T : MouseCollect
---@param class `T`
---@return T
function Mouse:FindParent(class) end
---@overload fun(property_name: "AbsPos", property_value: ItemGroupPosition, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Visible", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"DisplayIndex"|"AutoHideInterval", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Cursor", property_value: string, override_change_level: ChangeLevel?)
function Mouse:Set(property_name, property_value, override_change_level) end