---@meta

---@class Sessions: Object
local Sessions = {}
---@return "Sessions"
function Sessions:GetClass() end
---@return "Session"
function Sessions:GetChildClass() end
---@generic T : Sessions
---@param class `T`
---@return boolean
function Sessions:IsClass(class) end
---@return MAnetSocket
function Sessions:Parent() end
---@param index integer
---@return Session
function Sessions:Ptr(index) end
---@return Session[]
function Sessions:Children() end
---@return Session?
function Sessions:CurrentChild() end
---@overload fun(name: integer, role: nil): Session
function Sessions:Get(name, role) end
---@generic T : Session
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Session
function Sessions:Create(index, class, undo) end
---@generic T : Session
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Session
function Sessions:Append(class, undo, count) end
---@generic T : Session
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Session
function Sessions:Acquire(class, undo) end
---@generic T : Session
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Session
---@deprecated use "Acquire" instead
function Sessions:Aquire(class, undo) end
---@generic T : Session
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Session
function Sessions:Insert(index, class, undo, count) end
---@generic T : Session
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Session
function Sessions:Find(class, undo) end
function Sessions:ActiveDisplay(property_name, property_value) end