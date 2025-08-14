---@meta

---@class PresetGridData: ExpandedPresetGridData
---@field Target Preset
local PresetGridData = {}
---@return "PresetGridData"
function PresetGridData:GetClass() end
---@return "Object"
function PresetGridData:GetChildClass() end
---@overload fun(name: "Target", role: nil): Preset
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Target"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PresetGridData:Get(name, role) end