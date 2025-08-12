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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Pretty", role: nil): string
---@overload fun(name: "PresetMode", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Pretty"|"PresetMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Feature
function FeatureGroup:Get(name, role) end
---@overload fun(index: integer, class: "Feature", undo: Undo?): Feature
---@overload fun(index: integer, class: nil, undo: Undo?): Feature
function FeatureGroup:Create(index, class, undo) end
---@overload fun(class: "Feature", undo: Undo?, count: integer?): Feature
---@overload fun(class: nil, undo: Undo?, count: integer?): Feature
function FeatureGroup:Append(class, undo, count) end
---@overload fun(class: "Feature", undo: Undo?): Feature
---@overload fun(class: nil, undo: Undo?): Feature
function FeatureGroup:Acquire(class, undo) end
---@overload fun(class: "Feature", undo: Undo?): Feature
---@overload fun(class: nil, undo: Undo?): Feature
---@deprecated use "Acquire" instead
function FeatureGroup:Aquire(class, undo) end
---@overload fun(index: integer, class: "Feature", undo: Undo?, count: integer?): Feature
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Feature
function FeatureGroup:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Feature"): Feature
---@overload fun(name: string, class: nil): Feature
function FeatureGroup:Find(name, class) end
---@overload fun(name: string, class: "Feature"): Feature
---@overload fun(name: string, class: nil): Object
function FeatureGroup:FindRecursive(name, class) end
