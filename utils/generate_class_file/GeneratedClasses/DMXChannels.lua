---@meta

---@class DMXChannels: Object A container for all dmx channels of one dmx mode.
local DMXChannels = {}
---@return "DMXChannels"
function DMXChannels:GetClass() end
---@return "DMXChannel"
function DMXChannels:GetChildClass() end
---@generic T : DMXChannels
---@param class `T`
---@return boolean
function DMXChannels:IsClass(class) end
---@return DMXMode
function DMXChannels:Parent() end
---@param index integer
---@return DMXChannel
function DMXChannels:Ptr(index) end
---@return DMXChannel[]
function DMXChannels:Children() end
---@return DMXChannel?
function DMXChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXChannel
function DMXChannels:Get(name, role) end
---@generic T : DMXChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXChannel
function DMXChannels:Create(index, class, undo) end
---@generic T : DMXChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXChannel
function DMXChannels:Append(class, undo, count) end
---@generic T : DMXChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXChannel
function DMXChannels:Acquire(class, undo) end
---@generic T : DMXChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXChannel
---@deprecated use "Acquire" instead
function DMXChannels:Aquire(class, undo) end
---@generic T : DMXChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXChannel
function DMXChannels:Insert(index, class, undo, count) end
---@generic T : DMXChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXChannel
function DMXChannels:Find(class, undo) end
---@overload fun(property_name: "Geometry", property_value: Geometry)
---@overload fun(property_name: "Frequency", property_value: ChannelFrequency)
---@overload fun(property_name: "CalcAlways", property_value: YesNo|boolean)
---@overload fun(property_name: "VirtualResolution", property_value: DMXVirtualResolution)
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "DMXBreak", property_value: DMXBreak)
---@overload fun(property_name: "DefaultChannelFunction", property_value: ChannelFunction)
---@overload fun(property_name: "Frequency", property_value: ChannelFrequency)
---@overload fun(property_name: "DefaultChannelFunction", property_value: ChannelFunction)
---@overload fun(property_name: "DMXBreak", property_value: DMXBreak)
---@overload fun(property_name: "VirtualResolution", property_value: DMXVirtualResolution)
---@overload fun(property_name: "Geometry", property_value: Geometry)
---@overload fun(property_name: "Coarse"|"Fine"|"Ultra", property_value: PatchOffset)
---@overload fun(property_name: "Highlight"|"Lowlight", property_value: ValueNone)
---@overload fun(property_name: "CalcAlways", property_value: YesNo|boolean)
---@overload fun(property_name: "Name", property_value: string)
function DMXChannels:DefaultChannelFunction(property_name, property_value) end