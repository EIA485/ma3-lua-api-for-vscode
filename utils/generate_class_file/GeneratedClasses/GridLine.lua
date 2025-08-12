---@meta

---@class GridLine: Object
---@field Visible integer
---@field Size integer
local GridLine = {
    Visible="Yes"
}
---@return "GridLine"
function GridLine:GetClass() end
---@return "Object"
function GridLine:GetChildClass() end
---@return GridColumnConfiguration
function GridLine:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Visible"|"Size", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Visible"|"Size", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridLine:Get(name, role) end
