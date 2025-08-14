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
---@overload fun(name: "CrossSectionType", role: nil): CrossSectionType
---@overload fun(name: "LinkedGeometry", role: nil): Geometry
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "StructureType", role: nil): StructureType
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "CrossSectionHeight"|"CrossSectionWallThickness"|"RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "TrussCrossSection"|"Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "LinkedGeometry"|"StructureType"|"CrossSectionType"|"CrossSectionHeight"|"CrossSectionWallThickness"|"TrussCrossSection"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Structure:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function Structure:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function Structure:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Structure:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function Structure:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function Structure:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Structure:Find(class, undo) end