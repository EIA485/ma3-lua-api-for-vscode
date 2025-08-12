---@meta

---@class Model: NamedObj A 3D model that enwraps the geometry skeleton of a fixture type.
---@field Length LengthPropertyValue
---@field Width LengthPropertyValue
---@field Height LengthPropertyValue
---@field Dimensions
followRatio integer If you edit one dimensions, the other two will follow the original ratio
---@field CastShadow integer Model cast shadow
---@field Mesh Mesh
---@field File string
local Model = {
    Length="0",
    Width="0",
    Height="0"
}
---@return "Model"
function Model:GetClass() end
---@return "Object"
function Model:GetChildClass() end
---@return Models
function Model:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Length"|"Width"|"Height", role: nil): LengthPropertyValue
---@overload fun(name: "Dimensions
followRatio"|"CastShadow", role: nil): integer
---@overload fun(name: "Mesh", role: nil): Mesh
---@overload fun(name: "File", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Length"|"Width"|"Height"|"Dimensions
followRatio"|"CastShadow"|"Mesh"|"File", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Model:Get(name, role) end
