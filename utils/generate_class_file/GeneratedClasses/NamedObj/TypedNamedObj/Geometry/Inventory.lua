---@meta

---@class Inventory: Geometry
---@field Count integer
local Inventory = {}
---@return "Inventory"
function Inventory:GetClass() end
---@return "Geometry"
function Inventory:GetChildClass() end
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Count"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Count"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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