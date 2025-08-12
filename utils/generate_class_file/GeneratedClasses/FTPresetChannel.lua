---@meta

---@class FTPresetChannel: Object
---@field Attribute integer
---@field Fade TimePropertyValue
---@field Delay TimePropertyValue
---@field Speed SpeedPropertyValue
---@field SpeedMaster integer
---@field Phase ValueTPropertyValue
---@field Measure ValueTPropertyValue
local FTPresetChannel = {}
---@return "FTPresetChannel"
function FTPresetChannel:GetClass() end
---@return "FTPresetValue"
function FTPresetChannel:GetChildClass() end
---@return FTPreset
function FTPresetChannel:Parent() end
---@param index integer
---@return FTPresetValue
function FTPresetChannel:Ptr(index) end
---@return FTPresetValue[]
function FTPresetChannel:Children() end
---@return FTPresetValue?
function FTPresetChannel:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Attribute", role: nil): integer
---@overload fun(name: "Fade"|"Delay", role: nil): TimePropertyValue
---@overload fun(name: "Speed", role: nil): SpeedPropertyValue
---@overload fun(name: "SpeedMaster", role: nil): integer
---@overload fun(name: "Phase"|"Measure", role: nil): ValueTPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"Fade"|"Delay"|"Speed"|"SpeedMaster"|"Phase"|"Measure", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FTPresetValue
function FTPresetChannel:Get(name, role) end
---@overload fun(name: string, class: nil): Object
function FTPresetChannel:FindRecursive(name, class) end
