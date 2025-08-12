---@meta

---@class ConfigEntry: Object
---@field Key string
---@field EncoderClick string
---@field EncoderRight string
---@field EncoderLeft string
---@field Fader PresetActionToken
---@field Column string
---@field Row string
---@field Width string
---@field Height string
---@field Fallback string
local ConfigEntry = {}
---@return "ConfigEntry"
function ConfigEntry:GetClass() end
---@return "Object"
function ConfigEntry:GetChildClass() end
---@return Configuration
function ConfigEntry:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Key"|"EncoderClick"|"EncoderRight"|"EncoderLeft", role: nil): string
---@overload fun(name: "Fader", role: nil): PresetActionToken
---@overload fun(name: "Column"|"Row"|"Width"|"Height"|"Fallback", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Key"|"EncoderClick"|"EncoderRight"|"EncoderLeft"|"Fader"|"Column"|"Row"|"Width"|"Height"|"Fallback", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ConfigEntry:Get(name, role) end
