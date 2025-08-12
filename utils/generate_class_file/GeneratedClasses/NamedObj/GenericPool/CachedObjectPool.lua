---@meta

---@class CachedObjectPool: GenericPool
---@field PoolObjectContentSizeLimitation integer
local CachedObjectPool = {
    PoolObjectContentSizeLimitation="0"
}
---@return "CachedObjectPool"
function CachedObjectPool:GetClass() end
---@return "Object"
function CachedObjectPool:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DefaultsLoaded"|"PoolObjectContentSizeLimitation", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultsLoaded"|"PoolObjectContentSizeLimitation", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CachedObjectPool:Get(name, role) end
