---@meta

---@class MAPacket: Object
---@field Name string
---@field ID string
---@field Tag string
---@field Type string
---@field HostTypes string
---@field Description string
---@field Version string
---@field Date string
---@field Destination string
---@field DestinationWin string
---@field DestinationMac string
---@field Execute string
---@field Size string
---@field ZipSize string
---@field Sha256sum string
---@field Signature string
---@field Signature2 string
---@field ReleaseFileVersion string
local MAPacket = {}
---@return "MAPacket"
function MAPacket:GetClass() end
---@return "Object"
function MAPacket:GetChildClass() end
---@return ReleaseFile
function MAPacket:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"ID"|"Tag"|"Type"|"HostTypes"|"Description"|"Version"|"Date"|"Destination"|"DestinationWin"|"DestinationMac"|"Execute"|"Size"|"ZipSize"|"Sha256sum"|"Signature"|"Signature2"|"ReleaseFileVersion", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Name"|"ID"|"Tag"|"Type"|"HostTypes"|"Description"|"Version"|"Date"|"Destination"|"DestinationWin"|"DestinationMac"|"Execute"|"Size"|"ZipSize"|"Sha256sum"|"Signature"|"Signature2"|"ReleaseFileVersion", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MAPacket:Get(name, role) end
