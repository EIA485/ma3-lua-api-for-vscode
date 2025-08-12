---@meta

---@class ActivationGroup: NamedObj A group of attributes which are to be activated together ( eg. Pan and Tilt )
---@field Attrib
Count integer
---@field Deactivation
Group DeactivationGroup
local ActivationGroup = {}
---@return "ActivationGroup"
function ActivationGroup:GetClass() end
---@return "Object"
function ActivationGroup:GetChildClass() end
---@return ActivationGroups
function ActivationGroup:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Attrib
Count", role: nil): integer
---@overload fun(name: "Deactivation
Group", role: nil): DeactivationGroup
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attrib
Count"|"Deactivation
Group", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ActivationGroup:Get(name, role) end
