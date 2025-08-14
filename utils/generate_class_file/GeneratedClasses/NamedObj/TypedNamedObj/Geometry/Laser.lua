---@meta

---@class Laser: Geometry
---@field ColorType LaserColorType
---@field Color number
---@field OutputStrength number
---@field BeamDiameter number
---@field BeamDivergenceMin number
---@field BeamDivergenceMax number
---@field ScanAnglePan number
---@field ScanAngleTilt number
---@field ScanSpeed number
---@field Emitter Emitter
local Laser = {}
---@return "Laser"
function Laser:GetClass() end
---@return "Geometry"
function Laser:GetChildClass() end
---@overload fun(name: "Emitter", role: nil): Emitter
---@overload fun(name: "ColorType", role: nil): LaserColorType
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Color"|"OutputStrength"|"BeamDiameter"|"BeamDivergenceMin"|"BeamDivergenceMax"|"ScanAnglePan"|"ScanAngleTilt"|"ScanSpeed"|"RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ColorType"|"Color"|"OutputStrength"|"BeamDiameter"|"BeamDivergenceMin"|"BeamDivergenceMax"|"ScanAnglePan"|"ScanAngleTilt"|"ScanSpeed"|"Emitter"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Laser:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function Laser:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function Laser:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Laser:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function Laser:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function Laser:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Laser:Find(class, undo) end