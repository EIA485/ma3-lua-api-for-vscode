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
---@overload fun(name: "SupportType", role: nil): SupportType
---@overload fun(name: "RopeCrossSection", role: nil): string
---@overload fun(name: "RopeOffset", role: nil): Math.Vector3<float>
---@overload fun(name: "CapacityX"|"CapacityY"|"CapacityZ"|"CapacityXX"|"CapacityYY"|"CapacityZZ"|"ResistanceX"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ", role: nil): number
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"SupportType"|"RopeCrossSection"|"RopeOffset"|"CapacityX"|"CapacityY"|"CapacityZ"|"CapacityXX"|"CapacityYY"|"CapacityZZ"|"ResistanceX"|"ResistanceY"|"ResistanceZ"|"ResistanceXX"|"ResistanceYY"|"ResistanceZZ", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Support:Get(name, role) end
