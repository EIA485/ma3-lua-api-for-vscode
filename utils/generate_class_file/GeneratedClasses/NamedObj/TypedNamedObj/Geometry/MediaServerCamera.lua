---@meta

---@class MediaServerCamera: Geometry A specialized geometry that represents a media server camera.
local MediaServerCamera = {}
---@return "MediaServerCamera"
function MediaServerCamera:GetClass() end
---@return "Geometry"
function MediaServerCamera:GetChildClass() end
---@generic T : MediaServerCamera
---@param class `T`
---@return boolean
function MediaServerCamera:IsClass(class) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function MediaServerCamera:Create(index, class, undo) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function MediaServerCamera:Append(class, undo, count) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function MediaServerCamera:Acquire(class, undo) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function MediaServerCamera:Aquire(class, undo) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function MediaServerCamera:Insert(index, class, undo, count) end
---@generic T : GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function MediaServerCamera:Find(class, undo) end
---@overload fun(property_name: "SupportType", property_value: SupportType)
---@overload fun(property_name: "ColorType", property_value: LaserColorType)
---@overload fun(property_name: "LampType", property_value: LampType)
---@overload fun(property_name: "RopeOffset", property_value: Math.Vector3<float>)
---@overload fun(property_name: "StructureType", property_value: StructureType)
---@overload fun(property_name: "CrossSectionType", property_value: CrossSectionType)
---@overload fun(property_name: "BeamType", property_value: BeamType)
---@overload fun(property_name: "FuseRating", property_value: FuseRating)
---@overload fun(property_name: "GridAuto", property_value: EC_AutoGrid)
---@overload fun(property_name: "Orientation", property_value: Orientation)
---@overload fun(property_name: "ComponentType", property_value: ComponentType)
---@overload fun(property_name: "BeamType", property_value: BeamType)
---@overload fun(property_name: "ComponentType", property_value: ComponentType)
---@overload fun(property_name: "CrossSectionType", property_value: CrossSectionType)
---@overload fun(property_name: "GridAuto", property_value: EC_AutoGrid)
---@overload fun(property_name: "GridX"|"GridZ"|"GridY", property_value: EC_NoGrid)
---@overload fun(property_name: "EmitterSpectrum"|"Emitter", property_value: Emitter)
---@overload fun(property_name: "FuseRating", property_value: FuseRating)
---@overload fun(property_name: "Geometry"|"LinkedGeometry", property_value: Geometry)
---@overload fun(property_name: "LampType", property_value: LampType)
---@overload fun(property_name: "ColorType", property_value: LaserColorType)
---@overload fun(property_name: "PosX"|"PosZ"|"PosY", property_value: LengthPropertyValue)
---@overload fun(property_name: "RopeOffset", property_value: Math.Vector3<float>)
---@overload fun(property_name: "Model"|"Model", property_value: Model)
---@overload fun(property_name: "Orientation", property_value: Orientation)
---@overload fun(property_name: "StructureType", property_value: StructureType)
---@overload fun(property_name: "SupportType", property_value: SupportType)
---@overload fun(property_name: "GridInvY"|"GridInvZ"|"GridSwapXY"|"MergeGeometries"|"GridInvX"|"IsMainBeam", property_value: YesNo|boolean)
---@overload fun(property_name: "Count"|"SignalLayer"|"ColorRenderingIndex"|"PinCount", property_value: integer)
---@overload fun(property_name: "CosPhi"|"FuseCurrent"|"PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"Color"|"BeamRadius"|"ThrowRatio"|"OutputStrength"|"FieldAngle"|"BeamDiameter"|"BeamDivergenceMin"|"CapacityX"|"RectangleRatio"|"BeamDivergenceMax"|"CapacityY"|"MultiBeamBlur"|"ScanAnglePan"|"ResistanceX"|"ScanAngleTilt"|"CapacityZ"|"ScanSpeed"|"CapacityXX"|"CapacityYY"|"CapacityZZ"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ"|"RotX"|"ElectricalPayLoad"|"MaxPayLoad"|"RotY"|"VoltageRangeMax"|"RotZ"|"CrossSectionHeight"|"VoltageRangeMin"|"CrossSectionWallThickness"|"FrequencyRangeMax"|"FrequencyRangeMin"|"Voltage", property_value: number)
---@overload fun(property_name: "RopeCrossSection"|"ConnectorType"|"Texture"|"WireGroup"|"TrussCrossSection"|"SignalType", property_value: string)
function MediaServerCamera:ComponentType(property_name, property_value) end