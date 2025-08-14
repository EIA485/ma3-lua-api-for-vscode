---@meta

---@class TreeViewRows: UIObject
local TreeViewRows = {}
---@return "TreeViewRows"
function TreeViewRows:GetClass() end
---@return "TreeViewRow"
function TreeViewRows:GetChildClass() end
---@return TreeViewFrame
function TreeViewRows:Parent() end
---@param index integer
---@return TreeViewRow
function TreeViewRows:Ptr(index) end
---@return TreeViewRow[]
function TreeViewRows:Children() end
---@return TreeViewRow?
function TreeViewRows:CurrentChild() end
---@overload fun(name: integer, role: nil): TreeViewRow
function TreeViewRows:Get(name, role) end
---@generic T : TreeViewRow
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TreeViewRow
function TreeViewRows:Create(index, class, undo) end
---@generic T : TreeViewRow
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TreeViewRow
function TreeViewRows:Append(class, undo, count) end
---@generic T : TreeViewRow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TreeViewRow
function TreeViewRows:Acquire(class, undo) end
---@generic T : TreeViewRow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TreeViewRow
---@deprecated use "Acquire" instead
function TreeViewRows:Aquire(class, undo) end
---@generic T : TreeViewRow
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TreeViewRow
function TreeViewRows:Insert(index, class, undo, count) end
---@generic T : TreeViewRow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TreeViewRow
function TreeViewRows:Find(class, undo) end