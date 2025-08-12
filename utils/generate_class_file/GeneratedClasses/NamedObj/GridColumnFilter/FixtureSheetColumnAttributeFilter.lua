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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Inclusive", role: nil): boolean
---@overload fun(name: "FilterProgOnly", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Inclusive"|"FilterProgOnly", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureSheetColumnAttributeFilter:Get(name, role) end
