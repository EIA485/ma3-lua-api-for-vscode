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
---@generic T : WebSocketsConnection
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WebSocketsConnection
function WebServer:Create(index, class, undo) end
---@generic T : WebSocketsConnection
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WebSocketsConnection
function WebServer:Append(class, undo, count) end
---@generic T : WebSocketsConnection
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WebSocketsConnection
function WebServer:Acquire(class, undo) end
---@generic T : WebSocketsConnection
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WebSocketsConnection
---@deprecated use "Acquire" instead
function WebServer:Aquire(class, undo) end
---@generic T : WebSocketsConnection
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WebSocketsConnection
function WebServer:Insert(index, class, undo, count) end
---@generic T : WebSocketsConnection
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WebSocketsConnection
function WebServer:Find(class, undo) end