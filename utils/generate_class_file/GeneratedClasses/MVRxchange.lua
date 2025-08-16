---@meta

---@class MVRxchange: Object
---@field Enabled YesNo|boolean
---@field GroupName string
---@field Interface string
local MVRxchange = {
    Enabled="No",
    GroupName="Default"
}
---@return "MVRxchange"
function MVRxchange:GetClass() end
---@return "MVRLocalFile"
function MVRxchange:GetChildClass() end
---@generic T : MVRxchange
---@param class `T`
---@return boolean
function MVRxchange:IsClass(class) end
---@param index integer
---@return MVRLocalFile
function MVRxchange:Ptr(index) end
---@return MVRLocalFile[]
function MVRxchange:Children() end
---@return MVRLocalFile?
function MVRxchange:CurrentChild() end
---@return 18
function MVRxchange:PropertyCount() end
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
---@overload fun(idx: 15): "Enabled"
---@overload fun(idx: 16): "GroupName"
---@overload fun(idx: 17): "Interface"
function MVRxchange:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16|17): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function MVRxchange:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13|16|17): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function MVRxchange:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Enabled", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"GroupName"|"Interface", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Enabled"|"GroupName"|"Interface", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MVRLocalFile
function MVRxchange:Get(name, role) end
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(index: integer, class: nil, undo: Undo?): MVRLocalFile
function MVRxchange:Create(index, class, undo) end
---@overload fun(class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?, count: integer?): MVRLocalFile
function MVRxchange:Append(class, undo, count) end
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?): MVRLocalFile
function MVRxchange:Acquire(class, undo) end
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?): MVRLocalFile
---@deprecated use "Acquire" instead
function MVRxchange:Aquire(class, undo) end
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MVRLocalFile
function MVRxchange:Insert(index, class, undo, count) end
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: nil, undo: Undo?): MVRLocalFile
function MVRxchange:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Enabled", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"GroupName"|"Interface", property_value: string, override_change_level: ChangeLevel?)
function MVRxchange:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Comment", property_value: string)
---@overload fun(property_name: "Comment", property_value: string)
function MVRxchange:SetChildren(property_name, property_value) end