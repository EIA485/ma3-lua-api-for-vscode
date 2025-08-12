---@meta

---@class GridContentFilterItem: NamedObj
---@field Columns string[]
---@field Filter string
---@field Enabled boolean
---@field Equal boolean
local GridContentFilterItem = {
    Enabled="Yes",
    Equal="Yes"
}
---@return "GridContentFilterItem"
function GridContentFilterItem:GetClass() end
---@return "Object"
function GridContentFilterItem:GetChildClass() end
---@return GridContentFilter
function GridContentFilterItem:Parent() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Columns"|"Filter"|"Enabled"|"Equal", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridContentFilterItem:Get(name, role) end
