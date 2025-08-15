---@meta

---@class FixtureTypeLocalLibraryFile: FixtureTypeFile Library cache entry for a local (in the current show) fixture type.
---@field OriginFixtureType FixtureType
---@field FileSize integer
---@field FileTime integer
---@field FileName string
---@field Path string
local FixtureTypeLocalLibraryFile = {}
---@return "FixtureTypeLocalLibraryFile"
function FixtureTypeLocalLibraryFile:GetClass() end
---@return "FixtureTypeLocalModeLibFile"
function FixtureTypeLocalLibraryFile:GetChildClass() end
---@generic T : FixtureTypeLocalLibraryFile
---@param class `T`
---@return boolean
function FixtureTypeLocalLibraryFile:IsClass(class) end
---@param index integer
---@return FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Ptr(index) end
---@return FixtureTypeLocalModeLibFile[]
function FixtureTypeLocalLibraryFile:Children() end
---@return FixtureTypeLocalModeLibFile?
function FixtureTypeLocalLibraryFile:CurrentChild() end
---@return 28
function FixtureTypeLocalLibraryFile:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Index"
---@overload fun(idx: 4): "Count"
---@overload fun(idx: 5): "No"
---@overload fun(idx: 6): "Name"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Objectname"
---@overload fun(idx: 15): "DateModified"
---@overload fun(idx: 16): "Manufacturer"
---@overload fun(idx: 17): "RDMManufacturer"
---@overload fun(idx: 18): "RdmDeviceModel"
---@overload fun(idx: 19): "Lock"
---@overload fun(idx: 20): "Version"
---@overload fun(idx: 21): "ActualSource"
---@overload fun(idx: 22): "Source"
---@overload fun(idx: 23): "OriginFixtureType"
---@overload fun(idx: 24): "FileSize"
---@overload fun(idx: 25): "FileTime"
---@overload fun(idx: 26): "FileName"
---@overload fun(idx: 27): "Path"
function FixtureTypeLocalLibraryFile:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|4|5|15|19|21|22|24|25|26|27): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 6|7|12|14|16|17|18): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 13|23): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function FixtureTypeLocalLibraryFile:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|8|19): "UInt32"
---@overload fun(idx: 6|7|12|14|15|16|17|18|21|22|26|27): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11|24|25): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 20): "Custom"
---@overload fun(idx: 23): "Handle"
function FixtureTypeLocalLibraryFile:PropertyType(idx) end
---@overload fun(name: "OriginFixtureType", role: nil): FixtureType
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Lock"|"FileSize"|"FileTime", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Objectname"|"DateModified"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Source"|"FileName"|"Path", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"DateModified"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source"|"OriginFixtureType"|"FileSize"|"FileTime"|"FileName"|"Path", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Get(name, role) end
---@generic T : FixtureTypeLocalModeLibFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Create(index, class, undo) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Append(class, undo, count) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Acquire(class, undo) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
---@deprecated use "Acquire" instead
function FixtureTypeLocalLibraryFile:Aquire(class, undo) end
---@generic T : FixtureTypeLocalModeLibFile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Insert(index, class, undo, count) end
---@generic T : FixtureTypeLocalModeLibFile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeLocalModeLibFile
function FixtureTypeLocalLibraryFile:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Lock"|"FileSize"|"FileTime", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Objectname"|"DateModified"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Source"|"FileName"|"Path", property_value: string, override_change_level: ChangeLevel?)
function FixtureTypeLocalLibraryFile:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "Source", property_value: FixtureTypeSource)
---@overload fun(property_name: "Source", property_value: FixtureTypeSource)
---@overload fun(property_name: "Used", property_value: integer)
function FixtureTypeLocalLibraryFile:Source(property_name, property_value) end