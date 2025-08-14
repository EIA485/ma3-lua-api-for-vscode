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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Width"|"Height"|"ExecConfigType"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Width"|"Height"|"ExecConfigType"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ConfigEntry
function Configuration:Get(name, role) end
---@generic T : ConfigEntry
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ConfigEntry
function Configuration:Create(index, class, undo) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ConfigEntry
function Configuration:Append(class, undo, count) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ConfigEntry
function Configuration:Acquire(class, undo) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ConfigEntry
---@deprecated use "Acquire" instead
function Configuration:Aquire(class, undo) end
---@generic T : ConfigEntry
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ConfigEntry
function Configuration:Insert(index, class, undo, count) end
---@generic T : ConfigEntry
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ConfigEntry
function Configuration:Find(class, undo) end