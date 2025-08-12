---@meta

---@class BatteryStatus: Object
---@field Available boolean
---@field Ready integer
---@field Running integer
---@field AcPowerOk integer
---@field Charging integer
---@field BatteryFault integer
---@field BattVoltage number
---@field BattPercentage number
---@field WarningLevel integer
local BatteryStatus = {}
---@return "BatteryStatus"
function BatteryStatus:GetClass() end
---@return "Object"
function BatteryStatus:GetChildClass() end
---@return HardwareStatus
function BatteryStatus:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Available", role: nil): boolean
---@overload fun(name: "Ready"|"Running"|"AcPowerOk"|"Charging"|"BatteryFault", role: nil): integer
---@overload fun(name: "BattVoltage"|"BattPercentage", role: nil): number
---@overload fun(name: "WarningLevel", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Available"|"Ready"|"Running"|"AcPowerOk"|"Charging"|"BatteryFault"|"BattVoltage"|"BattPercentage"|"WarningLevel", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BatteryStatus:Get(name, role) end
