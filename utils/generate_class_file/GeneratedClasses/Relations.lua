---@meta

---@class Relations: Object Container for all relations inside a DMX mode of a fixture type.
local Relations = {}
---@return "Relations"
function Relations:GetClass() end
---@return "Relation"
function Relations:GetChildClass() end
---@return DMXMode
function Relations:Parent() end
---@param index integer
---@return Relation
function Relations:Ptr(index) end
---@return Relation[]
function Relations:Children() end
---@return Relation?
function Relations:CurrentChild() end
---@overload fun(name: integer, role: nil): Relation
function Relations:Get(name, role) end
---@overload fun(index: integer, class: "Relation", undo: Undo?): Relation
---@overload fun(index: integer, class: nil, undo: Undo?): Relation
function Relations:Create(index, class, undo) end
---@overload fun(class: "Relation", undo: Undo?, count: integer?): Relation
---@overload fun(class: nil, undo: Undo?, count: integer?): Relation
function Relations:Append(class, undo, count) end
---@overload fun(class: "Relation", undo: Undo?): Relation
---@overload fun(class: nil, undo: Undo?): Relation
function Relations:Acquire(class, undo) end
---@overload fun(class: "Relation", undo: Undo?): Relation
---@overload fun(class: nil, undo: Undo?): Relation
---@deprecated use "Acquire" instead
function Relations:Aquire(class, undo) end
---@overload fun(index: integer, class: "Relation", undo: Undo?, count: integer?): Relation
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Relation
function Relations:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Relation"): Relation
---@overload fun(name: string, class: nil): Relation
function Relations:Find(name, class) end
---@overload fun(name: string, class: "Relation"): Relation
---@overload fun(name: string, class: nil): Object
function Relations:FindRecursive(name, class) end
