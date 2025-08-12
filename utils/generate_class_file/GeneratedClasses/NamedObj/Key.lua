---@meta

---@class Key: NamedObj Keys are used for low level identification and access in the manet network.
---@field Seed string
---@field BSLock Crypto.Key128
---@field BSKey Crypto.Key128
---@field MAnet integer
---@field Remote
Call integer
---@field Terminal integer
local Key = {
    MAnet="1",
    ["Remote
Call"]="1",
    Terminal="1"
}
---@return "Key"
function Key:GetClass() end
---@return "Object"
function Key:GetChildClass() end
---@return KeyRegistry
function Key:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Seed", role: nil): string
---@overload fun(name: "BSLock"|"BSKey", role: nil): Crypto.Key128
---@overload fun(name: "MAnet"|"Remote
Call"|"Terminal", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Seed"|"BSLock"|"BSKey"|"MAnet"|"Remote
Call"|"Terminal", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Key:Get(name, role) end
