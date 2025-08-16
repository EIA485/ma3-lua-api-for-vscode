---@meta

---@class WindowTypes: Object
---@field IconReferencesSet boolean
local WindowTypes = {}
---@return "WindowTypes"
function WindowTypes:GetClass() end
---@return "WindowType"
function WindowTypes:GetChildClass() end
---@generic T : WindowTypes
---@param class `T`
---@return boolean
function WindowTypes:IsClass(class) end
---@return UserProfile
function WindowTypes:Parent() end
---@param index integer
---@return WindowType
function WindowTypes:Ptr(index) end
---@return WindowType[]
function WindowTypes:Children() end
---@return WindowType?
function WindowTypes:CurrentChild() end
---@return 16
function WindowTypes:PropertyCount() end
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
---@overload fun(idx: 15): "IconReferencesSet"
function WindowTypes:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|15): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function WindowTypes:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11|15): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function WindowTypes:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "IconReferencesSet", role: nil): boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IconReferencesSet", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): WindowType
function WindowTypes:Get(name, role) end
---@generic T : WindowType
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowType
function WindowTypes:Create(index, class, undo) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowType
function WindowTypes:Append(class, undo, count) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowType
function WindowTypes:Acquire(class, undo) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowType
---@deprecated use "Acquire" instead
function WindowTypes:Aquire(class, undo) end
---@generic T : WindowType
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowType
function WindowTypes:Insert(index, class, undo, count) end
---@generic T : WindowType
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowType
function WindowTypes:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function WindowTypes:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Type", property_value: WindowTypes)
---@overload fun(property_name: "SnapToBlockSize", property_value: YesNo|boolean)
---@overload fun(property_name: "Category", property_value: WindowCategories)
---@overload fun(property_name: "Category", property_value: WindowCategories)
---@overload fun(property_name: "Type", property_value: WindowTypes)
---@overload fun(property_name: "SnapToBlockSize", property_value: YesNo|boolean)
---@overload fun(property_name: "MinW"|"MinH"|"MaxW"|"MaxH"|"PresetPoolType", property_value: integer)
---@overload fun(property_name: "IndexKeywords"|"WindowName", property_value: string)
function WindowTypes:SetChildren(property_name, property_value) end