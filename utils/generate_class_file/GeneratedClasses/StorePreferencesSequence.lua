---@meta

---@class StorePreferencesSequence: Object
---@field MIB
Mode integer
---@field MIB
Fade TimePropertyValue
---@field MIB
Delay TimePropertyValue
---@field MIB
MultiStep integer
local StorePreferencesSequence = {
    ["MIB
Mode"]="BestLate",
    ["MIB
Fade"]="Default",
    ["MIB
Delay"]="Default",
    ["MIB
MultiStep"]="Running"
}
---@return "StorePreferencesSequence"
function StorePreferencesSequence:GetClass() end
---@return "Object"
function StorePreferencesSequence:GetChildClass() end
---@return StorePreferences
function StorePreferencesSequence:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"MIB
Mode", role: nil): integer
---@overload fun(name: "MIB
Fade"|"MIB
Delay", role: nil): TimePropertyValue
---@overload fun(name: "MIB
MultiStep", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"MIB
Mode"|"MIB
Fade"|"MIB
Delay"|"MIB
MultiStep", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function StorePreferencesSequence:Get(name, role) end
