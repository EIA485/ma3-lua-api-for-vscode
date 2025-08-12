---@meta

---@class RDMParameterNotification: RDMAbsentNotification Ask Andrii
---@field PID RDMPID
local RDMParameterNotification = {}
---@return "RDMParameterNotification"
function RDMParameterNotification:GetClass() end
---@return "ValueBase"
function RDMParameterNotification:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "PID", role: nil): RDMPID
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PID", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ValueBase
function RDMParameterNotification:Get(name, role) end
