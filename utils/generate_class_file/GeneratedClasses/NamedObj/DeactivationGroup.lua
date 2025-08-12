---@meta

---@class DeactivationGroup: NamedObj A group of activation groups which deactivate each other ( eg. Pan and Tilt )
---@field ActGroups
Count integer
local DeactivationGroup = {}
---@return "DeactivationGroup"
function DeactivationGroup:GetClass() end
---@return "Object"
function DeactivationGroup:GetChildClass() end
---@return DeactivationGroups
function DeactivationGroup:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"ActGroups
Count", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ActGroups
Count", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DeactivationGroup:Get(name, role) end
