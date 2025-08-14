---@meta

---@class Support: Geometry
---@field SupportType SupportType
---@field RopeCrossSection string
---@field RopeOffset Math.Vector3<float>
---@field CapacityX number
---@field CapacityY number
---@field CapacityZ number
---@field CapacityXX number
---@field CapacityYY number
---@field CapacityZZ number
---@field ResistanceX number
---@field ResistanceY number
---@field ResistanceZ number
---@field ResistanceXX number
---@field ResistanceYY number
---@field ResistanceZZ number
local Support = {}
---@return "Support"
function Support:GetClass() end
---@return "Geometry"
function Support:GetChildClass() end
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "RopeOffset", role: nil): Math.Vector3<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "SupportType", role: nil): SupportType
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "CapacityX"|"CapacityY"|"CapacityZ"|"CapacityXX"|"CapacityYY"|"CapacityZZ"|"ResistanceX"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ"|"RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "RopeCrossSection"|"Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SupportType"|"RopeCrossSection"|"RopeOffset"|"CapacityX"|"CapacityY"|"CapacityZ"|"CapacityXX"|"CapacityYY"|"CapacityZZ"|"ResistanceX"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Support:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?): Geometry
function Support:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(class: nil, undo: Undo?, count: integer?): Geometry
function Support:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Support:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
---@deprecated use "Acquire" instead
function Support:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Geometry", undo: Undo?, count: integer?): Geometry
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Geometry
function Support:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Geometry", undo: Undo?): Geometry
---@overload fun(class: nil, undo: Undo?): Geometry
function Support:Find(class, undo) end