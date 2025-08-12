---@meta

---@class Material: CachedObj
---@field Texture integer
---@field Color Colors.RGB<float>
---@field Cont.Size integer
---@field Cont.Ref integer
---@field Invisible integer
local Material = {
    Color="1,1,1",
    ["Cont.Size"]="0",
    ["Cont.Ref"]="0",
    Invisible="No"
}
---@return "Material"
function Material:GetClass() end
---@return "Object"
function Material:GetChildClass() end
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
---@overload fun(name: "FileName"|"FilePath", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "FileContent", role: nil): string
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Installed"|"IsResource"|"InStream"|"Texture", role: nil): integer
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "Cont.Size"|"Cont.Ref"|"Invisible", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Texture"|"Color"|"Cont.Size"|"Cont.Ref"|"Invisible", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Material:Get(name, role) end
