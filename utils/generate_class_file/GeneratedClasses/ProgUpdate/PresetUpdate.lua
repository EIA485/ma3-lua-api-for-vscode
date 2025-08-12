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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DataPoolNo", role: nil): integer
---@overload fun(name: "DataPoolName"|"Parent"|"Name"|"Number", role: nil): string
---@overload fun(name: "PresetPoolNo", role: nil): integer
---@overload fun(name: "PresetPoolName", role: nil): string
---@overload fun(name: "PresetNo", role: nil): integer
---@overload fun(name: "PresetName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DataPoolNo"|"DataPoolName"|"Parent"|"Name"|"Number"|"PresetPoolNo"|"PresetPoolName"|"PresetNo"|"PresetName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PresetUpdate:Get(name, role) end
