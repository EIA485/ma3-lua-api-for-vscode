---@meta

---@class BladeView: UILayoutGrid
local BladeView = {}
---@return "BladeView"
function BladeView:GetClass() end
---@return "BladeViewButton"
function BladeView:GetChildClass() end
---@param index integer
---@return BladeViewButton
function BladeView:Ptr(index) end
---@return BladeViewButton[]
function BladeView:Children() end
---@return BladeViewButton?
function BladeView:CurrentChild() end
---@overload fun(name: integer, role: nil): BladeViewButton
function BladeView:Get(name, role) end
---@overload fun(index: integer, class: "BladeViewButton", undo: Undo?): BladeViewButton
---@overload fun(index: integer, class: nil, undo: Undo?): BladeViewButton
function BladeView:Create(index, class, undo) end
---@overload fun(class: "BladeViewButton", undo: Undo?, count: integer?): BladeViewButton
---@overload fun(class: nil, undo: Undo?, count: integer?): BladeViewButton
function BladeView:Append(class, undo, count) end
---@overload fun(class: "BladeViewButton", undo: Undo?): BladeViewButton
---@overload fun(class: nil, undo: Undo?): BladeViewButton
function BladeView:Acquire(class, undo) end
---@overload fun(class: "BladeViewButton", undo: Undo?): BladeViewButton
---@overload fun(class: nil, undo: Undo?): BladeViewButton
---@deprecated use "Acquire" instead
function BladeView:Aquire(class, undo) end
---@overload fun(index: integer, class: "BladeViewButton", undo: Undo?, count: integer?): BladeViewButton
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BladeViewButton
function BladeView:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "BladeViewButton"): BladeViewButton
---@overload fun(name: string, class: nil): BladeViewButton
function BladeView:Find(name, class) end
---@overload fun(name: string, class: "BladeViewButton"): BladeViewButton
---@overload fun(name: string, class: nil): Object
function BladeView:FindRecursive(name, class) end
