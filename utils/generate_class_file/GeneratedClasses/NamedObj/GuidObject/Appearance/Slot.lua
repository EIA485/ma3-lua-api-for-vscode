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
---@generic T : Slot
---@param class `T`
---@return boolean
function Slot:IsClass(class) end
---@return Wheel
function Slot:Parent() end
---@param index integer
---@return Facet
function Slot:Ptr(index) end
---@return Facet[]
function Slot:Children() end
---@return Facet?
function Slot:CurrentChild() end
---@return 46
function Slot:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "NameAndApp"
---@overload fun(idx: 17): "Note"
---@overload fun(idx: 18): "Tags"
---@overload fun(idx: 19): "Appearance"
---@overload fun(idx: 20): "Color"
---@overload fun(idx: 21): "ImageMode"
---@overload fun(idx: 22): "ImageR"
---@overload fun(idx: 23): "ImageG"
---@overload fun(idx: 24): "ImageB"
---@overload fun(idx: 25): "ImageAlpha"
---@overload fun(idx: 26): "ImageRGBA"
---@overload fun(idx: 27): "BackR"
---@overload fun(idx: 28): "BackG"
---@overload fun(idx: 29): "BackB"
---@overload fun(idx: 30): "BackAlpha"
---@overload fun(idx: 31): "BackRGBA"
---@overload fun(idx: 32): "MediaFileName"
---@overload fun(idx: 33): "ImageRotation"
---@overload fun(idx: 34): "ImageMirror"
---@overload fun(idx: 35): "CreatedBy"
---@overload fun(idx: 36): "IPX"
---@overload fun(idx: 37): "IPY"
---@overload fun(idx: 38): "IPW"
---@overload fun(idx: 39): "IPH"
---@overload fun(idx: 40): "Image"
---@overload fun(idx: 41): "AnimationSystemP1"
---@overload fun(idx: 42): "AnimationSystemP2"
---@overload fun(idx: 43): "AnimationSystemP3"
---@overload fun(idx: 44): "AnimationSystemRadius"
---@overload fun(idx: 45): "Filter"
function Slot:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|17|18|20|27|28|29|30|32|36|37|38|39|41|42|43|44|45): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|16|19|22|23|24|25|26|31|40): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 21): {ExportIgnore: False, EnumCollection: ImageBackGroundMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 33): {ExportIgnore: False, EnumCollection: ImageRotation, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 34): {ExportIgnore: False, EnumCollection: ImageMirror, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 35): {ExportIgnore: False, EnumCollection: CreateBy, ReadOnly: False, ImportIgnore: False}
function Slot:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8): "UInt32"
---@overload fun(idx: 7|12|16|17|26|31|32): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|18|20|41|42|43): "Custom"
---@overload fun(idx: 15|19|40|45): "Handle"
---@overload fun(idx: 21|22|23|24|25|27|28|29|30|33|34|35): "UInt8"
---@overload fun(idx: 36|37|38|39): "Int16"
---@overload fun(idx: 44): "Float"
function Slot:PropertyType(idx) end
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "CreatedBy", role: nil): CreateBy
---@overload fun(name: "Filter", role: nil): FTFilter
---@overload fun(name: "Image", role: nil): GoboImage
---@overload fun(name: "Appearance", role: nil): Image
---@overload fun(name: "ImageMode", role: nil): ImageBackGroundMode
---@overload fun(name: "ImageMirror", role: nil): ImageMirror
---@overload fun(name: "ImageRotation", role: nil): ImageRotation
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "AnimationSystemP1"|"AnimationSystemP2"|"AnimationSystemP3", role: nil): Math.Vector2<float>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"IPX"|"IPY"|"IPW"|"IPH", role: nil): integer
---@overload fun(name: "AnimationSystemRadius", role: nil): number
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"ImageRGBA"|"BackRGBA"|"MediaFileName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"Appearance"|"Color"|"ImageMode"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"ImageRGBA"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"BackRGBA"|"MediaFileName"|"ImageRotation"|"ImageMirror"|"CreatedBy"|"IPX"|"IPY"|"IPW"|"IPH"|"Image"|"AnimationSystemP1"|"AnimationSystemP2"|"AnimationSystemP3"|"AnimationSystemRadius"|"Filter", role: Enums.Roles): string
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
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "CreatedBy", property_value: CreateBy, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Filter", property_value: FTFilter, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ImageMode", property_value: ImageBackGroundMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ImageMirror", property_value: ImageMirror, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ImageRotation", property_value: ImageRotation, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "AnimationSystemP1"|"AnimationSystemP2"|"AnimationSystemP3", property_value: Math.Vector2<float>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"IPX"|"IPY"|"IPW"|"IPH", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "AnimationSystemRadius", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"MediaFileName", property_value: string, override_change_level: ChangeLevel?)
function Slot:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Rotation", property_value: Math.TMatrix3x3<float>)
---@overload fun(property_name: "Color", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Rotation", property_value: Math.TMatrix3x3<float>)
function Slot:SetChildren(property_name, property_value) end