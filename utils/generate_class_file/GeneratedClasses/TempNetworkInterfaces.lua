---@meta

---@class TempNetworkInterfaces: Object Container for all network interfaces which the remote station have.
local TempNetworkInterfaces = {}
---@return "TempNetworkInterfaces"
function TempNetworkInterfaces:GetClass() end
---@return "TempNetworkRemoteInterfaceCollect"
function TempNetworkInterfaces:GetChildClass() end
---@return Temp
function TempNetworkInterfaces:Parent() end
---@param index integer
---@return TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Ptr(index) end
---@return TempNetworkRemoteInterfaceCollect[]
function TempNetworkInterfaces:Children() end
---@return TempNetworkRemoteInterfaceCollect?
function TempNetworkInterfaces:CurrentChild() end
---@overload fun(name: integer, role: nil): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Get(name, role) end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Create(index, class, undo) end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Append(class, undo, count) end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Acquire(class, undo) end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
---@deprecated use "Acquire" instead
function TempNetworkInterfaces:Aquire(class, undo) end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Insert(index, class, undo, count) end
---@generic T : TempNetworkRemoteInterfaceCollect
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Find(class, undo) end