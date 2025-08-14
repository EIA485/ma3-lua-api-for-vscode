---@meta

---@class DMXChannel: TypedObject
---@field Name string
---@field DMXBreak integer
---@field Coarse integer
---@field Fine integer
---@field Ultra integer
---@field Frequency integer
---@field CalcAlways integer
---@field VirtualResolution DMXVirtualResolution
---@field DefaultChannelFunction ChannelFunction
---@field Default DMXPropertyValue
---@field Highlight DMXPropertyValue
---@field Lowlight DMXPropertyValue
---@field Geometry Geometry
local DMXChannel = {
    DMXBreak="1",
    Coarse="None",
    Fine="None",
    Ultra="None",
    Frequency="30",
    CalcAlways="No",
    VirtualResolution="24 bits",
    Default="000000",
    Highlight="None",
    Lowlight="None"
}
---@return "DMXChannel"
function DMXChannel:GetClass() end
---@return "LogicalChannel"
function DMXChannel:GetChildClass() end
---@return DMXChannels
function DMXChannel:Parent() end
---@param index integer
---@return LogicalChannel
function DMXChannel:Ptr(index) end
---@return LogicalChannel[]
function DMXChannel:Children() end
---@return LogicalChannel?
function DMXChannel:CurrentChild() end
---@overload fun(name: "DefaultChannelFunction", role: nil): ChannelFunction
---@overload fun(name: "Default"|"Highlight"|"Lowlight", role: nil): DMXPropertyValue
---@overload fun(name: "VirtualResolution", role: nil): DMXVirtualResolution
---@overload fun(name: "Geometry", role: nil): Geometry
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DMXBreak"|"Coarse"|"Fine"|"Ultra"|"Frequency"|"CalcAlways"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Type"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Name"|"DMXBreak"|"Coarse"|"Fine"|"Ultra"|"Frequency"|"CalcAlways"|"VirtualResolution"|"DefaultChannelFunction"|"Default"|"Highlight"|"Lowlight"|"Geometry"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): LogicalChannel
function DMXChannel:Get(name, role) end
---@generic T : LogicalChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Create(index, class, undo) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LogicalChannel
function DMXChannel:Append(class, undo, count) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Acquire(class, undo) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LogicalChannel
---@deprecated use "Acquire" instead
function DMXChannel:Aquire(class, undo) end
---@generic T : LogicalChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LogicalChannel
function DMXChannel:Insert(index, class, undo, count) end
---@generic T : LogicalChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Find(class, undo) end