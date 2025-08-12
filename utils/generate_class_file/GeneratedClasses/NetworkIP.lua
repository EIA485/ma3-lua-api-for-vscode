---@meta

---@class NetworkIP: Object
---@field IP string
---@field Mask string
local NetworkIP = {}
---@return "NetworkIP"
function NetworkIP:GetClass() end
---@return "Object"
function NetworkIP:GetChildClass() end
---@return Interface
function NetworkIP:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "IP"|"Mask", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"IP"|"Mask", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function NetworkIP:Get(name, role) end
