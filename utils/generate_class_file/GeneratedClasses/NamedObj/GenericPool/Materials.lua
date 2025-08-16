---@meta

---@class Materials: GenericPool
local Materials = {}
---@return "Materials"
function Materials:GetClass() end
---@return "MaterialContent"
function Materials:GetChildClass() end
---@generic T : Materials
---@param class `T`
---@return boolean
function Materials:IsClass(class) end
---@return UserProfile
function Materials:Parent() end
---@param index integer
---@return MaterialContent
function Materials:Ptr(index) end
---@return MaterialContent[]
function Materials:Children() end
---@return MaterialContent?
function Materials:CurrentChild() end
---@overload fun(name: integer, role: nil): MaterialContent
function Materials:Get(name, role) end
---@generic T : MaterialContent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MaterialContent
function Materials:Create(index, class, undo) end
---@generic T : MaterialContent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MaterialContent
function Materials:Append(class, undo, count) end
---@generic T : MaterialContent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MaterialContent
function Materials:Acquire(class, undo) end
---@generic T : MaterialContent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MaterialContent
---@deprecated use "Acquire" instead
function Materials:Aquire(class, undo) end
---@generic T : MaterialContent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MaterialContent
function Materials:Insert(index, class, undo, count) end
---@generic T : MaterialContent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MaterialContent
function Materials:Find(class, undo) end
function Materials:SetChildren(property_name, property_value) end