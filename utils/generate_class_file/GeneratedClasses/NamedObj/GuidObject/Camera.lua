---@meta

---@class Camera: GuidObject
---@field PosX LengthPropertyValue
---@field PosY LengthPropertyValue
---@field PosZ LengthPropertyValue
---@field Near LengthPropertyValue
---@field Far LengthPropertyValue
---@field FOV number
---@field Pan number
---@field Tilt number
---@field Roll number
---@field Zoom number
---@field Pivot Math.TVector<float>
---@field PivotDistMin LengthPropertyValue
---@field PivotDistMax LengthPropertyValue
---@field CameraMode CameraMode
local Camera = {
    PosX="0",
    PosY="0",
    PosZ="0"
}
---@return "Camera"
function Camera:GetClass() end
---@return "Object"
function Camera:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "PosX"|"PosY"|"PosZ"|"Near"|"Far", role: nil): LengthPropertyValue
---@overload fun(name: "FOV"|"Pan"|"Tilt"|"Roll"|"Zoom", role: nil): number
---@overload fun(name: "Pivot", role: nil): Math.TVector<float>
---@overload fun(name: "PivotDistMin"|"PivotDistMax", role: nil): LengthPropertyValue
---@overload fun(name: "CameraMode", role: nil): CameraMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PosX"|"PosY"|"PosZ"|"Near"|"Far"|"FOV"|"Pan"|"Tilt"|"Roll"|"Zoom"|"Pivot"|"PivotDistMin"|"PivotDistMax"|"CameraMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Camera:Get(name, role) end
