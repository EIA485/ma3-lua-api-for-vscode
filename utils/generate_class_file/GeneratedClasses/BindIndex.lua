---@meta

---@class BindIndex: Object
---@field Net integer
---@field Sub-Net integer
---@field Output
Port1 integer
---@field Input
Port1 integer
---@field Output
Port2 integer
---@field Input
Port2 integer
---@field Output
Port3 integer
---@field Input
Port3 integer
---@field Output
Port4 integer
---@field Input
Port4 integer
---@field IsActive boolean
local BindIndex = {
    IsActive="false"
}
---@return "BindIndex"
function BindIndex:GetClass() end
---@return "Object"
function BindIndex:GetChildClass() end
---@return ArtNetNode
function BindIndex:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Net"|"Sub-Net"|"Output
Port1"|"Input
Port1"|"Output
Port2"|"Input
Port2"|"Output
Port3"|"Input
Port3"|"Output
Port4"|"Input
Port4", role: nil): integer
---@overload fun(name: "IsActive", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Net"|"Sub-Net"|"Output
Port1"|"Input
Port1"|"Output
Port2"|"Input
Port2"|"Output
Port3"|"Input
Port3"|"Output
Port4"|"Input
Port4"|"IsActive", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BindIndex:Get(name, role) end
