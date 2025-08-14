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
---@overload fun(name: "OriginFixtureType", role: nil): FixtureType
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Lock"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"ActualSource"|"Objectname"|"FileName"|"DateModified"|"Path"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "OriginFixtureType"|"Uploader"|"Creator"|"Rating"|"Source"|"FileSizeString"|"FileTimeString"|"FileSize"|"FileTime"|"Version"|"Manufacturer"|"RDMManufacturer"|"RdmDeviceModel"|"Lock"|"ActualSource"|"Objectname"|"FileName"|"DateModified"|"Path"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FixtureTypeModeFile
function FixtureTypeShareLibraryFile:Get(name, role) end