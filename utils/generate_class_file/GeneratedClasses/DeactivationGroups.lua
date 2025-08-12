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
---@overload fun(index: integer, class: "DeactivationGroup", undo: Undo?): DeactivationGroup
---@overload fun(index: integer, class: nil, undo: Undo?): DeactivationGroup
function DeactivationGroups:Create(index, class, undo) end
---@overload fun(class: "DeactivationGroup", undo: Undo?, count: integer?): DeactivationGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): DeactivationGroup
function DeactivationGroups:Append(class, undo, count) end
---@overload fun(class: "DeactivationGroup", undo: Undo?): DeactivationGroup
---@overload fun(class: nil, undo: Undo?): DeactivationGroup
function DeactivationGroups:Acquire(class, undo) end
---@overload fun(class: "DeactivationGroup", undo: Undo?): DeactivationGroup
---@overload fun(class: nil, undo: Undo?): DeactivationGroup
---@deprecated use "Acquire" instead
function DeactivationGroups:Aquire(class, undo) end
---@overload fun(index: integer, class: "DeactivationGroup", undo: Undo?, count: integer?): DeactivationGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DeactivationGroup
function DeactivationGroups:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DeactivationGroup"): DeactivationGroup
---@overload fun(name: string, class: nil): DeactivationGroup
function DeactivationGroups:Find(name, class) end
---@overload fun(name: string, class: "DeactivationGroup"): DeactivationGroup
---@overload fun(name: string, class: nil): Object
function DeactivationGroups:FindRecursive(name, class) end
