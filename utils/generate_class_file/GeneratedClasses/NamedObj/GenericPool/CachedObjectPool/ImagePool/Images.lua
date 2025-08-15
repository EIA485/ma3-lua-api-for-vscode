---@meta

---@class Images: ImagePool
local Images = {}
---@return "Images"
function Images:GetClass() end
---@return "UserImage"
function Images:GetChildClass() end
---@generic T : Images
---@param class `T`
---@return boolean
function Images:IsClass(class) end
---@param index integer
---@return UserImage
function Images:Ptr(index) end
---@return UserImage[]
function Images:Children() end
---@return UserImage?
function Images:CurrentChild() end
---@overload fun(name: integer, role: nil): UserImage
function Images:Get(name, role) end
---@generic T : UserImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserImage
function Images:Create(index, class, undo) end
---@generic T : UserImage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserImage
function Images:Append(class, undo, count) end
---@generic T : UserImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserImage
function Images:Acquire(class, undo) end
---@generic T : UserImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserImage
---@deprecated use "Acquire" instead
function Images:Aquire(class, undo) end
---@generic T : UserImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserImage
function Images:Insert(index, class, undo, count) end
---@generic T : UserImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserImage
function Images:Find(class, undo) end
function Images:AddAlpha(property_name, property_value) end