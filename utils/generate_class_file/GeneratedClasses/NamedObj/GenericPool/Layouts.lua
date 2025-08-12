---@meta

---@class Layouts: GenericPool
local Layouts = {}
---@return "Layouts"
function Layouts:GetClass() end
---@return "Layout"
function Layouts:GetChildClass() end
---@return Pool
function Layouts:Parent() end
---@param index integer
---@return Layout
function Layouts:Ptr(index) end
---@return Layout[]
function Layouts:Children() end
---@return Layout?
function Layouts:CurrentChild() end
---@overload fun(name: integer, role: nil): Layout
function Layouts:Get(name, role) end
---@overload fun(index: integer, class: "Layout", undo: Undo?): Layout
---@overload fun(index: integer, class: nil, undo: Undo?): Layout
function Layouts:Create(index, class, undo) end
---@overload fun(class: "Layout", undo: Undo?, count: integer?): Layout
---@overload fun(class: nil, undo: Undo?, count: integer?): Layout
function Layouts:Append(class, undo, count) end
---@overload fun(class: "Layout", undo: Undo?): Layout
---@overload fun(class: nil, undo: Undo?): Layout
function Layouts:Acquire(class, undo) end
---@overload fun(class: "Layout", undo: Undo?): Layout
---@overload fun(class: nil, undo: Undo?): Layout
---@deprecated use "Acquire" instead
function Layouts:Aquire(class, undo) end
---@overload fun(index: integer, class: "Layout", undo: Undo?, count: integer?): Layout
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Layout
function Layouts:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Layout"): Layout
---@overload fun(name: string, class: nil): Layout
function Layouts:Find(name, class) end
---@overload fun(name: string, class: "Layout"): Layout
---@overload fun(name: string, class: nil): Object
function Layouts:FindRecursive(name, class) end
