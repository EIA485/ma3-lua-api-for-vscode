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
---@overload fun(index: integer, class: "TempNetworkRemoteInterfaceCollect", undo: Undo?): TempNetworkRemoteInterfaceCollect
---@overload fun(index: integer, class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Create(index, class, undo) end
---@overload fun(class: "TempNetworkRemoteInterfaceCollect", undo: Undo?, count: integer?): TempNetworkRemoteInterfaceCollect
---@overload fun(class: nil, undo: Undo?, count: integer?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Append(class, undo, count) end
---@overload fun(class: "TempNetworkRemoteInterfaceCollect", undo: Undo?): TempNetworkRemoteInterfaceCollect
---@overload fun(class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Acquire(class, undo) end
---@overload fun(class: "TempNetworkRemoteInterfaceCollect", undo: Undo?): TempNetworkRemoteInterfaceCollect
---@overload fun(class: nil, undo: Undo?): TempNetworkRemoteInterfaceCollect
---@deprecated use "Acquire" instead
function TempNetworkInterfaces:Aquire(class, undo) end
---@overload fun(index: integer, class: "TempNetworkRemoteInterfaceCollect", undo: Undo?, count: integer?): TempNetworkRemoteInterfaceCollect
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TempNetworkRemoteInterfaceCollect"): TempNetworkRemoteInterfaceCollect
---@overload fun(name: string, class: nil): TempNetworkRemoteInterfaceCollect
function TempNetworkInterfaces:Find(name, class) end
---@overload fun(name: string, class: "TempNetworkRemoteInterfaceCollect"): TempNetworkRemoteInterfaceCollect
---@overload fun(name: string, class: nil): Object
function TempNetworkInterfaces:FindRecursive(name, class) end
