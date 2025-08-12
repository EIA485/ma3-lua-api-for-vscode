---@meta

---@class WebServer: Object
local WebServer = {}
---@return "WebServer"
function WebServer:GetClass() end
---@return "WebSocketsConnection"
function WebServer:GetChildClass() end
---@return Root
function WebServer:Parent() end
---@param index integer
---@return WebSocketsConnection
function WebServer:Ptr(index) end
---@return WebSocketsConnection[]
function WebServer:Children() end
---@return WebSocketsConnection?
function WebServer:CurrentChild() end
---@overload fun(name: integer, role: nil): WebSocketsConnection
function WebServer:Get(name, role) end
---@overload fun(index: integer, class: "WebSocketsConnection", undo: Undo?): WebSocketsConnection
---@overload fun(index: integer, class: nil, undo: Undo?): WebSocketsConnection
function WebServer:Create(index, class, undo) end
---@overload fun(class: "WebSocketsConnection", undo: Undo?, count: integer?): WebSocketsConnection
---@overload fun(class: nil, undo: Undo?, count: integer?): WebSocketsConnection
function WebServer:Append(class, undo, count) end
---@overload fun(class: "WebSocketsConnection", undo: Undo?): WebSocketsConnection
---@overload fun(class: nil, undo: Undo?): WebSocketsConnection
function WebServer:Acquire(class, undo) end
---@overload fun(class: "WebSocketsConnection", undo: Undo?): WebSocketsConnection
---@overload fun(class: nil, undo: Undo?): WebSocketsConnection
---@deprecated use "Acquire" instead
function WebServer:Aquire(class, undo) end
---@overload fun(index: integer, class: "WebSocketsConnection", undo: Undo?, count: integer?): WebSocketsConnection
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WebSocketsConnection
function WebServer:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "WebSocketsConnection"): WebSocketsConnection
---@overload fun(name: string, class: nil): WebSocketsConnection
function WebServer:Find(name, class) end
---@overload fun(name: string, class: "WebSocketsConnection"): WebSocketsConnection
---@overload fun(name: string, class: nil): Object
function WebServer:FindRecursive(name, class) end
