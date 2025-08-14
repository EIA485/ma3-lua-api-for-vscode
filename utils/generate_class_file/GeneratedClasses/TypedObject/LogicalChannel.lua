---@meta

---@class LogicalChannel: TypedObject
---@field Name string
---@field Attribute Attribute
---@field Snap integer
---@field Master integer
---@field MibFade TimePropertyValue
---@field DMXChangeTimeLimit TimePropertyValue
---@field DmxCurve DmxCurve
local LogicalChannel = {
    Master="None",
    MibFade="Default",
    DMXChangeTimeLimit="Default"
}
---@return "LogicalChannel"
function LogicalChannel:GetClass() end
---@return "ChannelFunction"
function LogicalChannel:GetChildClass() end
---@return DMXChannel
function LogicalChannel:Parent() end
---@param index integer
---@return ChannelFunction
function LogicalChannel:Ptr(index) end
---@return ChannelFunction[]
function LogicalChannel:Children() end
---@return ChannelFunction?
function LogicalChannel:CurrentChild() end
---@overload fun(name: "Attribute", role: nil): Attribute
---@overload fun(name: "DmxCurve", role: nil): DmxCurve
---@overload fun(name: "MibFade"|"DMXChangeTimeLimit", role: nil): TimePropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Snap"|"Master"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Type"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Name"|"Attribute"|"Snap"|"Master"|"MibFade"|"DMXChangeTimeLimit"|"DmxCurve"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ChannelFunction
function LogicalChannel:Get(name, role) end
---@generic T : ChannelFunction
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Create(index, class, undo) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ChannelFunction
function LogicalChannel:Append(class, undo, count) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Acquire(class, undo) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelFunction
---@deprecated use "Acquire" instead
function LogicalChannel:Aquire(class, undo) end
---@generic T : ChannelFunction
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ChannelFunction
function LogicalChannel:Insert(index, class, undo, count) end
---@generic T : ChannelFunction
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Find(class, undo) end