---@meta

---@class Encoder: Object
---@field InnerObjectType integer
---@field InnerObject Object
---@field OuterObjectType integer
---@field OuterObject Object
local Encoder = {
    InnerObjectType="0",
    OuterObjectType="0"
}
---@return "Encoder"
function Encoder:GetClass() end
---@return "Object"
function Encoder:GetChildClass() end
---@return EncoderPage
function Encoder:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"InnerObjectType", role: nil): integer
---@overload fun(name: "InnerObject", role: nil): Object
---@overload fun(name: "OuterObjectType", role: nil): integer
---@overload fun(name: "OuterObject", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"InnerObjectType"|"InnerObject"|"OuterObjectType"|"OuterObject", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Encoder:Get(name, role) end
