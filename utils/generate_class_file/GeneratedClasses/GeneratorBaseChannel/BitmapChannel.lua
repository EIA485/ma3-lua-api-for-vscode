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
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Source"|"ValueLow"|"ValueHigh"|"VirtualDimmer"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Source"|"ValueLow"|"ValueHigh"|"Attribute"|"VirtualDimmer"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function BitmapChannel:Get(name, role) end