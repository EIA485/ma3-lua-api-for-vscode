---@meta

---@class BitmapChannel: GeneratorBaseChannel
---@field Source integer
---@field ValueLow integer
---@field ValueHigh integer
local BitmapChannel = {
    Source="Intensity",
    ValueLow="0.0",
    ValueHigh="100.0"
}
---@return "BitmapChannel"
function BitmapChannel:GetClass() end
---@return "Object"
function BitmapChannel:GetChildClass() end
---@return BitmapChannels
function BitmapChannel:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "Virtual
Dimmer"|"Source"|"ValueLow"|"ValueHigh", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"Virtual
Dimmer"|"Source"|"ValueLow"|"ValueHigh", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BitmapChannel:Get(name, role) end
