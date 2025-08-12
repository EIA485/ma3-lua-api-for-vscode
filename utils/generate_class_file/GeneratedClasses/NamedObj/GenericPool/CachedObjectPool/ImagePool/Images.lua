---@meta

---@class Images: ImagePool
local Images = {}
---@return "Images"
function Images:GetClass() end
---@return "UserImage"
function Images:GetChildClass() end
---@param index integer
---@return UserImage
function Images:Ptr(index) end
---@return UserImage[]
function Images:Children() end
---@return UserImage?
function Images:CurrentChild() end
---@overload fun(name: integer, role: nil): UserImage
function Images:Get(name, role) end
---@overload fun(index: integer, class: "UserImage", undo: Undo?): UserImage
---@overload fun(index: integer, class: nil, undo: Undo?): UserImage
function Images:Create(index, class, undo) end
---@overload fun(class: "UserImage", undo: Undo?, count: integer?): UserImage
---@overload fun(class: nil, undo: Undo?, count: integer?): UserImage
function Images:Append(class, undo, count) end
---@overload fun(class: "UserImage", undo: Undo?): UserImage
---@overload fun(class: nil, undo: Undo?): UserImage
function Images:Acquire(class, undo) end
---@overload fun(class: "UserImage", undo: Undo?): UserImage
---@overload fun(class: nil, undo: Undo?): UserImage
---@deprecated use "Acquire" instead
function Images:Aquire(class, undo) end
---@overload fun(index: integer, class: "UserImage", undo: Undo?, count: integer?): UserImage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserImage
function Images:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UserImage"): UserImage
---@overload fun(name: string, class: nil): UserImage
function Images:Find(name, class) end
---@overload fun(name: string, class: "UserImage"): UserImage
---@overload fun(name: string, class: nil): Object
function Images:FindRecursive(name, class) end
