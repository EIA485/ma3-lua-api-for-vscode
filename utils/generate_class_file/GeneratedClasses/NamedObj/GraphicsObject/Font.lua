---@meta

---@class Font: GraphicsObject Describes a single font (a set of glyphs of characters and their respective parameters)
---@field Filename string
---@field TTFFilename string
---@field Size integer
---@field SizeType FontSizeType
---@field DPI integer
---@field Family string
local Font = {
    Size="16",
    SizeType="Point",
    DPI="96"
}
---@return "Font"
function Font:GetClass() end
---@return "GraphicsObject"
function Font:GetChildClass() end
---@return Fonts
function Font:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Filename"|"TTFFilename", role: nil): string
---@overload fun(name: "Size", role: nil): integer
---@overload fun(name: "SizeType", role: nil): FontSizeType
---@overload fun(name: "DPI", role: nil): integer
---@overload fun(name: "Family", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Filename"|"TTFFilename"|"Size"|"SizeType"|"DPI"|"Family", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Font:Get(name, role) end
