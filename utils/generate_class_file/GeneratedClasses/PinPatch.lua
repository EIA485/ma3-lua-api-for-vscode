---@meta

---@class PinPatch: Object
---@field FromPin integer
---@field ToPin integer
---@field ToWiringObject WiringObject
local PinPatch = {}
---@return "PinPatch"
function PinPatch:GetClass() end
---@return "Object"
function PinPatch:GetChildClass() end
---@return WiringObject
function PinPatch:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"FromPin"|"ToPin", role: nil): integer
---@overload fun(name: "ToWiringObject", role: nil): WiringObject
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FromPin"|"ToPin"|"ToWiringObject", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PinPatch:Get(name, role) end
