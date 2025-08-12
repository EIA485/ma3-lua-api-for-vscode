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
---@overload fun(index: integer, class: "TreeViewRow", undo: Undo?): TreeViewRow
---@overload fun(index: integer, class: nil, undo: Undo?): TreeViewRow
function TreeViewRows:Create(index, class, undo) end
---@overload fun(class: "TreeViewRow", undo: Undo?, count: integer?): TreeViewRow
---@overload fun(class: nil, undo: Undo?, count: integer?): TreeViewRow
function TreeViewRows:Append(class, undo, count) end
---@overload fun(class: "TreeViewRow", undo: Undo?): TreeViewRow
---@overload fun(class: nil, undo: Undo?): TreeViewRow
function TreeViewRows:Acquire(class, undo) end
---@overload fun(class: "TreeViewRow", undo: Undo?): TreeViewRow
---@overload fun(class: nil, undo: Undo?): TreeViewRow
---@deprecated use "Acquire" instead
function TreeViewRows:Aquire(class, undo) end
---@overload fun(index: integer, class: "TreeViewRow", undo: Undo?, count: integer?): TreeViewRow
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TreeViewRow
function TreeViewRows:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TreeViewRow"): TreeViewRow
---@overload fun(name: string, class: nil): TreeViewRow
function TreeViewRows:Find(name, class) end
---@overload fun(name: string, class: "TreeViewRow"): TreeViewRow
---@overload fun(name: string, class: nil): Object
function TreeViewRows:FindRecursive(name, class) end
