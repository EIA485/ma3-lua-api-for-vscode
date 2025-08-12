---@meta

---@class Proxy: Object
---@field PrimaryAssignmentChanged integer
---@field SecondaryAssignmentChanged integer
---@field Exec Exec
local Proxy = {}
---@return "Proxy"
function Proxy:GetClass() end
---@return "Object"
function Proxy:GetChildClass() end
---@return Page
function Proxy:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged", role: nil): integer
---@overload fun(name: "Exec", role: nil): Exec
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged"|"Exec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Proxy:Get(name, role) end
