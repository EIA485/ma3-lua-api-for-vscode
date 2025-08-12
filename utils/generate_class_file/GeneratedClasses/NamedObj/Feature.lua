---@meta

---@class Feature: NamedObj Defines a group of attributes for the encoder bar.
---@field Attrib
Count integer
---@field Log
Channels string
local Feature = {}
---@return "Feature"
function Feature:GetClass() end
---@return "Object"
function Feature:GetChildClass() end
---@return FeatureGroup
function Feature:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Attrib
Count", role: nil): integer
---@overload fun(name: "Log
Channels", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attrib
Count"|"Log
Channels", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Feature:Get(name, role) end
