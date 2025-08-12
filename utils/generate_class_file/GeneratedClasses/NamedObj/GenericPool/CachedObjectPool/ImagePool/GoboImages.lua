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
---@overload fun(index: integer, class: "GoboImage", undo: Undo?): GoboImage
---@overload fun(index: integer, class: nil, undo: Undo?): GoboImage
function GoboImages:Create(index, class, undo) end
---@overload fun(class: "GoboImage", undo: Undo?, count: integer?): GoboImage
---@overload fun(class: nil, undo: Undo?, count: integer?): GoboImage
function GoboImages:Append(class, undo, count) end
---@overload fun(class: "GoboImage", undo: Undo?): GoboImage
---@overload fun(class: nil, undo: Undo?): GoboImage
function GoboImages:Acquire(class, undo) end
---@overload fun(class: "GoboImage", undo: Undo?): GoboImage
---@overload fun(class: nil, undo: Undo?): GoboImage
---@deprecated use "Acquire" instead
function GoboImages:Aquire(class, undo) end
---@overload fun(index: integer, class: "GoboImage", undo: Undo?, count: integer?): GoboImage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GoboImage
function GoboImages:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "GoboImage"): GoboImage
---@overload fun(name: string, class: nil): GoboImage
function GoboImages:Find(name, class) end
---@overload fun(name: string, class: "GoboImage"): GoboImage
---@overload fun(name: string, class: nil): Object
function GoboImages:FindRecursive(name, class) end
