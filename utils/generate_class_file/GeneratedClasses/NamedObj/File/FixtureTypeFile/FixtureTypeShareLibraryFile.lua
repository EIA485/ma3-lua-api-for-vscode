---@meta

---@class FixtureTypeShareLibraryFile: FixtureTypeFile Library cache entry for a remote (Share) fixture type.
---@field OriginFixtureType FixtureType
---@field Uploader string
---@field Creator string
---@field Rating string
---@field Source string
---@field FileSizeString string
---@field FileTimeString string
---@field FileSize string
---@field FileTime string
---@field Version string
local FixtureTypeShareLibraryFile = {
    Uploader="N/A",
    Rating="N/A"
}
---@return "FixtureTypeShareLibraryFile"
function FixtureTypeShareLibraryFile:GetClass() end
---@return "FixtureTypeModeFile"
function FixtureTypeShareLibraryFile:GetChildClass() end
---@generic T : FixtureTypeShareLibraryFile
---@param class `T`
---@return boolean
function FixtureTypeShareLibraryFile:IsClass(class) end
---@return 33
function FixtureTypeShareLibraryFile:PropertyCount() end
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
---@overload fun(idx: 15): "FileName"
---@overload fun(idx: 16): "DateModified"
---@overload fun(idx: 17): "Path"
---@overload fun(idx: 18): "Manufacturer"
---@overload fun(idx: 19): "RDMManufacturer"
---@overload fun(idx: 20): "RdmDeviceModel"
---@overload fun(idx: 21): "Lock"
---@overload fun(idx: 22): "ActualSource"
---@overload fun(idx: 23): "OriginFixtureType"
---@overload fun(idx: 24): "Uploader"
---@overload fun(idx: 25): "Creator"
---@overload fun(idx: 26): "Rating"
---@overload fun(idx: 27): "Source"
---@overload fun(idx: 28): "FileSizeString"
---@overload fun(idx: 29): "FileTimeString"
---@overload fun(idx: 30): "FileSize"
---@overload fun(idx: 31): "FileTime"
---@overload fun(idx: 32): "Version"
function FixtureTypeShareLibraryFile:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|4|5|16|21|22|30|31): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 6|7|12|14|15|17|18|19|20|24|25|26|27|28|29|32): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 13|23): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function FixtureTypeShareLibraryFile:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|8|21): "UInt32"
---@overload fun(idx: 6|7|12|14|15|16|17|18|19|20|22|24|25|26|27|28|29|30|31|32): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 23): "Handle"
function FixtureTypeShareLibraryFile:PropertyType(idx) end
---@overload fun(name: "OriginFixtureType", role: nil): FixtureType
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Lock", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Objectname"|"FileName"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"ActualSource"|"OriginFixtureType"|"Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeModeFile
function FixtureTypeShareLibraryFile:Get(name, role) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Lock", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Objectname"|"FileName"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version", property_value: string, override_change_level: ChangeLevel?)
function FixtureTypeShareLibraryFile:Set(property_name, property_value, override_change_level) end