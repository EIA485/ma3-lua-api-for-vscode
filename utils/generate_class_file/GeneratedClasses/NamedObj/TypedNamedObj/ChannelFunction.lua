---@meta

---@class ChannelFunction: TypedNamedObj Defines a functional range in a channel type.
---@field Attribute Attribute
---@field DMXFrom DMXPropertyValue
---@field DMXTo DMXPropertyValue
---@field Default DMXPropertyValue
---@field PhysicalFrom number
---@field PhysicalTo number
---@field RealFade number
---@field RealAcceleration number
---@field Wheel Wheel
---@field Emitter Emitter
---@field Gamut Gamut
---@field ColorSpaceData ColorSpaceData
---@field Filter FTFilter
---@field DMXInvert integer
---@field EncoderInvert integer
---@field IgnoreFollow integer
---@field EncoderLoop integer
---@field ModeMaster ChannelFunction
---@field ModeMasterDirect ChannelFunction
---@field ModeMasterDMXChannelDirect DMXChannel
---@field ModeFrom DMXPropertyValue
---@field ModeTo DMXPropertyValue
---@field OriginalAttribute string
---@field CustomName string
local ChannelFunction = {
    DMXFrom="000000",
    DMXTo="16777215",
    PhysicalFrom="0",
    PhysicalTo="1",
    RealFade="0",
    RealAcceleration="0",
    ModeFrom="000000",
    ModeTo="FFFFFF"
}
---@return "ChannelFunction"
function ChannelFunction:GetClass() end
---@return "ChannelSet"
function ChannelFunction:GetChildClass() end
---@return LogicalChannel
function ChannelFunction:Parent() end
---@param index integer
---@return ChannelSet
function ChannelFunction:Ptr(index) end
---@return ChannelSet[]
function ChannelFunction:Children() end
---@return ChannelSet?
function ChannelFunction:CurrentChild() end
---@overload fun(name: "Attribute", role: nil): Attribute
---@overload fun(name: "ModeMaster"|"ModeMasterDirect", role: nil): ChannelFunction
---@overload fun(name: "ColorSpaceData", role: nil): ColorSpaceData
---@overload fun(name: "ModeMasterDMXChannelDirect", role: nil): DMXChannel
---@overload fun(name: "DMXFrom"|"DMXTo"|"Default"|"ModeFrom"|"ModeTo", role: nil): DMXPropertyValue
---@overload fun(name: "Emitter", role: nil): Emitter
---@overload fun(name: "Filter", role: nil): FTFilter
---@overload fun(name: "Gamut", role: nil): Gamut
---@overload fun(name: "Wheel", role: nil): Wheel
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DMXInvert"|"EncoderInvert"|"IgnoreFollow"|"EncoderLoop"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "PhysicalFrom"|"PhysicalTo"|"RealFade"|"RealAcceleration", role: nil): number
---@overload fun(name: "OriginalAttribute"|"CustomName"|"Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Attribute"|"DMXFrom"|"DMXTo"|"Default"|"PhysicalFrom"|"PhysicalTo"|"RealFade"|"RealAcceleration"|"Wheel"|"Emitter"|"Gamut"|"ColorSpaceData"|"Filter"|"DMXInvert"|"EncoderInvert"|"IgnoreFollow"|"EncoderLoop"|"ModeMaster"|"ModeMasterDirect"|"ModeMasterDMXChannelDirect"|"ModeFrom"|"ModeTo"|"OriginalAttribute"|"CustomName"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ChannelSet
function ChannelFunction:Get(name, role) end
---@generic T : ChannelSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Create(index, class, undo) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ChannelSet
function ChannelFunction:Append(class, undo, count) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Acquire(class, undo) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelSet
---@deprecated use "Acquire" instead
function ChannelFunction:Aquire(class, undo) end
---@generic T : ChannelSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ChannelSet
function ChannelFunction:Insert(index, class, undo, count) end
---@generic T : ChannelSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Find(class, undo) end