---@meta

---@class Sessions: Object
local Sessions = {}
---@return "Sessions"
function Sessions:GetClass() end
---@return "Session"
function Sessions:GetChildClass() end
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
---@overload fun(index: integer, class: "Session", undo: Undo?): Session
---@overload fun(index: integer, class: nil, undo: Undo?): Session
function Sessions:Create(index, class, undo) end
---@overload fun(class: "Session", undo: Undo?, count: integer?): Session
---@overload fun(class: nil, undo: Undo?, count: integer?): Session
function Sessions:Append(class, undo, count) end
---@overload fun(class: "Session", undo: Undo?): Session
---@overload fun(class: nil, undo: Undo?): Session
function Sessions:Acquire(class, undo) end
---@overload fun(class: "Session", undo: Undo?): Session
---@overload fun(class: nil, undo: Undo?): Session
---@deprecated use "Acquire" instead
function Sessions:Aquire(class, undo) end
---@overload fun(index: integer, class: "Session", undo: Undo?, count: integer?): Session
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Session
function Sessions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Session"): Session
---@overload fun(name: string, class: nil): Session
function Sessions:Find(name, class) end
---@overload fun(name: string, class: "Session"): Session
---@overload fun(name: string, class: nil): Object
function Sessions:FindRecursive(name, class) end
