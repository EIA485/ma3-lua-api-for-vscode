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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Columns", role: nil): string[]
---@overload fun(name: "Filter", role: nil): string
---@overload fun(name: "Enabled"|"Equal", role: nil): boolean
---@overload fun(name: "Column"|"PopupFilter"|"PopupFilter", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Columns"|"Filter"|"Enabled"|"Equal"|"Column"|"PopupFilter"|"PopupFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridPatchContentFilterItem:Get(name, role) end
