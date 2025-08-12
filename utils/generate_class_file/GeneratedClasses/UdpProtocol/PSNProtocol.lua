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
---@overload fun(index: integer, class: "System", undo: Undo?): System
---@overload fun(index: integer, class: nil, undo: Undo?): System
function PSNProtocol:Create(index, class, undo) end
---@overload fun(class: "System", undo: Undo?, count: integer?): System
---@overload fun(class: nil, undo: Undo?, count: integer?): System
function PSNProtocol:Append(class, undo, count) end
---@overload fun(class: "System", undo: Undo?): System
---@overload fun(class: nil, undo: Undo?): System
function PSNProtocol:Acquire(class, undo) end
---@overload fun(class: "System", undo: Undo?): System
---@overload fun(class: nil, undo: Undo?): System
---@deprecated use "Acquire" instead
function PSNProtocol:Aquire(class, undo) end
---@overload fun(index: integer, class: "System", undo: Undo?, count: integer?): System
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): System
function PSNProtocol:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "System"): System
---@overload fun(name: string, class: nil): System
function PSNProtocol:Find(name, class) end
---@overload fun(name: string, class: "System"): System
---@overload fun(name: string, class: nil): Object
function PSNProtocol:FindRecursive(name, class) end
