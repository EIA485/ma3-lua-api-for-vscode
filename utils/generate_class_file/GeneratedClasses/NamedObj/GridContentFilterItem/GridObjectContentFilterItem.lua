---@meta

---@class GridObjectContentFilterItem: GridContentFilterItem
---@field Column string
---@field PopupFilter string
local GridObjectContentFilterItem = {}
---@return "GridObjectContentFilterItem"
function GridObjectContentFilterItem:GetClass() end
---@return "Object"
function GridObjectContentFilterItem:GetChildClass() end
---@return GridObjectContentFilter
function GridObjectContentFilterItem:Parent() end
---@overload fun(name: "Enabled"|"Equal"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Column"|"PopupFilter"|"Filter"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Columns", role: nil): string[]
---@overload fun(name: "Column"|"PopupFilter"|"Columns"|"Filter"|"Enabled"|"Equal"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridObjectContentFilterItem:Get(name, role) end