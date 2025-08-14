---@meta

---@class FeatureGroup: NamedObj Defines a group of features that logically belong together (eg. ICBF scheme).
---@field Pretty string
---@field PresetMode integer
local FeatureGroup = {
    PresetMode="Selective"
}
---@return "FeatureGroup"
function FeatureGroup:GetClass() end
---@return "Feature"
function FeatureGroup:GetChildClass() end
---@return FeatureGroups
function FeatureGroup:Parent() end
---@param index integer
---@return Feature
function FeatureGroup:Ptr(index) end
---@return Feature[]
function FeatureGroup:Children() end
---@return Feature?
function FeatureGroup:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "PresetMode"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Pretty"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Pretty"|"PresetMode"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Feature
function FeatureGroup:Get(name, role) end
---@generic T : Feature
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Feature
function FeatureGroup:Create(index, class, undo) end
---@generic T : Feature
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Feature
function FeatureGroup:Append(class, undo, count) end
---@generic T : Feature
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Feature
function FeatureGroup:Acquire(class, undo) end
---@generic T : Feature
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Feature
---@deprecated use "Acquire" instead
function FeatureGroup:Aquire(class, undo) end
---@generic T : Feature
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Feature
function FeatureGroup:Insert(index, class, undo, count) end
---@generic T : Feature
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Feature
function FeatureGroup:Find(class, undo) end