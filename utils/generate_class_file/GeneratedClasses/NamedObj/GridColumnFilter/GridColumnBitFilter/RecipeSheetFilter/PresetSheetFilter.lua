---@meta

---@class PresetSheetFilter: RecipeSheetFilter
---@field Preset Preset
local PresetSheetFilter = {}
---@return "PresetSheetFilter"
function PresetSheetFilter:GetClass() end
---@return "Object"
function PresetSheetFilter:GetChildClass() end
---@overload fun(name: "Bits", role: nil): Container.Mask32
---@overload fun(name: "Preset", role: nil): Preset
---@overload fun(name: "Inclusive"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Preset"|"Bits"|"Inclusive"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PresetSheetFilter:Get(name, role) end