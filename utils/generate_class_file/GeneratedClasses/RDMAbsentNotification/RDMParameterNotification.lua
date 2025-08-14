---@meta

---@class RDMParameterNotification: RDMAbsentNotification Ask Andrii
---@field PID RDMPID
local RDMParameterNotification = {}
---@return "RDMParameterNotification"
function RDMParameterNotification:GetClass() end
---@return "ValueBase"
function RDMParameterNotification:GetChildClass() end
---@overload fun(name: "PID", role: nil): RDMPID
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "PID"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ValueBase
function RDMParameterNotification:Get(name, role) end