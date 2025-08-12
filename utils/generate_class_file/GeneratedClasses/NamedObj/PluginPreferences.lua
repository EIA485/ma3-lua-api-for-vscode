---@meta

---@class PluginPreferences: NamedObj
---@field DisplayIndex integer
local PluginPreferences = {
    DisplayIndex="None"
}
---@return "PluginPreferences"
function PluginPreferences:GetClass() end
---@return "Object"
function PluginPreferences:GetChildClass() end
---@return PluginPreferencesCollect
function PluginPreferences:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DisplayIndex", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DisplayIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PluginPreferences:Get(name, role) end
