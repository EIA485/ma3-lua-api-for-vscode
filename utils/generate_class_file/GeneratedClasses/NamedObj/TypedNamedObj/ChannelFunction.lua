---@meta

---@class ChannelFunction: TypedNamedObj Defines a functional range in a channel type.
---@field Attribute Attribute
---@field DMX
From DMXPropertyValue
---@field DMX
To DMXPropertyValue
---@field Default DMXPropertyValue
---@field Physical
From number
---@field Physical
To number
---@field Real
Fade number
---@field Real
Acceleration number
---@field Wheel Wheel
---@field Emitter Emitter
---@field Gamut Gamut
---@field ColorSpaceData ColorSpaceData
---@field Filter FTFilter
---@field DMX
Invert integer
---@field Encoder
Invert integer
---@field Ignore
Follow integer
---@field Encoder
Loop integer
---@field Mode
Master ChannelFunction
---@field ModeMasterDirect ChannelFunction
---@field ModeMasterDMXChannelDirect DMXChannel
---@field Mode
From DMXPropertyValue
---@field Mode
To DMXPropertyValue
---@field OriginalAttribute string
---@field CustomName string
local ChannelFunction = {
    ["DMX
From"]="000000",
    ["DMX
To"]="16777215",
    ["Physical
From"]="0",
    ["Physical
To"]="1",
    ["Real
Fade"]="0",
    ["Real
Acceleration"]="0",
    ["Mode
From"]="000000",
    ["Mode
To"]="FFFFFF"
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type", role: nil): string
---@overload fun(name: "Attribute", role: nil): Attribute
---@overload fun(name: "DMX
From"|"DMX
To"|"Default", role: nil): DMXPropertyValue
---@overload fun(name: "Physical
From"|"Physical
To"|"Real
Fade"|"Real
Acceleration", role: nil): number
---@overload fun(name: "Wheel", role: nil): Wheel
---@overload fun(name: "Emitter", role: nil): Emitter
---@overload fun(name: "Gamut", role: nil): Gamut
---@overload fun(name: "ColorSpaceData", role: nil): ColorSpaceData
---@overload fun(name: "Filter", role: nil): FTFilter
---@overload fun(name: "DMX
Invert"|"Encoder
Invert"|"Ignore
Follow"|"Encoder
Loop", role: nil): integer
---@overload fun(name: "Mode
Master"|"ModeMasterDirect", role: nil): ChannelFunction
---@overload fun(name: "ModeMasterDMXChannelDirect", role: nil): DMXChannel
---@overload fun(name: "Mode
From"|"Mode
To", role: nil): DMXPropertyValue
---@overload fun(name: "OriginalAttribute"|"CustomName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Attribute"|"DMX
From"|"DMX
To"|"Default"|"Physical
From"|"Physical
To"|"Real
Fade"|"Real
Acceleration"|"Wheel"|"Emitter"|"Gamut"|"ColorSpaceData"|"Filter"|"DMX
Invert"|"Encoder
Invert"|"Ignore
Follow"|"Encoder
Loop"|"Mode
Master"|"ModeMasterDirect"|"ModeMasterDMXChannelDirect"|"Mode
From"|"Mode
To"|"OriginalAttribute"|"CustomName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ChannelSet
function ChannelFunction:Get(name, role) end
---@overload fun(index: integer, class: "ChannelSet", undo: Undo?): ChannelSet
---@overload fun(index: integer, class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Create(index, class, undo) end
---@overload fun(class: "ChannelSet", undo: Undo?, count: integer?): ChannelSet
---@overload fun(class: nil, undo: Undo?, count: integer?): ChannelSet
function ChannelFunction:Append(class, undo, count) end
---@overload fun(class: "ChannelSet", undo: Undo?): ChannelSet
---@overload fun(class: nil, undo: Undo?): ChannelSet
function ChannelFunction:Acquire(class, undo) end
---@overload fun(class: "ChannelSet", undo: Undo?): ChannelSet
---@overload fun(class: nil, undo: Undo?): ChannelSet
---@deprecated use "Acquire" instead
function ChannelFunction:Aquire(class, undo) end
---@overload fun(index: integer, class: "ChannelSet", undo: Undo?, count: integer?): ChannelSet
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ChannelSet
function ChannelFunction:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ChannelSet"): ChannelSet
---@overload fun(name: string, class: nil): ChannelSet
function ChannelFunction:Find(name, class) end
---@overload fun(name: string, class: "ChannelSet"): ChannelSet
---@overload fun(name: string, class: nil): Object
function ChannelFunction:FindRecursive(name, class) end
