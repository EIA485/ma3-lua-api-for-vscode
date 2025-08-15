---@meta

---@class Classes: Object
local Classes = {}
---@return "Classes"
function Classes:GetClass() end
---@return "Class"
function Classes:GetChildClass() end
---@generic T : Classes
---@param class `T`
---@return boolean
function Classes:IsClass(class) end
---@return Patch
function Classes:Parent() end
---@param index integer
---@return Class
function Classes:Ptr(index) end
---@return Class[]
function Classes:Children() end
---@return Class?
function Classes:CurrentChild() end
---@overload fun(name: integer, role: nil): Class
function Classes:Get(name, role) end
---@generic T : Class
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Class
function Classes:Create(index, class, undo) end
---@generic T : Class
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Class
function Classes:Append(class, undo, count) end
---@generic T : Class
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Class
function Classes:Acquire(class, undo) end
---@generic T : Class
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Class
---@deprecated use "Acquire" instead
function Classes:Aquire(class, undo) end
---@generic T : Class
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Class
function Classes:Insert(index, class, undo, count) end
---@generic T : Class
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Class
function Classes:Find(class, undo) end
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "Used", property_value: integer)
function Classes:Used(property_name, property_value) end