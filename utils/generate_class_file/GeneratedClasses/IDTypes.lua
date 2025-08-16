---@meta

---@class IDTypes: Object Displays all fixtures of one ID type.
local IDTypes = {}
---@return "IDTypes"
function IDTypes:GetClass() end
---@return "IDs"
function IDTypes:GetChildClass() end
---@generic T : IDTypes
---@param class `T`
---@return boolean
function IDTypes:IsClass(class) end
---@return Patch
function IDTypes:Parent() end
---@param index integer
---@return IDs
function IDTypes:Ptr(index) end
---@return IDs[]
function IDTypes:Children() end
---@return IDs?
function IDTypes:CurrentChild() end
---@overload fun(name: integer, role: nil): IDs
function IDTypes:Get(name, role) end
---@generic T : IDs
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): IDs
function IDTypes:Create(index, class, undo) end
---@generic T : IDs
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): IDs
function IDTypes:Append(class, undo, count) end
---@generic T : IDs
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IDs
function IDTypes:Acquire(class, undo) end
---@generic T : IDs
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IDs
---@deprecated use "Acquire" instead
function IDTypes:Aquire(class, undo) end
---@generic T : IDs
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IDs
function IDTypes:Insert(index, class, undo, count) end
---@generic T : IDs
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IDs
function IDTypes:Find(class, undo) end
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "MaxID"|"Used", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
function IDTypes:SetChildren(property_name, property_value) end