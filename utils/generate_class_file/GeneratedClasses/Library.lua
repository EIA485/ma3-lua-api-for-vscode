---@meta

---@class Library: Object Caches a library on a drive, so it can be displayed in a grid.
---@field Filters string[]
---@field LibraryDestination Object
---@field LibraryPath string
---@field OptionalLibraryPath string
---@field UseCache YesNo|boolean
---@field DumpContent fun()
local Library = {}
---@return "Library"
function Library:GetClass() end
---@return "File"
function Library:GetChildClass() end
---@generic T : Library
---@param class `T`
---@return boolean
function Library:IsClass(class) end
---@return Cmdline
function Library:Parent() end
---@param index integer
---@return File
function Library:Ptr(index) end
---@return File[]
function Library:Children() end
---@return File?
function Library:CurrentChild() end
---@return 21
function Library:PropertyCount() end
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
---@overload fun(idx: 15): "Filters"
---@overload fun(idx: 16): "LibraryDestination"
---@overload fun(idx: 17): "LibraryPath"
---@overload fun(idx: 18): "OptionalLibraryPath"
---@overload fun(idx: 19): "UseCache"
---@overload fun(idx: 20): "DumpContent"
function Library:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|19): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15|17|18): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|16|20): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function Library:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|17|18): "String"
---@overload fun(idx: 10|11|19): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Custom"
---@overload fun(idx: 16): "Handle"
---@overload fun(idx: 20): "Method"
function Library:PropertyType(idx) end
---@overload fun(name: "LibraryDestination", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"UseCache", role: nil): YesNo|boolean
---@overload fun(name: "DumpContent", role: nil): fun()
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"LibraryPath"|"OptionalLibraryPath", role: nil): string
---@overload fun(name: "Filters", role: nil): string[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Filters"|"LibraryDestination"|"LibraryPath"|"OptionalLibraryPath"|"UseCache"|"DumpContent", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): File
function Library:Get(name, role) end
---@generic T : File
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): File
function Library:Create(index, class, undo) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): File
function Library:Append(class, undo, count) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): File
function Library:Acquire(class, undo) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): File
---@deprecated use "Acquire" instead
function Library:Aquire(class, undo) end
---@generic T : File
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): File
function Library:Insert(index, class, undo, count) end
---@generic T : File
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): File
function Library:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"UseCache", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"LibraryPath"|"OptionalLibraryPath", property_value: string, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Filters", property_value: string[], override_change_level: ChangeLevel?)
function Library:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "TooBig", property_value: YesNo|boolean)
---@overload fun(property_name: "TooBig", property_value: YesNo|boolean)
---@overload fun(property_name: "Lock"|"FileSize"|"FileSize"|"FileTime"|"FileSize", property_value: integer)
---@overload fun(property_name: "FileSize"|"FileTime"|"FileName"|"Objectname"|"Path"|"FileName"|"DateModified"|"Path"|"CachedObjFileName"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Uploader"|"Creator"|"ActualSource"|"Rating"|"Source"|"Source"|"Version"|"FileSizeString"|"FileTimeString", property_value: string)
function Library:SetChildren(property_name, property_value) end