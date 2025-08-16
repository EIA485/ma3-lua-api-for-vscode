---@meta

---@class RTChannels: Object
local RTChannels = {}
---@return "RTChannels"
function RTChannels:GetClass() end
---@return "RTChannel"
function RTChannels:GetChildClass() end
---@generic T : RTChannels
---@param class `T`
---@return boolean
function RTChannels:IsClass(class) end
---@return Patch
function RTChannels:Parent() end
---@param index integer
---@return RTChannel
function RTChannels:Ptr(index) end
---@return RTChannel[]
function RTChannels:Children() end
---@return RTChannel?
function RTChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): RTChannel
function RTChannels:Get(name, role) end
---@generic T : RTChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RTChannel
function RTChannels:Create(index, class, undo) end
---@generic T : RTChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RTChannel
function RTChannels:Append(class, undo, count) end
---@generic T : RTChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RTChannel
function RTChannels:Acquire(class, undo) end
---@generic T : RTChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RTChannel
---@deprecated use "Acquire" instead
function RTChannels:Aquire(class, undo) end
---@generic T : RTChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RTChannel
function RTChannels:Insert(index, class, undo, count) end
---@generic T : RTChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RTChannel
function RTChannels:Find(class, undo) end
---@overload fun(property_name: "Frequency", property_value: ChannelFrequency)
---@overload fun(property_name: "ChannelName", property_value: string)
---@overload fun(property_name: "DmxCurve", property_value: IgnoreFT)
---@overload fun(property_name: "Frequency", property_value: ChannelFrequency)
---@overload fun(property_name: "Default"|"Highlight"|"Lowlight", property_value: DMXPropertyValue)
---@overload fun(property_name: "DmxCurve", property_value: IgnoreFT)
---@overload fun(property_name: "LowlightPreset"|"DefaultPreset"|"HighlightPreset", property_value: Object)
---@overload fun(property_name: "Fine"|"Coarse"|"Ultra", property_value: Patched)
---@overload fun(property_name: "CID"|"IDType"|"FID", property_value: integer)
---@overload fun(property_name: "ChannelName", property_value: string)
function RTChannels:SetChildren(property_name, property_value) end