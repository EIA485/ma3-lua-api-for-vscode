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
---@generic T : Layout
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Layout
function Layouts:Create(index, class, undo) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Layout
function Layouts:Append(class, undo, count) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Layout
function Layouts:Acquire(class, undo) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Layout
---@deprecated use "Acquire" instead
function Layouts:Aquire(class, undo) end
---@generic T : Layout
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Layout
function Layouts:Insert(index, class, undo, count) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Layout
function Layouts:Find(class, undo) end