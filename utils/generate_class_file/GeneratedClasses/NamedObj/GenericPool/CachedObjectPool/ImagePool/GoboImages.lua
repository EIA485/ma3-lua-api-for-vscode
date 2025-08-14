---@meta

---@class GoboImages: ImagePool
local GoboImages = {}
---@return "GoboImages"
function GoboImages:GetClass() end
---@return "GoboImage"
function GoboImages:GetChildClass() end
---@param index integer
---@return GoboImage
function GoboImages:Ptr(index) end
---@return GoboImage[]
function GoboImages:Children() end
---@return GoboImage?
function GoboImages:CurrentChild() end
---@overload fun(name: integer, role: nil): GoboImage
function GoboImages:Get(name, role) end
---@generic T : GoboImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GoboImage
function GoboImages:Create(index, class, undo) end
---@generic T : GoboImage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GoboImage
function GoboImages:Append(class, undo, count) end
---@generic T : GoboImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GoboImage
function GoboImages:Acquire(class, undo) end
---@generic T : GoboImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GoboImage
---@deprecated use "Acquire" instead
function GoboImages:Aquire(class, undo) end
---@generic T : GoboImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GoboImage
function GoboImages:Insert(index, class, undo, count) end
---@generic T : GoboImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GoboImage
function GoboImages:Find(class, undo) end