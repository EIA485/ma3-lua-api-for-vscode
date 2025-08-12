---@meta

---@class ItemCollect: GraphicsObject A container of UILayoutGrid configuration items (for rows or columns)
local ItemCollect = {}
---@return "ItemCollect"
function ItemCollect:GetClass() end
---@return "Item"
function ItemCollect:GetChildClass() end
---@return UILayoutGrid
function ItemCollect:Parent() end
---@param index integer
---@return Item
function ItemCollect:Ptr(index) end
---@return Item[]
function ItemCollect:Children() end
---@return Item?
function ItemCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): Item
function ItemCollect:Get(name, role) end
---@overload fun(index: integer, class: "Item", undo: Undo?): Item
---@overload fun(index: integer, class: nil, undo: Undo?): Item
function ItemCollect:Create(index, class, undo) end
---@overload fun(class: "Item", undo: Undo?, count: integer?): Item
---@overload fun(class: nil, undo: Undo?, count: integer?): Item
function ItemCollect:Append(class, undo, count) end
---@overload fun(class: "Item", undo: Undo?): Item
---@overload fun(class: nil, undo: Undo?): Item
function ItemCollect:Acquire(class, undo) end
---@overload fun(class: "Item", undo: Undo?): Item
---@overload fun(class: nil, undo: Undo?): Item
---@deprecated use "Acquire" instead
function ItemCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Item", undo: Undo?, count: integer?): Item
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Item
function ItemCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Item"): Item
---@overload fun(name: string, class: nil): Item
function ItemCollect:Find(name, class) end
---@overload fun(name: string, class: "Item"): Item
---@overload fun(name: string, class: nil): Object
function ItemCollect:FindRecursive(name, class) end
