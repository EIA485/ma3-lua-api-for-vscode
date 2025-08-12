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
---@overload fun(index: integer, class: "User", undo: Undo?): User
---@overload fun(index: integer, class: nil, undo: Undo?): User
function Users:Create(index, class, undo) end
---@overload fun(class: "User", undo: Undo?, count: integer?): User
---@overload fun(class: nil, undo: Undo?, count: integer?): User
function Users:Append(class, undo, count) end
---@overload fun(class: "User", undo: Undo?): User
---@overload fun(class: nil, undo: Undo?): User
function Users:Acquire(class, undo) end
---@overload fun(class: "User", undo: Undo?): User
---@overload fun(class: nil, undo: Undo?): User
---@deprecated use "Acquire" instead
function Users:Aquire(class, undo) end
---@overload fun(index: integer, class: "User", undo: Undo?, count: integer?): User
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): User
function Users:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "User"): User
---@overload fun(name: string, class: nil): User
function Users:Find(name, class) end
---@overload fun(name: string, class: "User"): User
---@overload fun(name: string, class: nil): Object
function Users:FindRecursive(name, class) end
