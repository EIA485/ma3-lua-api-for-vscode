---@meta

---@class CloudMember: Object
---@field Type string
---@field SubType string
---@field Global
IP string
---@field Local
IP string
---@field Station string
---@field Session string
---@field Location string
---@field Version string
local CloudMember = {}
---@return "CloudMember"
function CloudMember:GetClass() end
---@return "Object"
function CloudMember:GetChildClass() end
---@return Cloud
function CloudMember:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"SubType"|"Global
IP"|"Local
IP"|"Station"|"Session"|"Location"|"Version", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"SubType"|"Global
IP"|"Local
IP"|"Station"|"Session"|"Location"|"Version", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CloudMember:Get(name, role) end
