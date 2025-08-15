---@meta

---@class CachedObjLibraryFile: File Library cache entry for a fixture type.
---@field CachedObjFileName string
---@field FileSize integer
---@field TooBig YesNo|boolean
local CachedObjLibraryFile = {
    TooBig="No"
}
---@return "CachedObjLibraryFile"
function CachedObjLibraryFile:GetClass() end
---@return "Object"
function CachedObjLibraryFile:GetChildClass() end
---@generic T : CachedObjLibraryFile
---@param class `T`
---@return boolean
function CachedObjLibraryFile:IsClass(class) end
---@return 22
function CachedObjLibraryFile:PropertyCount() end
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
---@overload fun(idx: 15): "Objectname"
---@overload fun(idx: 16): "FileName"
---@overload fun(idx: 17): "DateModified"
---@overload fun(idx: 18): "Path"
---@overload fun(idx: 19): "CachedObjFileName"
---@overload fun(idx: 20): "FileSize"
---@overload fun(idx: 21): "TooBig"
function CachedObjLibraryFile:PropertyName(idx) end
---@overload fun(idx: 0|1|2|21): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|17|19|20): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|18): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function CachedObjLibraryFile:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|15|16|17|18|19): "String"
---@overload fun(idx: 10|11|21): "Bool"
---@overload fun(idx: 12|20): "UInt64"
---@overload fun(idx: 14): "Int64"
function CachedObjLibraryFile:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"TooBig", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FileSize", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Objectname"|"FileName"|"DateModified"|"Path"|"CachedObjFileName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"DateModified"|"Path"|"CachedObjFileName"|"FileSize"|"TooBig", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CachedObjLibraryFile:Get(name, role) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"TooBig", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FileSize", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Objectname"|"FileName"|"DateModified"|"Path"|"CachedObjFileName", property_value: string, override_change_level: ChangeLevel?)
function CachedObjLibraryFile:Set(property_name, property_value, override_change_level) end