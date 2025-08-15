---@meta

---@class RandomChannels: GeneratorChannels
local RandomChannels = {}
---@return "RandomChannels"
function RandomChannels:GetClass() end
---@return "RandomChannel"
function RandomChannels:GetChildClass() end
---@generic T : RandomChannels
---@param class `T`
---@return boolean
function RandomChannels:IsClass(class) end
---@return Random
function RandomChannels:Parent() end
---@param index integer
---@return RandomChannel
function RandomChannels:Ptr(index) end
---@return RandomChannel[]
function RandomChannels:Children() end
---@return RandomChannel?
function RandomChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): RandomChannel
function RandomChannels:Get(name, role) end
---@generic T : RandomChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RandomChannel
function RandomChannels:Create(index, class, undo) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RandomChannel
function RandomChannels:Append(class, undo, count) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RandomChannel
function RandomChannels:Acquire(class, undo) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RandomChannel
---@deprecated use "Acquire" instead
function RandomChannels:Aquire(class, undo) end
---@generic T : RandomChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RandomChannel
function RandomChannels:Insert(index, class, undo, count) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RandomChannel
function RandomChannels:Find(class, undo) end
---@overload fun(property_name: "Speed", property_value: SpeedPropertyValue)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "Speed", property_value: SpeedPropertyValue)
---@overload fun(property_name: "SpeedOnce"|"RandomStart"|"PhaseOnce", property_value: YesNo|boolean)
---@overload fun(property_name: "Attack"|"PhaseVariance"|"Low"|"LowVariance"|"High"|"Phase"|"HighVariance"|"SpeedVariance"|"Decay"|"Ratio"|"RatioVariance", property_value: integer)
function RandomChannels:SpeedMaster(property_name, property_value) end