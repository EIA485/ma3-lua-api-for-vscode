---@meta

---@class FTPresetValue: Object
---@field Absolute ValueTPropertyValue
---@field Relative ValueTPropertyValue
---@field Accel ValueTPropertyValue
---@field AccelType integer
---@field Decel ValueTPropertyValue
---@field DecelType integer
---@field Trans ValueTPropertyValue
---@field Width ValueTPropertyValue
local FTPresetValue = {}
---@return "FTPresetValue"
function FTPresetValue:GetClass() end
---@return "Object"
function FTPresetValue:GetChildClass() end
---@return FTPreset
function FTPresetValue:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Absolute"|"Relative"|"Accel", role: nil): ValueTPropertyValue
---@overload fun(name: "AccelType", role: nil): integer
---@overload fun(name: "Decel", role: nil): ValueTPropertyValue
---@overload fun(name: "DecelType", role: nil): integer
---@overload fun(name: "Trans"|"Width", role: nil): ValueTPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Absolute"|"Relative"|"Accel"|"AccelType"|"Decel"|"DecelType"|"Trans"|"Width", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FTPresetValue:Get(name, role) end
