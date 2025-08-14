---@meta

---@class GridPatchContentFilterItem: GridObjectContentFilterItem
---@field PopupFilter string
local GridPatchContentFilterItem = {}
---@return "GridPatchContentFilterItem"
function GridPatchContentFilterItem:GetClass() end
---@return "Object"
function GridPatchContentFilterItem:GetChildClass() end
---@return GridPatchContentFilter
function GridPatchContentFilterItem:Parent() end
---@overload fun(name: "Enabled"|"Equal"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "PopupFilter"|"Column"|"Filter"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Columns", role: nil): string[]
---@overload fun(name: "PopupFilter"|"Column"|"Columns"|"Filter"|"Enabled"|"Equal"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridPatchContentFilterItem:Get(name, role) end