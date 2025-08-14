---@meta

---@class DeactivationGroups: Object A container for exclusive groups.
local DeactivationGroups = {}
---@return "DeactivationGroups"
function DeactivationGroups:GetClass() end
---@return "DeactivationGroup"
function DeactivationGroups:GetChildClass() end
---@return AttributeDefinitions
function DeactivationGroups:Parent() end
---@param index integer
---@return DeactivationGroup
function DeactivationGroups:Ptr(index) end
---@return DeactivationGroup[]
function DeactivationGroups:Children() end
---@return DeactivationGroup?
function DeactivationGroups:CurrentChild() end
---@overload fun(name: integer, role: nil): DeactivationGroup
function DeactivationGroups:Get(name, role) end
---@generic T : DeactivationGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DeactivationGroup
function DeactivationGroups:Create(index, class, undo) end
---@generic T : DeactivationGroup
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DeactivationGroup
function DeactivationGroups:Append(class, undo, count) end
---@generic T : DeactivationGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeactivationGroup
function DeactivationGroups:Acquire(class, undo) end
---@generic T : DeactivationGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeactivationGroup
---@deprecated use "Acquire" instead
function DeactivationGroups:Aquire(class, undo) end
---@generic T : DeactivationGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DeactivationGroup
function DeactivationGroups:Insert(index, class, undo, count) end
---@generic T : DeactivationGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeactivationGroup
function DeactivationGroups:Find(class, undo) end