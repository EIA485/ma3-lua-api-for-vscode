---@meta

---@class Appearance: GuidObject
---@field Appearance Image
---@field Color Colors.RGB<float>
---@field Image Image
---@field ImageMode ImageBackGroundMode
---@field ImageR integer
---@field ImageG integer
---@field ImageB integer
---@field ImageAlpha integer
---@field ImageRGBA string
---@field BackR integer
---@field BackG integer
---@field BackB integer
---@field BackAlpha integer
---@field BackRGBA string
---@field MediaFileName string
---@field ImageRotation ImageRotation
---@field ImageMirror ImageMirror
---@field CreatedBy CreateBy
---@field IPX integer
---@field IPY integer
---@field IPW integer
---@field IPH integer
local Appearance = {
    Color="1.000000,1.000000,1.000000,1.000000",
    ImageMode="Bar",
    ImageR="255",
    ImageG="255",
    ImageB="255",
    ImageAlpha="255",
    ImageRGBA="FFFFFFFF",
    BackR="0",
    BackG="0",
    BackB="0",
    BackAlpha="0",
    BackRGBA="FFFFFFFF",
    ImageRotation="None",
    ImageMirror="None",
    CreatedBy="Unknown",
    IPX="0",
    IPY="0",
    IPW="0",
    IPH="0"
}
---@return "Appearance"
function Appearance:GetClass() end
---@return "Object"
function Appearance:GetChildClass() end
---@return Appearances
function Appearance:Parent() end
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
---@overload fun(name: "Appearance", role: nil): Image
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "Image", role: nil): Image
---@overload fun(name: "ImageMode", role: nil): ImageBackGroundMode
---@overload fun(name: "ImageR"|"ImageG"|"ImageB"|"ImageAlpha", role: nil): integer
---@overload fun(name: "ImageRGBA", role: nil): string
---@overload fun(name: "BackR"|"BackG"|"BackB"|"BackAlpha", role: nil): integer
---@overload fun(name: "BackRGBA"|"MediaFileName", role: nil): string
---@overload fun(name: "ImageRotation", role: nil): ImageRotation
---@overload fun(name: "ImageMirror", role: nil): ImageMirror
---@overload fun(name: "CreatedBy", role: nil): CreateBy
---@overload fun(name: "IPX"|"IPY"|"IPW"|"IPH", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Appearance"|"Color"|"Image"|"ImageMode"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"ImageRGBA"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"BackRGBA"|"MediaFileName"|"ImageRotation"|"ImageMirror"|"CreatedBy"|"IPX"|"IPY"|"IPW"|"IPH", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Appearance:Get(name, role) end
