---@meta

---@class GridColumnBitFilter: GridColumnFilter
---@field Bits Container.Mask32
local GridColumnBitFilter = {}
---@return "GridColumnBitFilter"
function GridColumnBitFilter:GetClass() end
---@return "Object"
function GridColumnBitFilter:GetChildClass() end
---@overload fun(name: "Bits", role: nil): Container.Mask32
---@overload fun(name: "Inclusive"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Bits"|"Inclusive"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridColumnBitFilter:Get(name, role) end