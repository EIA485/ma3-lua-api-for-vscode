---@meta

---@class FTPresetType: Object
---@field FeatureGroup integer
local FTPresetType = {}
---@return "FTPresetType"
function FTPresetType:GetClass() end
---@return "FTPreset"
function FTPresetType:GetChildClass() end
---@return FTPresets
function FTPresetType:Parent() end
---@param index integer
---@return FTPreset
function FTPresetType:Ptr(index) end
---@return FTPreset[]
function FTPresetType:Children() end
---@return FTPreset?
function FTPresetType:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"FeatureGroup", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FeatureGroup", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FTPreset
function FTPresetType:Get(name, role) end
---@overload fun(index: integer, class: "FTPreset", undo: Undo?): FTPreset
---@overload fun(index: integer, class: nil, undo: Undo?): FTPreset
function FTPresetType:Create(index, class, undo) end
---@overload fun(class: "FTPreset", undo: Undo?, count: integer?): FTPreset
---@overload fun(class: nil, undo: Undo?, count: integer?): FTPreset
function FTPresetType:Append(class, undo, count) end
---@overload fun(class: "FTPreset", undo: Undo?): FTPreset
---@overload fun(class: nil, undo: Undo?): FTPreset
function FTPresetType:Acquire(class, undo) end
---@overload fun(class: "FTPreset", undo: Undo?): FTPreset
---@overload fun(class: nil, undo: Undo?): FTPreset
---@deprecated use "Acquire" instead
function FTPresetType:Aquire(class, undo) end
---@overload fun(index: integer, class: "FTPreset", undo: Undo?, count: integer?): FTPreset
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTPreset
function FTPresetType:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FTPreset"): FTPreset
---@overload fun(name: string, class: nil): FTPreset
function FTPresetType:Find(name, class) end
---@overload fun(name: string, class: "FTPreset"): FTPreset
---@overload fun(name: string, class: nil): Object
function FTPresetType:FindRecursive(name, class) end
