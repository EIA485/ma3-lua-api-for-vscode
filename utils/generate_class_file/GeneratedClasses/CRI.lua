---@meta

---@class CRI: Object
---@field CES integer
---@field ColorRenderingIndex integer
local CRI = {
    CES="CES01",
    ColorRenderingIndex="100"
}
---@return "CRI"
function CRI:GetClass() end
---@return "Object"
function CRI:GetChildClass() end
---@return CRIGroup
function CRI:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"CES"|"ColorRenderingIndex", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"CES"|"ColorRenderingIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CRI:Get(name, role) end
