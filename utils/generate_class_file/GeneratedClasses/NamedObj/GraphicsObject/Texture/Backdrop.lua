---@meta

---@class Backdrop: Texture A texture with a defined 9-patch configuration for special scaling
---@field Border {left: integer, right: integer, top: integer, bottom: integer}
---@field Client {left: integer, right: integer, top: integer, bottom: integer}
---@field Type PatchType
local Backdrop = {
    Type="Nine"
}
---@return "Backdrop"
function Backdrop:GetClass() end
---@return "GraphicsObject"
function Backdrop:GetChildClass() end
---@overload fun(name: "Type", role: nil): PatchType
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "TextureIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Filename"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Border"|"Client", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "TextureRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "Border"|"Client"|"Type"|"Filename"|"TextureRect"|"TextureIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Backdrop:Get(name, role) end