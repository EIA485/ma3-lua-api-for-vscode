---@meta

---@class PhysicalPropertiesData: Object
---@field TempLow number
---@field TempHigh number
---@field Weight number
---@field LegHeight number
local PhysicalPropertiesData = {
    TempLow="0",
    TempHigh="40",
    Weight="0",
    LegHeight="0"
}
---@return "PhysicalPropertiesData"
function PhysicalPropertiesData:GetClass() end
---@return "Object"
function PhysicalPropertiesData:GetChildClass() end
---@return PhysicalProperties
function PhysicalPropertiesData:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "TempLow"|"TempHigh"|"Weight"|"LegHeight", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TempLow"|"TempHigh"|"Weight"|"LegHeight", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PhysicalPropertiesData:Get(name, role) end
