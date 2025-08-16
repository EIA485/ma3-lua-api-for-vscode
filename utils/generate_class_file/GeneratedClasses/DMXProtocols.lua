---@meta

---@class DMXProtocols: Object
local DMXProtocols = {}
---@return "DMXProtocols"
function DMXProtocols:GetClass() end
---@return "DMXProtocol"
function DMXProtocols:GetChildClass() end
---@generic T : DMXProtocols
---@param class `T`
---@return boolean
function DMXProtocols:IsClass(class) end
---@return DeviceConfigurations
function DMXProtocols:Parent() end
---@param index integer
---@return DMXProtocol
function DMXProtocols:Ptr(index) end
---@return DMXProtocol[]
function DMXProtocols:Children() end
---@return DMXProtocol?
function DMXProtocols:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXProtocol
function DMXProtocols:Get(name, role) end
---@generic T : DMXProtocol
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXProtocol
function DMXProtocols:Create(index, class, undo) end
---@generic T : DMXProtocol
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXProtocol
function DMXProtocols:Append(class, undo, count) end
---@generic T : DMXProtocol
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXProtocol
function DMXProtocols:Acquire(class, undo) end
---@generic T : DMXProtocol
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXProtocol
---@deprecated use "Acquire" instead
function DMXProtocols:Aquire(class, undo) end
---@generic T : DMXProtocol
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXProtocol
function DMXProtocols:Insert(index, class, undo, count) end
---@generic T : DMXProtocol
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXProtocol
function DMXProtocols:Find(class, undo) end
---@overload fun(property_name: "BroadcastThreshold", property_value: ArtNetBroadcastThreshold)
---@overload fun(property_name: "ArtPollRate", property_value: TimePropertyValue)
---@overload fun(property_name: "Interface", property_value: string)
---@overload fun(property_name: "OutputDelay", property_value: OutputDelay)
---@overload fun(property_name: "PreferredIP", property_value: Manet.IP4)
---@overload fun(property_name: "BroadcastThreshold", property_value: ArtNetBroadcastThreshold)
---@overload fun(property_name: "PreferredIP", property_value: Manet.IP4)
---@overload fun(property_name: "OutputDelay", property_value: OutputDelay)
---@overload fun(property_name: "ArtPollRate", property_value: TimePropertyValue)
---@overload fun(property_name: "Out"|"In"|"SetupMode", property_value: YesNo|boolean)
---@overload fun(property_name: "Interface", property_value: string)
function DMXProtocols:SetChildren(property_name, property_value) end