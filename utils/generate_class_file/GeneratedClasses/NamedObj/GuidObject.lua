---@meta

---@class GuidObject: NamedObj An object with a guid and an appearance.
---@field Guid Crypto.Guid<128>
---@field Scribble Scribble
---@field Appearance Appearance
---@field NameAndApp string
---@field Note string
---@field Tags TagMap
local GuidObject = {
    Guid="00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00"
}
---@return "GuidObject"
function GuidObject:GetClass() end
---@return "Object"
function GuidObject:GetChildClass() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GuidObject:Get(name, role) end
