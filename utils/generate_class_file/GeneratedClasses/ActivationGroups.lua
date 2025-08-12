---@meta

---@class ActivationGroups: Object A container for activation groups.
local ActivationGroups = {}
---@return "ActivationGroups"
function ActivationGroups:GetClass() end
---@return "ActivationGroup"
function ActivationGroups:GetChildClass() end
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
---@overload fun(index: integer, class: "ActivationGroup", undo: Undo?): ActivationGroup
---@overload fun(index: integer, class: nil, undo: Undo?): ActivationGroup
function ActivationGroups:Create(index, class, undo) end
---@overload fun(class: "ActivationGroup", undo: Undo?, count: integer?): ActivationGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): ActivationGroup
function ActivationGroups:Append(class, undo, count) end
---@overload fun(class: "ActivationGroup", undo: Undo?): ActivationGroup
---@overload fun(class: nil, undo: Undo?): ActivationGroup
function ActivationGroups:Acquire(class, undo) end
---@overload fun(class: "ActivationGroup", undo: Undo?): ActivationGroup
---@overload fun(class: nil, undo: Undo?): ActivationGroup
---@deprecated use "Acquire" instead
function ActivationGroups:Aquire(class, undo) end
---@overload fun(index: integer, class: "ActivationGroup", undo: Undo?, count: integer?): ActivationGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ActivationGroup
function ActivationGroups:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ActivationGroup"): ActivationGroup
---@overload fun(name: string, class: nil): ActivationGroup
function ActivationGroups:Find(name, class) end
---@overload fun(name: string, class: "ActivationGroup"): ActivationGroup
---@overload fun(name: string, class: nil): Object
function ActivationGroups:FindRecursive(name, class) end
