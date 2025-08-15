---@meta

---@class Beam: Geometry A specialized geometry that represents the light emitter of a beam.
---@field PowerConsumption number
---@field LuminousIntensity number
---@field ColorTemperature number
---@field BeamAngle number
---@field BeamRadius number
---@field FieldAngle number
---@field LampType LampType
---@field BeamType BeamType
---@field RectangleRatio number
---@field ThrowRatio number
---@field MultiBeamBlur number
---@field ColorRenderingIndex integer
---@field IsMainBeam YesNo|boolean
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
---@generic T : Beam
---@param class `T`
---@return boolean
function Beam:IsClass(class) end
---@return 47
function Beam:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "Type"
---@overload fun(idx: 16): "Model"
---@overload fun(idx: 17): "PosX"
---@overload fun(idx: 18): "PosY"
---@overload fun(idx: 19): "PosZ"
---@overload fun(idx: 20): "RotX"
---@overload fun(idx: 21): "RotY"
---@overload fun(idx: 22): "RotZ"
---@overload fun(idx: 23): "RotDirect"
---@overload fun(idx: 24): "GridAuto"
---@overload fun(idx: 25): "GridSwapXY"
---@overload fun(idx: 26): "GridInvX"
---@overload fun(idx: 27): "GridInvY"
---@overload fun(idx: 28): "GridInvZ"
---@overload fun(idx: 29): "GridX"
---@overload fun(idx: 30): "GridY"
---@overload fun(idx: 31): "GridZ"
---@overload fun(idx: 32): "MergeGeometries"
---@overload fun(idx: 33): "PowerConsumption"
---@overload fun(idx: 34): "LuminousIntensity"
---@overload fun(idx: 35): "ColorTemperature"
---@overload fun(idx: 36): "BeamAngle"
---@overload fun(idx: 37): "BeamRadius"
---@overload fun(idx: 38): "FieldAngle"
---@overload fun(idx: 39): "LampType"
---@overload fun(idx: 40): "BeamType"
---@overload fun(idx: 41): "RectangleRatio"
---@overload fun(idx: 42): "ThrowRatio"
---@overload fun(idx: 43): "MultiBeamBlur"
---@overload fun(idx: 44): "ColorRenderingIndex"
---@overload fun(idx: 45): "IsMainBeam"
---@overload fun(idx: 46): "EmitterSpectrum"
function Beam:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|25|26|27|28|32|45): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|15): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16|17|18|19|20|21|22|33|34|35|36|37|38|41|42|43|44|46): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|23): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: False, EnumCollection: EC_AutoGrid, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 29|30|31): {ExportIgnore: False, EnumCollection: EC_NoGrid, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 39): {ExportIgnore: False, EnumCollection: LampType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 40): {ExportIgnore: False, EnumCollection: BeamType, ReadOnly: False, ImportIgnore: False}
function Beam:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|24|25|26|27|28|32): "UInt32"
---@overload fun(idx: 7|8|13|15): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16|46): "Handle"
---@overload fun(idx: 17|18|19): "FloatLength"
---@overload fun(idx: 20|21|22|33|34|35|36|37|38|41|42|43): "Float"
---@overload fun(idx: 23): "Custom"
---@overload fun(idx: 29|30|31): "Int32"
---@overload fun(idx: 39|40|44|45): "UInt8"
function Beam:PropertyType(idx) end
---@overload fun(name: "BeamType", role: nil): BeamType
---@overload fun(name: "GridAuto", role: nil): EC_AutoGrid
---@overload fun(name: "GridX"|"GridY"|"GridZ", role: nil): EC_NoGrid
---@overload fun(name: "EmitterSpectrum", role: nil): Emitter
---@overload fun(name: "LampType", role: nil): LampType
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"MergeGeometries"|"IsMainBeam", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ColorRenderingIndex", role: nil): integer
---@overload fun(name: "RotX"|"RotY"|"RotZ"|"PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"BeamRadius"|"FieldAngle"|"RectangleRatio"|"ThrowRatio"|"MultiBeamBlur", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Type", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"BeamRadius"|"FieldAngle"|"LampType"|"BeamType"|"RectangleRatio"|"ThrowRatio"|"MultiBeamBlur"|"ColorRenderingIndex"|"IsMainBeam"|"EmitterSpectrum", role: Enums.Roles): string
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
---@overload fun(property_name: "BeamType", property_value: BeamType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "GridAuto", property_value: EC_AutoGrid, override_change_level: ChangeLevel?)
---@overload fun(property_name: "GridX"|"GridY"|"GridZ", property_value: EC_NoGrid, override_change_level: ChangeLevel?)
---@overload fun(property_name: "EmitterSpectrum", property_value: Emitter, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LampType", property_value: LampType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PosX"|"PosY"|"PosZ", property_value: LengthPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Model", property_value: Model, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"MergeGeometries"|"IsMainBeam", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"ColorRenderingIndex", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RotX"|"RotY"|"RotZ"|"PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"BeamRadius"|"FieldAngle"|"RectangleRatio"|"ThrowRatio"|"MultiBeamBlur", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Type", property_value: string, override_change_level: ChangeLevel?)
function Beam:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "SupportType", property_value: SupportType)
---@overload fun(property_name: "ColorType", property_value: LaserColorType)
---@overload fun(property_name: "RopeOffset", property_value: Math.Vector3<float>)
---@overload fun(property_name: "StructureType", property_value: StructureType)
---@overload fun(property_name: "FuseRating", property_value: FuseRating)
---@overload fun(property_name: "CrossSectionType", property_value: CrossSectionType)
---@overload fun(property_name: "Emitter", property_value: Emitter)
---@overload fun(property_name: "GridAuto", property_value: EC_AutoGrid)
---@overload fun(property_name: "Orientation", property_value: Orientation)
---@overload fun(property_name: "ComponentType", property_value: ComponentType)
---@overload fun(property_name: "ComponentType", property_value: ComponentType)
---@overload fun(property_name: "CrossSectionType", property_value: CrossSectionType)
---@overload fun(property_name: "GridAuto", property_value: EC_AutoGrid)
---@overload fun(property_name: "GridX"|"GridZ"|"GridY", property_value: EC_NoGrid)
---@overload fun(property_name: "Emitter", property_value: Emitter)
---@overload fun(property_name: "FuseRating", property_value: FuseRating)
---@overload fun(property_name: "Geometry"|"LinkedGeometry", property_value: Geometry)
---@overload fun(property_name: "ColorType", property_value: LaserColorType)
---@overload fun(property_name: "PosX"|"PosZ"|"PosY", property_value: LengthPropertyValue)
---@overload fun(property_name: "RopeOffset", property_value: Math.Vector3<float>)
---@overload fun(property_name: "Model"|"Model", property_value: Model)
---@overload fun(property_name: "Orientation", property_value: Orientation)
---@overload fun(property_name: "StructureType", property_value: StructureType)
---@overload fun(property_name: "SupportType", property_value: SupportType)
---@overload fun(property_name: "GridInvY"|"GridInvZ"|"GridSwapXY"|"MergeGeometries"|"GridInvX", property_value: YesNo|boolean)
---@overload fun(property_name: "Count"|"SignalLayer"|"PinCount", property_value: integer)
---@overload fun(property_name: "CosPhi"|"FuseCurrent"|"Color"|"OutputStrength"|"BeamDiameter"|"BeamDivergenceMin"|"CapacityX"|"BeamDivergenceMax"|"CapacityY"|"ScanAnglePan"|"ResistanceX"|"ScanAngleTilt"|"CapacityZ"|"CapacityXX"|"ScanSpeed"|"CapacityYY"|"CapacityZZ"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ"|"RotX"|"ElectricalPayLoad"|"MaxPayLoad"|"RotY"|"VoltageRangeMax"|"RotZ"|"CrossSectionHeight"|"VoltageRangeMin"|"CrossSectionWallThickness"|"FrequencyRangeMax"|"FrequencyRangeMin"|"Voltage", property_value: number)
---@overload fun(property_name: "RopeCrossSection"|"ConnectorType"|"Texture"|"WireGroup"|"TrussCrossSection"|"SignalType", property_value: string)
function Beam:ComponentType(property_name, property_value) end