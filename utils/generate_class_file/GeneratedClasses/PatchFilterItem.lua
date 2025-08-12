---@meta

---@class PatchFilterItem: Object
---@field Used integer
local PatchFilterItem = {
    Used="0"
}
---@return "PatchFilterItem"
function PatchFilterItem:GetClass() end
---@return "Object"
function PatchFilterItem:GetChildClass() end
---@return PatchFilter
function PatchFilterItem:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Used", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Used", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PatchFilterItem:Get(name, role) end
