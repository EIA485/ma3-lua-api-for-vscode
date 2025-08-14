---@meta

---@class FTInfoGridData: GridData
---@field Channels DeskLightChannel[]
local FTInfoGridData = {}
---@return "FTInfoGridData"
function FTInfoGridData:GetClass() end
---@return "Object"
function FTInfoGridData:GetChildClass() end
---@overload fun(name: "Channels", role: nil): DeskLightChannel[]
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Channels"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FTInfoGridData:Get(name, role) end