---@meta

---@class FixtureSheetRowFilter: GridContentFilterBase
---@field FilterProgOnly integer
local FixtureSheetRowFilter = {
    FilterProgOnly="No"
}
---@return "FixtureSheetRowFilter"
function FixtureSheetRowFilter:GetClass() end
---@return "Object"
function FixtureSheetRowFilter:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"FilterProgOnly", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FilterProgOnly", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureSheetRowFilter:Get(name, role) end
