---@meta

---@class GridSelection: Object
---@field SelectedItems GridSelection.SimpleCell[]
local GridSelection = {}
---@return "GridSelection"
function GridSelection:GetClass() end
---@return "Object"
function GridSelection:GetChildClass() end
---@return GridBase
function GridSelection:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SelectedItems", role: nil): GridSelection.SimpleCell[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SelectedItems", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridSelection:Get(name, role) end
