---@meta

---@class LogicalChannel: TypedObject
---@field Name string
---@field Attribute Attribute
---@field Snap integer
---@field Master integer
---@field MibFade TimePropertyValue
---@field DMXChange
TimeLimit TimePropertyValue
---@field DmxCurve DmxCurve
local LogicalChannel = {
    Master="None",
    MibFade="Default",
    ["DMXChange
TimeLimit"]="Default"
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"Name", role: nil): string
---@overload fun(name: "Attribute", role: nil): Attribute
---@overload fun(name: "Snap"|"Master", role: nil): integer
---@overload fun(name: "MibFade"|"DMXChange
TimeLimit", role: nil): TimePropertyValue
---@overload fun(name: "DmxCurve", role: nil): DmxCurve
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Name"|"Attribute"|"Snap"|"Master"|"MibFade"|"DMXChange
TimeLimit"|"DmxCurve", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ChannelFunction
function LogicalChannel:Get(name, role) end
---@overload fun(index: integer, class: "ChannelFunction", undo: Undo?): ChannelFunction
---@overload fun(index: integer, class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Create(index, class, undo) end
---@overload fun(class: "ChannelFunction", undo: Undo?, count: integer?): ChannelFunction
---@overload fun(class: nil, undo: Undo?, count: integer?): ChannelFunction
function LogicalChannel:Append(class, undo, count) end
---@overload fun(class: "ChannelFunction", undo: Undo?): ChannelFunction
---@overload fun(class: nil, undo: Undo?): ChannelFunction
function LogicalChannel:Acquire(class, undo) end
---@overload fun(class: "ChannelFunction", undo: Undo?): ChannelFunction
---@overload fun(class: nil, undo: Undo?): ChannelFunction
---@deprecated use "Acquire" instead
function LogicalChannel:Aquire(class, undo) end
---@overload fun(index: integer, class: "ChannelFunction", undo: Undo?, count: integer?): ChannelFunction
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ChannelFunction
function LogicalChannel:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ChannelFunction"): ChannelFunction
---@overload fun(name: string, class: nil): ChannelFunction
function LogicalChannel:Find(name, class) end
---@overload fun(name: string, class: "ChannelFunction"): ChannelFunction
---@overload fun(name: string, class: nil): Object
function LogicalChannel:FindRecursive(name, class) end
