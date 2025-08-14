---@meta

---@class FeatureGroups: Object A container for feature groups.
local FeatureGroups = {}
---@return "FeatureGroups"
function FeatureGroups:GetClass() end
---@return "FeatureGroup"
function FeatureGroups:GetChildClass() end
---@return AttributeDefinitions
function FeatureGroups:Parent() end
---@param index integer
---@return FeatureGroup
function FeatureGroups:Ptr(index) end
---@return FeatureGroup[]
function FeatureGroups:Children() end
---@return FeatureGroup?
function FeatureGroups:CurrentChild() end
---@overload fun(name: integer, role: nil): FeatureGroup
function FeatureGroups:Get(name, role) end
---@generic T : FeatureGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FeatureGroup
function FeatureGroups:Create(index, class, undo) end
---@generic T : FeatureGroup
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FeatureGroup
function FeatureGroups:Append(class, undo, count) end
---@generic T : FeatureGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FeatureGroup
function FeatureGroups:Acquire(class, undo) end
---@generic T : FeatureGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FeatureGroup
---@deprecated use "Acquire" instead
function FeatureGroups:Aquire(class, undo) end
---@generic T : FeatureGroup
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FeatureGroup
function FeatureGroups:Insert(index, class, undo, count) end
---@generic T : FeatureGroup
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FeatureGroup
function FeatureGroups:Find(class, undo) end