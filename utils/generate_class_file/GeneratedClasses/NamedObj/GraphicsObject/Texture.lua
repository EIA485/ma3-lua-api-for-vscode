---@meta

---@class Texture: GraphicsObject Describes an image that is loaded into a texture atlas (parent object of type TextureContainer)
---@field Filename string
---@field TextureRect {left: number, right: number, top: number, bottom: number}
---@field TextureIndex integer
local Texture = {}
---@return "Texture"
function Texture:GetClass() end
---@return "GraphicsObject"
function Texture:GetChildClass() end
---@return Textures
function Texture:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Filename", role: nil): string
---@overload fun(name: "TextureRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "TextureIndex", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Filename"|"TextureRect"|"TextureIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Texture:Get(name, role) end
