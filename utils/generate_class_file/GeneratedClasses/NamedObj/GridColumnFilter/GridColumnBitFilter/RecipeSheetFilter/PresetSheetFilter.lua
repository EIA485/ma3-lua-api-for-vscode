---@meta

---@class PresetSheetFilter: RecipeSheetFilter
---@field Preset Preset
local PresetSheetFilter = {}
---@return "PresetSheetFilter"
function PresetSheetFilter:GetClass() end
---@return "Object"
function PresetSheetFilter:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Inclusive", role: nil): boolean
---@overload fun(name: "Bits", role: nil): Container.Mask32
---@overload fun(name: "Preset", role: nil): Preset
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Inclusive"|"Bits"|"Preset", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PresetSheetFilter:Get(name, role) end
