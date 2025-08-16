---@meta

---@class PSNProtocol: UdpProtocol
local PSNProtocol = {}
---@return "PSNProtocol"
function PSNProtocol:GetClass() end
---@return "System"
function PSNProtocol:GetChildClass() end
---@generic T : PSNProtocol
---@param class `T`
---@return boolean
function PSNProtocol:IsClass(class) end
---@param index integer
---@return System
function PSNProtocol:Ptr(index) end
---@return System[]
function PSNProtocol:Children() end
---@return System?
function PSNProtocol:CurrentChild() end
---@overload fun(name: integer, role: nil): System
function PSNProtocol:Get(name, role) end
---@generic T : System
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): System
function PSNProtocol:Create(index, class, undo) end
---@generic T : System
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): System
function PSNProtocol:Append(class, undo, count) end
---@generic T : System
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): System
function PSNProtocol:Acquire(class, undo) end
---@generic T : System
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): System
---@deprecated use "Acquire" instead
function PSNProtocol:Aquire(class, undo) end
---@generic T : System
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): System
function PSNProtocol:Insert(index, class, undo, count) end
---@generic T : System
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): System
function PSNProtocol:Find(class, undo) end
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "DMXPriority", property_value: DmxPrio)
---@overload fun(property_name: "Port", property_value: integer)
---@overload fun(property_name: "MergeMode", property_value: DMXMergeMode)
---@overload fun(property_name: "DMXPriority", property_value: DmxPrio)
---@overload fun(property_name: "SenderIP"|"MulticastIP", property_value: Manet.IP4)
---@overload fun(property_name: "MapX"|"MapY"|"MapZ", property_value: XYZMapping)
---@overload fun(property_name: "InvX"|"Requested"|"InvY"|"InvZ", property_value: Yes|true)
---@overload fun(property_name: "Port", property_value: integer)
function PSNProtocol:SetChildren(property_name, property_value) end