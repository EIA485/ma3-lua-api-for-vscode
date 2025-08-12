---@meta

---@class Revisions: Object A container for all revisions of a fixture type.
local Revisions = {}
---@return "Revisions"
function Revisions:GetClass() end
---@return "Revision"
function Revisions:GetChildClass() end
---@return FixtureType
function Revisions:Parent() end
---@param index integer
---@return Revision
function Revisions:Ptr(index) end
---@return Revision[]
function Revisions:Children() end
---@return Revision?
function Revisions:CurrentChild() end
---@overload fun(name: integer, role: nil): Revision
function Revisions:Get(name, role) end
---@overload fun(index: integer, class: "Revision", undo: Undo?): Revision
---@overload fun(index: integer, class: nil, undo: Undo?): Revision
function Revisions:Create(index, class, undo) end
---@overload fun(class: "Revision", undo: Undo?, count: integer?): Revision
---@overload fun(class: nil, undo: Undo?, count: integer?): Revision
function Revisions:Append(class, undo, count) end
---@overload fun(class: "Revision", undo: Undo?): Revision
---@overload fun(class: nil, undo: Undo?): Revision
function Revisions:Acquire(class, undo) end
---@overload fun(class: "Revision", undo: Undo?): Revision
---@overload fun(class: nil, undo: Undo?): Revision
---@deprecated use "Acquire" instead
function Revisions:Aquire(class, undo) end
---@overload fun(index: integer, class: "Revision", undo: Undo?, count: integer?): Revision
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Revision
function Revisions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Revision"): Revision
---@overload fun(name: string, class: nil): Revision
function Revisions:Find(name, class) end
---@overload fun(name: string, class: "Revision"): Revision
---@overload fun(name: string, class: nil): Object
function Revisions:FindRecursive(name, class) end
