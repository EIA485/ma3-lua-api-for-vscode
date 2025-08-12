---@meta

---@class GeometryDisplay: Geometry A specialized geometry that represents a display
---@field Texture string
local GeometryDisplay = {}
---@return "GeometryDisplay"
function GeometryDisplay:GetClass() end
---@return "Geometry"
function GeometryDisplay:GetChildClass() end
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
---@overload fun(name: "Texture", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Texture", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function GeometryDisplay:Get(name, role) end
