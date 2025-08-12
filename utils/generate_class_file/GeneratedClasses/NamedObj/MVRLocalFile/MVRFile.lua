---@meta

---@class MVRFile: MVRLocalFile
---@field OnStations string
---@field Size integer
---@field VersionMajor integer
---@field VersionMinor integer
---@field UUID MVR.UUID
local MVRFile = {
    VersionMajor="1",
    VersionMinor="0"
}
---@return "MVRFile"
function MVRFile:GetClass() end
---@return "Object"
function MVRFile:GetChildClass() end
---@return MVRFileCollect
function MVRFile:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Comment"|"OnStations", role: nil): string
---@overload fun(name: "Size"|"VersionMajor"|"VersionMinor", role: nil): integer
---@overload fun(name: "UUID", role: nil): MVR.UUID
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Comment"|"OnStations"|"Size"|"VersionMajor"|"VersionMinor"|"UUID", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MVRFile:Get(name, role) end
