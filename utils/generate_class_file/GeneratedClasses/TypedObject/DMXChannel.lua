---@meta

---@class DMXChannel: TypedObject
---@field Name string
---@field DMXBreak integer
---@field Coarse integer
---@field Fine integer
---@field Ultra integer
---@field Frequency integer
---@field Calc
Always integer
---@field VirtualResolution DMXVirtualResolution
---@field Default
ChannelFunction ChannelFunction
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
    ["Calc
Always"]="No",
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"Name", role: nil): string
---@overload fun(name: "DMXBreak"|"Coarse"|"Fine"|"Ultra"|"Frequency"|"Calc
Always", role: nil): integer
---@overload fun(name: "VirtualResolution", role: nil): DMXVirtualResolution
---@overload fun(name: "Default
ChannelFunction", role: nil): ChannelFunction
---@overload fun(name: "Default"|"Highlight"|"Lowlight", role: nil): DMXPropertyValue
---@overload fun(name: "Geometry", role: nil): Geometry
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Name"|"DMXBreak"|"Coarse"|"Fine"|"Ultra"|"Frequency"|"Calc
Always"|"VirtualResolution"|"Default
ChannelFunction"|"Default"|"Highlight"|"Lowlight"|"Geometry", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): LogicalChannel
function DMXChannel:Get(name, role) end
---@overload fun(index: integer, class: "LogicalChannel", undo: Undo?): LogicalChannel
---@overload fun(index: integer, class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Create(index, class, undo) end
---@overload fun(class: "LogicalChannel", undo: Undo?, count: integer?): LogicalChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): LogicalChannel
function DMXChannel:Append(class, undo, count) end
---@overload fun(class: "LogicalChannel", undo: Undo?): LogicalChannel
---@overload fun(class: nil, undo: Undo?): LogicalChannel
function DMXChannel:Acquire(class, undo) end
---@overload fun(class: "LogicalChannel", undo: Undo?): LogicalChannel
---@overload fun(class: nil, undo: Undo?): LogicalChannel
---@deprecated use "Acquire" instead
function DMXChannel:Aquire(class, undo) end
---@overload fun(index: integer, class: "LogicalChannel", undo: Undo?, count: integer?): LogicalChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LogicalChannel
function DMXChannel:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "LogicalChannel"): LogicalChannel
---@overload fun(name: string, class: nil): LogicalChannel
function DMXChannel:Find(name, class) end
---@overload fun(name: string, class: "LogicalChannel"): LogicalChannel
---@overload fun(name: string, class: nil): Object
function DMXChannel:FindRecursive(name, class) end
