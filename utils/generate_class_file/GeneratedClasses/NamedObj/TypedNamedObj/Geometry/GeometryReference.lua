---@meta

---@class GeometryReference: Geometry A specialized geometry that references another geometry.
---@field Geometry Geometry
---@field GeometryDirect Geometry
---@field Model Model
local GeometryReference = {}
---@return "GeometryReference"
function GeometryReference:GetClass() end
---@return "Break"
function GeometryReference:GetChildClass() end
---@param index integer
---@return Break
function GeometryReference:Ptr(index) end
---@return Break[]
function GeometryReference:Children() end
---@return Break?
function GeometryReference:CurrentChild() end
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
---@overload fun(name: "Geometry"|"GeometryDirect", role: nil): Geometry
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Geometry"|"GeometryDirect"|"Model", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Break
function GeometryReference:Get(name, role) end
---@overload fun(index: integer, class: "Break", undo: Undo?): Break
---@overload fun(index: integer, class: nil, undo: Undo?): Break
function GeometryReference:Create(index, class, undo) end
---@overload fun(class: "Break", undo: Undo?, count: integer?): Break
---@overload fun(class: nil, undo: Undo?, count: integer?): Break
function GeometryReference:Append(class, undo, count) end
---@overload fun(class: "Break", undo: Undo?): Break
---@overload fun(class: nil, undo: Undo?): Break
function GeometryReference:Acquire(class, undo) end
---@overload fun(class: "Break", undo: Undo?): Break
---@overload fun(class: nil, undo: Undo?): Break
---@deprecated use "Acquire" instead
function GeometryReference:Aquire(class, undo) end
---@overload fun(index: integer, class: "Break", undo: Undo?, count: integer?): Break
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Break
function GeometryReference:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Break"): Break
---@overload fun(name: string, class: nil): Break
function GeometryReference:Find(name, class) end
---@overload fun(name: string, class: "Break"): Break
---@overload fun(name: string, class: nil): Object
function GeometryReference:FindRecursive(name, class) end
