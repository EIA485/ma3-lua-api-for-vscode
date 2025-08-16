---@meta

---@class TempNetworkRemoteInterfaceCollect: Object Container for all network interfaces which the remote station have.
local TempNetworkRemoteInterfaceCollect = {}
---@return "TempNetworkRemoteInterfaceCollect"
function TempNetworkRemoteInterfaceCollect:GetClass() end
---@return "NetworkInterface"
function TempNetworkRemoteInterfaceCollect:GetChildClass() end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param class `T`
---@return boolean
function TempNetworkRemoteInterfaceCollect:IsClass(class) end
---@return TempNetworkInterfaces
function TempNetworkRemoteInterfaceCollect:Parent() end
---@param index integer
---@return NetworkInterface
function TempNetworkRemoteInterfaceCollect:Ptr(index) end
---@return NetworkInterface[]
function TempNetworkRemoteInterfaceCollect:Children() end
---@return NetworkInterface?
function TempNetworkRemoteInterfaceCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Get(name, role) end
---@generic T : NetworkInterface
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Create(index, class, undo) end
---@generic T : NetworkInterface
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Append(class, undo, count) end
---@generic T : NetworkInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Acquire(class, undo) end
---@generic T : NetworkInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkInterface
---@deprecated use "Acquire" instead
function TempNetworkRemoteInterfaceCollect:Aquire(class, undo) end
---@generic T : NetworkInterface
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Insert(index, class, undo, count) end
---@generic T : NetworkInterface
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Find(class, undo) end
---@overload fun(property_name: "RenewDHCP", property_value: Yes|true)
---@overload fun(property_name: "RenewDHCP", property_value: Yes|true)
function TempNetworkRemoteInterfaceCollect:SetChildren(property_name, property_value) end