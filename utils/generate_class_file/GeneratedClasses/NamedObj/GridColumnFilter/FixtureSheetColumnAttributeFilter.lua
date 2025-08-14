---@meta

---@class FixtureSheetColumnAttributeFilter: GridColumnFilter
---@field FilterProgOnly integer
local FixtureSheetColumnAttributeFilter = {
    FilterProgOnly="No"
}
---@return "FixtureSheetColumnAttributeFilter"
function FixtureSheetColumnAttributeFilter:GetClass() end
---@return "Object"
function FixtureSheetColumnAttributeFilter:GetChildClass() end
---@overload fun(name: "Inclusive"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FilterProgOnly"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FilterProgOnly"|"Inclusive"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureSheetColumnAttributeFilter:Get(name, role) end