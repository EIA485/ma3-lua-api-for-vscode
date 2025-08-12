---@meta

---@class IllegalObject: Object
local IllegalObject = {}
---@return "IllegalObject"
function IllegalObject:GetClass() end
---@return "IllegalObject"
function IllegalObject:GetChildClass() end
---@param index integer
---@return IllegalObject
function IllegalObject:Ptr(index) end
---@return IllegalObject[]
function IllegalObject:Children() end
---@return IllegalObject?
function IllegalObject:CurrentChild() end
---@overload fun(name: integer, role: nil): IllegalObject
function IllegalObject:Get(name, role) end
---@overload fun(index: integer, class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(index: integer, class: nil, undo: Undo?): IllegalObject
function IllegalObject:Create(index, class, undo) end
---@overload fun(class: "IllegalObject", undo: Undo?, count: integer?): IllegalObject
---@overload fun(class: nil, undo: Undo?, count: integer?): IllegalObject
function IllegalObject:Append(class, undo, count) end
---@overload fun(class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(class: nil, undo: Undo?): IllegalObject
function IllegalObject:Acquire(class, undo) end
---@overload fun(class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(class: nil, undo: Undo?): IllegalObject
---@deprecated use "Acquire" instead
function IllegalObject:Aquire(class, undo) end
---@overload fun(index: integer, class: "IllegalObject", undo: Undo?, count: integer?): IllegalObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IllegalObject
function IllegalObject:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "IllegalObject"): IllegalObject
---@overload fun(name: string, class: nil): IllegalObject
function IllegalObject:Find(name, class) end
---@overload fun(name: string, class: "IllegalObject"): IllegalObject
---@overload fun(name: string, class: nil): Object
function IllegalObject:FindRecursive(name, class) end
