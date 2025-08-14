---@meta

---@class Users: Object
local Users = {}
---@return "Users"
function Users:GetClass() end
---@return "User"
function Users:GetChildClass() end
---@return Root
function Users:Parent() end
---@param index integer
---@return User
function Users:Ptr(index) end
---@return User[]
function Users:Children() end
---@return User?
function Users:CurrentChild() end
---@overload fun(name: integer, role: nil): User
function Users:Get(name, role) end
---@generic T : User
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): User
function Users:Create(index, class, undo) end
---@generic T : User
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): User
function Users:Append(class, undo, count) end
---@generic T : User
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): User
function Users:Acquire(class, undo) end
---@generic T : User
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): User
---@deprecated use "Acquire" instead
function Users:Aquire(class, undo) end
---@generic T : User
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): User
function Users:Insert(index, class, undo, count) end
---@generic T : User
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): User
function Users:Find(class, undo) end