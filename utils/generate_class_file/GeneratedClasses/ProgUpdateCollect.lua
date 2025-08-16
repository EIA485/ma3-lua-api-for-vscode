---@meta

---@class ProgUpdateCollect: Object
---@field ObjectList integer[]
local ProgUpdateCollect = {}
---@return "ProgUpdateCollect"
function ProgUpdateCollect:GetClass() end
---@return "ProgUpdate"
function ProgUpdateCollect:GetChildClass() end
---@generic T : ProgUpdateCollect
---@param class `T`
---@return boolean
function ProgUpdateCollect:IsClass(class) end
---@return Cmdline
function ProgUpdateCollect:Parent() end
---@param index integer
---@return ProgUpdate
function ProgUpdateCollect:Ptr(index) end
---@return ProgUpdate[]
function ProgUpdateCollect:Children() end
---@return ProgUpdate?
function ProgUpdateCollect:CurrentChild() end
---@return 16
function ProgUpdateCollect:PropertyCount() end
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
---@overload fun(idx: 15): "ObjectList"
function ProgUpdateCollect:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function ProgUpdateCollect:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Custom"
function ProgUpdateCollect:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "ObjectList", role: nil): integer[]
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ObjectList", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ProgUpdate
function ProgUpdateCollect:Get(name, role) end
---@overload fun(index: integer, class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(index: integer, class: nil, undo: Undo?): ProgUpdate
function ProgUpdateCollect:Create(index, class, undo) end
---@overload fun(class: "ProgUpdate", undo: Undo?, count: integer?): ProgUpdate
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgUpdate
function ProgUpdateCollect:Append(class, undo, count) end
---@overload fun(class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(class: nil, undo: Undo?): ProgUpdate
function ProgUpdateCollect:Acquire(class, undo) end
---@overload fun(class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(class: nil, undo: Undo?): ProgUpdate
---@deprecated use "Acquire" instead
function ProgUpdateCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "ProgUpdate", undo: Undo?, count: integer?): ProgUpdate
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgUpdate
function ProgUpdateCollect:Insert(index, class, undo, count) end
---@overload fun(class: "ProgUpdate", undo: Undo?): ProgUpdate
---@overload fun(class: nil, undo: Undo?): ProgUpdate
function ProgUpdateCollect:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ObjectList", property_value: integer[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function ProgUpdateCollect:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DataPoolNo", property_value: integer)
---@overload fun(property_name: "DataPoolNo", property_value: integer)
---@overload fun(property_name: "DataPoolName"|"Name"|"Parent"|"Number", property_value: string)
function ProgUpdateCollect:SetChildren(property_name, property_value) end