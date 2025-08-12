---@meta

---@class GridColumn: NamedObj
---@field Visible boolean
local GridColumn = {
    Visible="Yes"
}
---@return "GridColumn"
function GridColumn:GetClass() end
---@return "Object"
function GridColumn:GetChildClass() end
---@return GridColumnFilter
function GridColumn:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Visible", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Visible", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridColumn:Get(name, role) end
