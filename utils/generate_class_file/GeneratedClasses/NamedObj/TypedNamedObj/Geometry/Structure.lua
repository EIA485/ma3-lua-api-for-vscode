---@meta

---@class Structure: Geometry
---@field LinkedGeometry Geometry
---@field StructureType StructureType
---@field CrossSectionType CrossSectionType
---@field CrossSectionHeight number
---@field CrossSectionWallThickness number
---@field TrussCrossSection string
local Structure = {}
---@return "Structure"
function Structure:GetClass() end
---@return "Geometry"
function Structure:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type", role: nil): string
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries", role: nil): integer
---@overload fun(name: "LinkedGeometry", role: nil): Geometry
---@overload fun(name: "StructureType", role: nil): StructureType
---@overload fun(name: "CrossSectionType", role: nil): CrossSectionType
---@overload fun(name: "CrossSectionHeight"|"CrossSectionWallThickness", role: nil): number
---@overload fun(name: "TrussCrossSection", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"LinkedGeometry"|"StructureType"|"CrossSectionType"|"CrossSectionHeight"|"CrossSectionWallThickness"|"TrussCrossSection", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Structure:Get(name, role) end
