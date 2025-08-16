---@meta

---@class Tag: GuidObject
---@field TagType TagType
---@field ForwardCommands YesNo|boolean
---@field DummyAssignable integer
local Tag = {
    TagType="None",
    ForwardCommands="Yes"
}
---@return "Tag"
function Tag:GetClass() end
---@return "TagReference"
function Tag:GetChildClass() end
---@generic T : Tag
---@param class `T`
---@return boolean
function Tag:IsClass(class) end
---@return Tags
function Tag:Parent() end
---@param index integer
---@return TagReference
function Tag:Ptr(index) end
---@return TagReference[]
function Tag:Children() end
---@return TagReference?
function Tag:CurrentChild() end
---@return 23
function Tag:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "TagType"
---@overload fun(idx: 21): "ForwardCommands"
---@overload fun(idx: 22): "DummyAssignable"
function Tag:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|21): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: TagType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 22): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function Tag:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|21): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 20|22): "UInt8"
function Tag:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "TagType", role: nil): TagType
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ForwardCommands", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"DummyAssignable", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"TagType"|"ForwardCommands"|"DummyAssignable", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TagReference
function Tag:Get(name, role) end
---@generic T : TagReference
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TagReference
function Tag:Create(index, class, undo) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TagReference
function Tag:Append(class, undo, count) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagReference
function Tag:Acquire(class, undo) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagReference
---@deprecated use "Acquire" instead
function Tag:Aquire(class, undo) end
---@generic T : TagReference
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TagReference
function Tag:Insert(index, class, undo, count) end
---@generic T : TagReference
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TagReference
function Tag:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TagType", property_value: TagType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"ForwardCommands", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function Tag:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "No", property_value: integer)
---@overload fun(property_name: "Protect", property_value: YesNo|boolean)
---@overload fun(property_name: "Class", property_value: string)
---@overload fun(property_name: "DataPool"|"ObjectHandle", property_value: Object)
---@overload fun(property_name: "Protect", property_value: YesNo|boolean)
---@overload fun(property_name: "No", property_value: integer)
---@overload fun(property_name: "Class", property_value: string)
function Tag:SetChildren(property_name, property_value) end