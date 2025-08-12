---@meta

---@class GridColumnBitFilter: GridColumnFilter
---@field Bits Container.Mask32
local GridColumnBitFilter = {}
---@return "GridColumnBitFilter"
function GridColumnBitFilter:GetClass() end
---@return "Object"
function GridColumnBitFilter:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Inclusive", role: nil): boolean
---@overload fun(name: "Bits", role: nil): Container.Mask32
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Inclusive"|"Bits", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridColumnBitFilter:Get(name, role) end
