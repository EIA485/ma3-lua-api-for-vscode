---@meta

---@class PresetUpdate: ProgUpdate
---@field PresetPoolNo integer
---@field PresetPoolName string
---@field PresetNo integer
---@field PresetName string
local PresetUpdate = {}
---@return "PresetUpdate"
function PresetUpdate:GetClass() end
---@return "Object"
function PresetUpdate:GetChildClass() end
---@return PresetUpdates
function PresetUpdate:Parent() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "PresetPoolNo"|"PresetNo"|"DataPoolNo"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "PresetPoolName"|"PresetName"|"DataPoolName"|"Parent"|"Name"|"Number"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "PresetPoolNo"|"PresetPoolName"|"PresetNo"|"PresetName"|"DataPoolNo"|"DataPoolName"|"Parent"|"Name"|"Number"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PresetUpdate:Get(name, role) end