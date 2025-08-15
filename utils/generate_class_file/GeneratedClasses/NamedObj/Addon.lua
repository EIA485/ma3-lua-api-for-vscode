---@meta

---@class Addon: NamedObj
---@field Author string
---@field Version string
---@field Data8 integer[]
---@field DataIP Manet.IP4[]
---@field Data64 integer[]
---@field DataDouble number[]
---@field DataString string[]
local Addon = {}
---@return "Addon"
function Addon:GetClass() end
---@return "AddonApi"
function Addon:GetChildClass() end
---@generic T : Addon
---@param class `T`
---@return boolean
function Addon:IsClass(class) end
---@return Addons
function Addon:Parent() end
---@param index integer
---@return AddonApi
function Addon:Ptr(index) end
---@return AddonApi[]
function Addon:Children() end
---@return AddonApi?
function Addon:CurrentChild() end
---@return 22
function Addon:PropertyCount() end
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
---@overload fun(idx: 15): "Author"
---@overload fun(idx: 16): "Version"
---@overload fun(idx: 17): "Data8"
---@overload fun(idx: 18): "DataIP"
---@overload fun(idx: 19): "Data64"
---@overload fun(idx: 20): "DataDouble"
---@overload fun(idx: 21): "DataString"
function Addon:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|16): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|17|18|19|20|21): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Addon:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15|16): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 17|18|19|20|21): "Custom"
function Addon:PropertyType(idx) end
---@overload fun(name: "DataIP", role: nil): Manet.IP4[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Data8"|"Data64", role: nil): integer[]
---@overload fun(name: "DataDouble", role: nil): number[]
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Author"|"Version", role: nil): string
---@overload fun(name: "DataString", role: nil): string[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Author"|"Version"|"Data8"|"DataIP"|"Data64"|"DataDouble"|"DataString", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): AddonApi
function Addon:Get(name, role) end
---@generic T : AddonApi
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): AddonApi
function Addon:Create(index, class, undo) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): AddonApi
function Addon:Append(class, undo, count) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AddonApi
function Addon:Acquire(class, undo) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AddonApi
---@deprecated use "Acquire" instead
function Addon:Aquire(class, undo) end
---@generic T : AddonApi
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AddonApi
function Addon:Insert(index, class, undo, count) end
---@generic T : AddonApi
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AddonApi
function Addon:Find(class, undo) end
---@overload fun(property_name: "DataIP", property_value: Manet.IP4[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Data8"|"Data64", property_value: integer[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "DataDouble", property_value: number[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Author"|"Version", property_value: string, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DataString", property_value: string[], override_change_level: ChangeLevel?)
function Addon:Set(property_name, property_value, override_change_level) end
function Addon:Size(property_name, property_value) end