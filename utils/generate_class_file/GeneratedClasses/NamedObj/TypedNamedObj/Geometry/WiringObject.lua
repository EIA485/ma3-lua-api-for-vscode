---@meta

---@class WiringObject: Geometry
---@field ConnectorType string
---@field ComponentType ComponentType
---@field SignalType string
---@field PinCount integer
---@field ElectricalPayLoad number
---@field VoltageRangeMax number
---@field VoltageRangeMin number
---@field FrequencyRangeMax number
---@field FrequencyRangeMin number
---@field MaxPayLoad number
---@field Voltage number
---@field SignalLayer integer
---@field CosPhi number
---@field FuseCurrent number
---@field FuseRating FuseRating
---@field Orientation Orientation
---@field WireGroup string
local WiringObject = {}
---@return "WiringObject"
function WiringObject:GetClass() end
---@return "Geometry"
function WiringObject:GetChildClass() end
---@overload fun(name: "ComponentType", role: nil): ComponentType
---@overload fun(name: "FuseRating", role: nil): FuseRating
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "Orientation", role: nil): Orientation
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "PinCount"|"SignalLayer"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "ElectricalPayLoad"|"VoltageRangeMax"|"VoltageRangeMin"|"FrequencyRangeMax"|"FrequencyRangeMin"|"MaxPayLoad"|"Voltage"|"CosPhi"|"FuseCurrent"|"RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "ConnectorType"|"SignalType"|"WireGroup"|"Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ConnectorType"|"ComponentType"|"SignalType"|"PinCount"|"ElectricalPayLoad"|"VoltageRangeMax"|"VoltageRangeMin"|"FrequencyRangeMax"|"FrequencyRangeMin"|"MaxPayLoad"|"Voltage"|"SignalLayer"|"CosPhi"|"FuseCurrent"|"FuseRating"|"Orientation"|"WireGroup"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function WiringObject:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function WiringObject:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function WiringObject:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function WiringObject:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function WiringObject:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function WiringObject:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function WiringObject:Find(class, undo) end