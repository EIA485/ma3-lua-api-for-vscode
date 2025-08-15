---@meta

---@class ShowMetaDataCollect: Object Caches a ShowMetaDataFileCollect on a drive, so it can be displayed in a grid.
---@field ShowDestination Object
local ShowMetaDataCollect = {}
---@return "ShowMetaDataCollect"
function ShowMetaDataCollect:GetClass() end
---@return "MetaFile"
function ShowMetaDataCollect:GetChildClass() end
---@generic T : ShowMetaDataCollect
---@param class `T`
---@return boolean
function ShowMetaDataCollect:IsClass(class) end
---@return Cmdline
function ShowMetaDataCollect:Parent() end
---@param index integer
---@return MetaFile
function ShowMetaDataCollect:Ptr(index) end
---@return MetaFile[]
function ShowMetaDataCollect:Children() end
---@return MetaFile?
function ShowMetaDataCollect:CurrentChild() end
---@return 16
function ShowMetaDataCollect:PropertyCount() end
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
---@overload fun(idx: 15): "ShowDestination"
function ShowMetaDataCollect:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function ShowMetaDataCollect:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Handle"
function ShowMetaDataCollect:PropertyType(idx) end
---@overload fun(name: "ShowDestination", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ShowDestination", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MetaFile
function ShowMetaDataCollect:Get(name, role) end
---@generic T : MetaFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Create(index, class, undo) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MetaFile
function ShowMetaDataCollect:Append(class, undo, count) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Acquire(class, undo) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MetaFile
---@deprecated use "Acquire" instead
function ShowMetaDataCollect:Aquire(class, undo) end
---@generic T : MetaFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MetaFile
function ShowMetaDataCollect:Insert(index, class, undo, count) end
---@generic T : MetaFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MetaFile
function ShowMetaDataCollect:Find(class, undo) end
---@overload fun(property_name: "ShowDestination", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function ShowMetaDataCollect:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "FileSize"|"FileTime", property_value: integer)
---@overload fun(property_name: "Path"|"FileName"|"Description", property_value: string)
function ShowMetaDataCollect:ActiveDisplay(property_name, property_value) end