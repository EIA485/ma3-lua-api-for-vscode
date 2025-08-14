---@meta

---@class PSNProtocol: UdpProtocol
local PSNProtocol = {}
---@return "PSNProtocol"
function PSNProtocol:GetClass() end
---@return "System"
function PSNProtocol:GetChildClass() end
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