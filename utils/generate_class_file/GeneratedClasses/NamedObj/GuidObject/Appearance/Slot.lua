---@meta

---@class Slot: Appearance Describes a slot in a wheel with name, color and gobo etc.
---@field Image GoboImage
---@field AnimationSystemP1 Math.Vector2<float>
---@field AnimationSystemP2 Math.Vector2<float>
---@field AnimationSystemP3 Math.Vector2<float>
---@field AnimationSystemRadius number
---@field Filter FTFilter
local Slot = {
    AnimationSystemP1="0.000000,0.000000",
    AnimationSystemP2="0.000000,0.000000",
    AnimationSystemP3="0.000000,0.000000",
    AnimationSystemRadius="0"
}
---@return "Slot"
function Slot:GetClass() end
---@return "Facet"
function Slot:GetChildClass() end
---@return Wheel
function Slot:Parent() end
---@param index integer
---@return Facet
function Slot:Ptr(index) end
---@return Facet[]
function Slot:Children() end
---@return Facet?
function Slot:CurrentChild() end
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "CreatedBy", role: nil): CreateBy
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Filter", role: nil): FTFilter
---@overload fun(name: "Image", role: nil): GoboImage
---@overload fun(name: "Appearance", role: nil): Image
---@overload fun(name: "ImageMode", role: nil): ImageBackGroundMode
---@overload fun(name: "ImageMirror", role: nil): ImageMirror
---@overload fun(name: "ImageRotation", role: nil): ImageRotation
---@overload fun(name: "AnimationSystemP1"|"AnimationSystemP2"|"AnimationSystemP3", role: nil): Math.Vector2<float>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"IPX"|"IPY"|"IPW"|"IPH"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "AnimationSystemRadius", role: nil): number
---@overload fun(name: "ImageRGBA"|"BackRGBA"|"MediaFileName"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Image"|"AnimationSystemP1"|"AnimationSystemP2"|"AnimationSystemP3"|"AnimationSystemRadius"|"Filter"|"Appearance"|"Color"|"ImageMode"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"ImageRGBA"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"BackRGBA"|"MediaFileName"|"ImageRotation"|"ImageMirror"|"CreatedBy"|"IPX"|"IPY"|"IPW"|"IPH"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Facet
function Slot:Get(name, role) end
---@generic T : Facet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Facet
function Slot:Create(index, class, undo) end
---@generic T : Facet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Facet
function Slot:Append(class, undo, count) end
---@generic T : Facet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Facet
function Slot:Acquire(class, undo) end
---@generic T : Facet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Facet
---@deprecated use "Acquire" instead
function Slot:Aquire(class, undo) end
---@generic T : Facet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Facet
function Slot:Insert(index, class, undo, count) end
---@generic T : Facet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Facet
function Slot:Find(class, undo) end