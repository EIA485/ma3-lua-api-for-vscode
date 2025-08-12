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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Objectname"|"FileName", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel", role: nil): string
---@overload fun(name: "Lock", role: nil): integer
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "ActualSource"|"Source", role: nil): string
---@overload fun(name: "OriginFixtureType", role: nil): FixtureType
---@overload fun(name: "Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Objectname"|"FileName"|"FileSize"|"DateModified"|"Path"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"Version"|"ActualSource"|"Source"|"OriginFixtureType"|"Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeModeFile
function FixtureTypeShareLibraryFile:Get(name, role) end
