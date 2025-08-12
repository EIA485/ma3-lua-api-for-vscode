---@meta

---@class TempNetworkRemoteInterfaceCollect: Object Container for all network interfaces which the remote station have.
local TempNetworkRemoteInterfaceCollect = {}
---@return "TempNetworkRemoteInterfaceCollect"
function TempNetworkRemoteInterfaceCollect:GetClass() end
---@return "NetworkInterface"
function TempNetworkRemoteInterfaceCollect:GetChildClass() end
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
---@overload fun(index: integer, class: "NetworkInterface", undo: Undo?): NetworkInterface
---@overload fun(index: integer, class: nil, undo: Undo?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Create(index, class, undo) end
---@overload fun(class: "NetworkInterface", undo: Undo?, count: integer?): NetworkInterface
---@overload fun(class: nil, undo: Undo?, count: integer?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Append(class, undo, count) end
---@overload fun(class: "NetworkInterface", undo: Undo?): NetworkInterface
---@overload fun(class: nil, undo: Undo?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Acquire(class, undo) end
---@overload fun(class: "NetworkInterface", undo: Undo?): NetworkInterface
---@overload fun(class: nil, undo: Undo?): NetworkInterface
---@deprecated use "Acquire" instead
function TempNetworkRemoteInterfaceCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "NetworkInterface", undo: Undo?, count: integer?): NetworkInterface
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "NetworkInterface"): NetworkInterface
---@overload fun(name: string, class: nil): NetworkInterface
function TempNetworkRemoteInterfaceCollect:Find(name, class) end
---@overload fun(name: string, class: "NetworkInterface"): NetworkInterface
---@overload fun(name: string, class: nil): Object
function TempNetworkRemoteInterfaceCollect:FindRecursive(name, class) end
