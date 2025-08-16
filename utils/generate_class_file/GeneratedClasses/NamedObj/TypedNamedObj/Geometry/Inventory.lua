---@meta

---@class Inventory: Geometry
---@field Count integer
local Inventory = {}
---@return "Inventory"
function Inventory:GetClass() end
---@return "Geometry"
function Inventory:GetChildClass() end
---@generic T : Inventory
---@param class `T`
---@return boolean
function Inventory:IsClass(class) end
---@return 33
function Inventory:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "No"
---@overload fun(idx: 6): "Name"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Type"
---@overload fun(idx: 15): "Model"
---@overload fun(idx: 16): "PosX"
---@overload fun(idx: 17): "PosY"
---@overload fun(idx: 18): "PosZ"
---@overload fun(idx: 19): "RotX"
---@overload fun(idx: 20): "RotY"
---@overload fun(idx: 21): "RotZ"
---@overload fun(idx: 22): "RotDirect"
---@overload fun(idx: 23): "GridAuto"
---@overload fun(idx: 24): "GridSwapXY"
---@overload fun(idx: 25): "GridInvX"
---@overload fun(idx: 26): "GridInvY"
---@overload fun(idx: 27): "GridInvZ"
---@overload fun(idx: 28): "GridX"
---@overload fun(idx: 29): "GridY"
---@overload fun(idx: 30): "GridZ"
---@overload fun(idx: 31): "MergeGeometries"
---@overload fun(idx: 32): "Count"
function Inventory:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|24|25|26|27|31): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|14): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 6|7|12|15|16|17|18|19|20|21|32): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|22): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 23): {ExportIgnore: False, EnumCollection: EC_AutoGrid, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 28|29|30): {ExportIgnore: False, EnumCollection: EC_NoGrid, ReadOnly: False, ImportIgnore: False}
function Inventory:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|8|23|24|25|26|27|31): "UInt32"
---@overload fun(idx: 6|7|12|14): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 15): "Handle"
---@overload fun(idx: 16|17|18): "FloatLength"
---@overload fun(idx: 19|20|21): "Float"
---@overload fun(idx: 22): "Custom"
---@overload fun(idx: 28|29|30): "Int32"
---@overload fun(idx: 32): "UInt16"
function Inventory:PropertyType(idx) end
---@overload fun(name: "GridAuto", role: nil): EC_AutoGrid
---@overload fun(name: "GridX"|"GridY"|"GridZ", role: nil): EC_NoGrid
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"MergeGeometries", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"No"|"MemoryFootprint"|"Count", role: nil): integer
---@overload fun(name: "RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Type", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Count", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Inventory:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function Inventory:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function Inventory:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Inventory:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function Inventory:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function Inventory:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Inventory:Find(class, undo) end
---@overload fun(property_name: "GridAuto", property_value: EC_AutoGrid, override_change_level: ChangeLevel?)
---@overload fun(property_name: "GridX"|"GridY"|"GridZ", property_value: EC_NoGrid, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PosX"|"PosY"|"PosZ", property_value: LengthPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Model", property_value: Model, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"MergeGeometries", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"No"|"Count", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RotX"|"RotY"|"RotZ", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Type", property_value: string, override_change_level: ChangeLevel?)
function Inventory:Set(property_name, property_value, override_change_level) end
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
---@overload fun(property_name: "PosZ"|"PosY"|"PosX", property_value: LengthPropertyValue)
---@overload fun(property_name: "RopeOffset", property_value: Math.Vector3<float>)
---@overload fun(property_name: "Model"|"Model", property_value: Model)
---@overload fun(property_name: "Orientation", property_value: Orientation)
---@overload fun(property_name: "StructureType", property_value: StructureType)
---@overload fun(property_name: "SupportType", property_value: SupportType)
---@overload fun(property_name: "GridInvY"|"GridInvZ"|"GridSwapXY"|"MergeGeometries"|"GridInvX"|"IsMainBeam", property_value: YesNo|boolean)
---@overload fun(property_name: "PinCount"|"ColorRenderingIndex"|"SignalLayer", property_value: integer)
---@overload fun(property_name: "ThrowRatio"|"OutputStrength"|"BeamDiameter"|"FieldAngle"|"BeamDivergenceMin"|"CapacityX"|"RectangleRatio"|"BeamDivergenceMax"|"CapacityY"|"MultiBeamBlur"|"ScanAnglePan"|"ResistanceX"|"CapacityZ"|"ScanAngleTilt"|"Color"|"CapacityXX"|"ScanSpeed"|"CapacityYY"|"CapacityZZ"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ"|"RotX"|"ElectricalPayLoad"|"MaxPayLoad"|"RotY"|"VoltageRangeMax"|"RotZ"|"CrossSectionHeight"|"VoltageRangeMin"|"CrossSectionWallThickness"|"FrequencyRangeMax"|"FrequencyRangeMin"|"Voltage"|"CosPhi"|"FuseCurrent"|"PowerConsumption"|"LuminousIntensity"|"ColorTemperature"|"BeamAngle"|"BeamRadius", property_value: number)
---@overload fun(property_name: "RopeCrossSection"|"Texture"|"ConnectorType"|"WireGroup"|"TrussCrossSection"|"SignalType", property_value: string)
function Inventory:SetChildren(property_name, property_value) end