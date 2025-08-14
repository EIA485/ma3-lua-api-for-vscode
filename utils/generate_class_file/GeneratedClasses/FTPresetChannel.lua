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
---@overload fun(name: "Speed", role: nil): SpeedPropertyValue
---@overload fun(name: "Fade"|"Delay", role: nil): TimePropertyValue
---@overload fun(name: "Phase"|"Measure", role: nil): ValueTPropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Attribute"|"SpeedMaster"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Attribute"|"Fade"|"Delay"|"Speed"|"SpeedMaster"|"Phase"|"Measure"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FTPresetValue
function FTPresetChannel:Get(name, role) end
function FTPresetChannel:Create(index, class, undo) end
function FTPresetChannel:Append(class, undo, count) end
function FTPresetChannel:Acquire(class, undo) end
---@deprecated use "Acquire" instead
function FTPresetChannel:Aquire(class, undo) end
function FTPresetChannel:Insert(index, class, undo, count) end
function FTPresetChannel:Find(class, undo) end