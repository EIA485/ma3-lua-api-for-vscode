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
---@overload fun(index: integer, class: "FeatureGroup", undo: Undo?): FeatureGroup
---@overload fun(index: integer, class: nil, undo: Undo?): FeatureGroup
function FeatureGroups:Create(index, class, undo) end
---@overload fun(class: "FeatureGroup", undo: Undo?, count: integer?): FeatureGroup
---@overload fun(class: nil, undo: Undo?, count: integer?): FeatureGroup
function FeatureGroups:Append(class, undo, count) end
---@overload fun(class: "FeatureGroup", undo: Undo?): FeatureGroup
---@overload fun(class: nil, undo: Undo?): FeatureGroup
function FeatureGroups:Acquire(class, undo) end
---@overload fun(class: "FeatureGroup", undo: Undo?): FeatureGroup
---@overload fun(class: nil, undo: Undo?): FeatureGroup
---@deprecated use "Acquire" instead
function FeatureGroups:Aquire(class, undo) end
---@overload fun(index: integer, class: "FeatureGroup", undo: Undo?, count: integer?): FeatureGroup
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FeatureGroup
function FeatureGroups:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FeatureGroup"): FeatureGroup
---@overload fun(name: string, class: nil): FeatureGroup
function FeatureGroups:Find(name, class) end
---@overload fun(name: string, class: "FeatureGroup"): FeatureGroup
---@overload fun(name: string, class: nil): Object
function FeatureGroups:FindRecursive(name, class) end
