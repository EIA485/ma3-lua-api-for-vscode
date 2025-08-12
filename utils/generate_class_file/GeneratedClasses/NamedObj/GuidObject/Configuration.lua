---@meta

---@class Configuration: GuidObject
---@field Width integer
---@field Height integer
---@field ExecConfigType integer
local Configuration = {
    Width="1",
    Height="1",
    ExecConfigType="Sequence"
}
---@return "Configuration"
function Configuration:GetClass() end
---@return "ConfigEntry"
function Configuration:GetChildClass() end
---@return Configurations
function Configuration:Parent() end
---@param index integer
---@return ConfigEntry
function Configuration:Ptr(index) end
---@return ConfigEntry[]
function Configuration:Children() end
---@return ConfigEntry?
function Configuration:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Width"|"Height"|"ExecConfigType", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Width"|"Height"|"ExecConfigType", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ConfigEntry
function Configuration:Get(name, role) end
---@overload fun(index: integer, class: "ConfigEntry", undo: Undo?): ConfigEntry
---@overload fun(index: integer, class: nil, undo: Undo?): ConfigEntry
function Configuration:Create(index, class, undo) end
---@overload fun(class: "ConfigEntry", undo: Undo?, count: integer?): ConfigEntry
---@overload fun(class: nil, undo: Undo?, count: integer?): ConfigEntry
function Configuration:Append(class, undo, count) end
---@overload fun(class: "ConfigEntry", undo: Undo?): ConfigEntry
---@overload fun(class: nil, undo: Undo?): ConfigEntry
function Configuration:Acquire(class, undo) end
---@overload fun(class: "ConfigEntry", undo: Undo?): ConfigEntry
---@overload fun(class: nil, undo: Undo?): ConfigEntry
---@deprecated use "Acquire" instead
function Configuration:Aquire(class, undo) end
---@overload fun(index: integer, class: "ConfigEntry", undo: Undo?, count: integer?): ConfigEntry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ConfigEntry
function Configuration:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "ConfigEntry"): ConfigEntry
---@overload fun(name: string, class: nil): ConfigEntry
function Configuration:Find(name, class) end
---@overload fun(name: string, class: "ConfigEntry"): ConfigEntry
---@overload fun(name: string, class: nil): Object
function Configuration:FindRecursive(name, class) end
