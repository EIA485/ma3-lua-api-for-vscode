---@meta

---@class UnassignedTagGridFilter: GridContentFilterBase
---@field Target Object
local UnassignedTagGridFilter = {}
---@return "UnassignedTagGridFilter"
function UnassignedTagGridFilter:GetClass() end
---@return "Object"
function UnassignedTagGridFilter:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Target", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UnassignedTagGridFilter:Get(name, role) end
