---@meta

---@class ActivationGroups: Object A container for activation groups.
local ActivationGroups = {}
---@return "ActivationGroups"
function ActivationGroups:GetClass() end
---@return "ActivationGroup"
function ActivationGroups:GetChildClass() end
---@generic T : ActivationGroups
---@param class `T`
---@return boolean
function ActivationGroups:IsClass(class) end
---@return AttributeDefinitions
function ActivationGroups:Parent() end
---@param index integer
---@return ActivationGroup
function ActivationGroups:Ptr(index) end
---@return ActivationGroup[]
function ActivationGroups:Children() end
---@return ActivationGroup?
function ActivationGroups:CurrentChild() end
---@overload fun(name: integer, role: nil): ActivationGroup
function ActivationGroups:Get(name, role) end
---@generic T : ActivationGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ActivationGroup
function ActivationGroups:Create(index, class, undo) end
---@generic T : ActivationGroup
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ActivationGroup
function ActivationGroups:Append(class, undo, count) end
---@generic T : ActivationGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ActivationGroup
function ActivationGroups:Acquire(class, undo) end
---@generic T : ActivationGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ActivationGroup
---@deprecated use "Acquire" instead
function ActivationGroups:Aquire(class, undo) end
---@generic T : ActivationGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ActivationGroup
function ActivationGroups:Insert(index, class, undo, count) end
---@generic T : ActivationGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ActivationGroup
function ActivationGroups:Find(class, undo) end
---@overload fun(property_name: "AttribCount", property_value: integer)
---@overload fun(property_name: "DeactivationGroup", property_value: DeactivationGroup)
---@overload fun(property_name: "DeactivationGroup", property_value: DeactivationGroup)
---@overload fun(property_name: "AttribCount", property_value: integer)
function ActivationGroups:DeactivationGroup(property_name, property_value) end