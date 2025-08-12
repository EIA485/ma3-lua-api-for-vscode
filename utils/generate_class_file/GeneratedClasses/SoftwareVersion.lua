---@meta

---@class SoftwareVersion: Object
---@field SoftwareVersionID integer
local SoftwareVersion = {}
---@return "SoftwareVersion"
function SoftwareVersion:GetClass() end
---@return "Object"
function SoftwareVersion:GetChildClass() end
---@return SoftwareVersions
function SoftwareVersion:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"SoftwareVersionID", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SoftwareVersionID", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function SoftwareVersion:Get(name, role) end
