---@meta

---@class Beam: Geometry A specialized geometry that represents the light emitter of a beam.
---@field PowerConsumption number
---@field LuminousIntensity number
---@field ColorTemperature number
---@field BeamAngle number
---@field BeamRadius number
---@field FieldAngle number
---@field LampType integer
---@field BeamType integer
---@field RectangleRatio number
---@field ThrowRatio number
---@field MultiBeamBlur number
---@field ColorRenderingIndex integer
---@field IsMainBeam integer
---@field EmitterSpectrum Emitter
local Beam = {
    PowerConsumption="1000",
    LuminousIntensity="10000",
    ColorTemperature="3000",
    BeamAngle="25.0",
    BeamRadius="0.05",
    FieldAngle="25.0",
    LampType="Discharge",
    BeamType="Wash",
    RectangleRatio="1.778",
    ThrowRatio="1.0",
    MultiBeamBlur="1.0",
    ColorRenderingIndex="100",
    IsMainBeam="No"
}
---@return "Beam"
function Beam:GetClass() end
---@return "Geometry"
function Beam:GetChildClass() end
---@overload fun(name: "EmitterSpectrum", role: nil): Emitter
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "LampType"|"BeamType"|"ColorRenderingIndex"|"IsMainBeam"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"BeamRadius"|"FieldAngle"|"RectangleRatio"|"ThrowRatio"|"MultiBeamBlur"|"RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"BeamRadius"|"FieldAngle"|"LampType"|"BeamType"|"RectangleRatio"|"ThrowRatio"|"MultiBeamBlur"|"ColorRenderingIndex"|"IsMainBeam"|"EmitterSpectrum"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Beam:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function Beam:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function Beam:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Beam:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function Beam:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function Beam:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Beam:Find(class, undo) end