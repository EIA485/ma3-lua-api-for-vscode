---@meta

---@class AddonVariables: Object
local AddonVariables = {}
---@return "AddonVariables"
function AddonVariables:GetClass() end
---@return "Variables"
function AddonVariables:GetChildClass() end
---@generic T : AddonVariables
---@param class `T`
---@return boolean
function AddonVariables:IsClass(class) end
---@param index integer
---@return Variables
function AddonVariables:Ptr(index) end
---@return Variables[]
function AddonVariables:Children() end
---@return Variables?
function AddonVariables:CurrentChild() end
---@overload fun(name: integer, role: nil): Variables
function AddonVariables:Get(name, role) end
---@generic T : Variables
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Variables
function AddonVariables:Create(index, class, undo) end
---@generic T : Variables
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Variables
function AddonVariables:Append(class, undo, count) end
---@generic T : Variables
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Variables
function AddonVariables:Acquire(class, undo) end
---@generic T : Variables
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Variables
---@deprecated use "Acquire" instead
function AddonVariables:Aquire(class, undo) end
---@generic T : Variables
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Variables
function AddonVariables:Insert(index, class, undo, count) end
---@generic T : Variables
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Variables
function AddonVariables:Find(class, undo) end
---@overload fun(property_name: "*", property_value: string)
---@overload fun(property_name: "*", property_value: string)
function AddonVariables:*(property_name, property_value) end