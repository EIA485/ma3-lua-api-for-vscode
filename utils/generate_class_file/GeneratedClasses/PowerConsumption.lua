---@meta

---@class PowerConsumption: Object
---@field Value number
---@field PowerFactor number
---@field VoltageLow number
---@field VoltageHigh number
---@field FrequencyLow number
---@field FrequencyHigh number
local PowerConsumption = {
    Value="0",
    PowerFactor="1",
    VoltageLow="90",
    VoltageHigh="240",
    FrequencyLow="50",
    FrequencyHigh="60"
}
---@return "PowerConsumption"
function PowerConsumption:GetClass() end
---@return "Object"
function PowerConsumption:GetChildClass() end
---@return Connector
function PowerConsumption:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Value"|"PowerFactor"|"VoltageLow"|"VoltageHigh"|"FrequencyLow"|"FrequencyHigh", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Value"|"PowerFactor"|"VoltageLow"|"VoltageHigh"|"FrequencyLow"|"FrequencyHigh", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PowerConsumption:Get(name, role) end
