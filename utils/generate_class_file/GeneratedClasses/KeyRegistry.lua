---@meta

---@class KeyRegistry: Object All keys stored locally.
---@field Key Key
local KeyRegistry = {}
---@return "KeyRegistry"
function KeyRegistry:GetClass() end
---@return "Key"
function KeyRegistry:GetChildClass() end
---@generic T : KeyRegistry
---@param class `T`
---@return boolean
function KeyRegistry:IsClass(class) end
---@return Root
function KeyRegistry:Parent() end
---@param index integer
---@return Key
function KeyRegistry:Ptr(index) end
---@return Key[]
function KeyRegistry:Children() end
---@return Key?
function KeyRegistry:CurrentChild() end
---@return 16
function KeyRegistry:PropertyCount() end
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
---@overload fun(idx: 15): "Key"
function KeyRegistry:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function KeyRegistry:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Handle"
function KeyRegistry:PropertyType(idx) end
---@overload fun(name: "Key", role: nil): Key
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Key", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Key
function KeyRegistry:Get(name, role) end
---@generic T : Key
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Key
function KeyRegistry:Create(index, class, undo) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Key
function KeyRegistry:Append(class, undo, count) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Key
function KeyRegistry:Acquire(class, undo) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Key
---@deprecated use "Acquire" instead
function KeyRegistry:Aquire(class, undo) end
---@generic T : Key
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Key
function KeyRegistry:Insert(index, class, undo, count) end
---@generic T : Key
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Key
function KeyRegistry:Find(class, undo) end
---@overload fun(property_name: "Key", property_value: Key, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function KeyRegistry:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "BSKey"|"BSLock", property_value: Key128)
---@overload fun(property_name: "RemoteCall"|"Terminal"|"MAnet", property_value: YesNo|boolean)
function KeyRegistry:SetChildren(property_name, property_value) end