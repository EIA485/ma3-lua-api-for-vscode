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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FeatureGroup"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FeatureGroup"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FTPreset
function FTPresetType:Get(name, role) end
---@generic T : FTPreset
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FTPreset
function FTPresetType:Create(index, class, undo) end
---@generic T : FTPreset
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FTPreset
function FTPresetType:Append(class, undo, count) end
---@generic T : FTPreset
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTPreset
function FTPresetType:Acquire(class, undo) end
---@generic T : FTPreset
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTPreset
---@deprecated use "Acquire" instead
function FTPresetType:Aquire(class, undo) end
---@generic T : FTPreset
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTPreset
function FTPresetType:Insert(index, class, undo, count) end
---@generic T : FTPreset
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTPreset
function FTPresetType:Find(class, undo) end