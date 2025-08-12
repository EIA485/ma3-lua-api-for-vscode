---@meta

---@class ChannelSet: TypedNamedObj Defines a specific value (range) inside a channel function.
---@field DMXFrom DMXPropertyValue
---@field DMXTo DMXPropertyValue
---@field WheelSlotIndex integer
---@field PhysicalFrom number
---@field PhysicalTo number
---@field HasPhysical integer
local ChannelSet = {
    DMXFrom="0",
    DMXTo="16777215",
    PhysicalFrom="0",
    PhysicalTo="1"
}
---@return "ChannelSet"
function ChannelSet:GetClass() end
---@return "Object"
function ChannelSet:GetChildClass() end
---@return ChannelFunction
function ChannelSet:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type", role: nil): string
---@overload fun(name: "DMXFrom"|"DMXTo", role: nil): DMXPropertyValue
---@overload fun(name: "WheelSlotIndex", role: nil): integer
---@overload fun(name: "PhysicalFrom"|"PhysicalTo", role: nil): number
---@overload fun(name: "HasPhysical", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"DMXFrom"|"DMXTo"|"WheelSlotIndex"|"PhysicalFrom"|"PhysicalTo"|"HasPhysical", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ChannelSet:Get(name, role) end
