---@meta

---@class TCSlot: Appearance
---@field PreRoll TimePropertyValue
---@field AfterRoll TimePropertyValue
---@field GeneratorStartTime TimePropertyValue
---@field GeneratorEndTime TimePropertyValue
---@field GeneratorLooped integer
---@field GeneratorFrameUnit integer
---@field AfterRollColor UColor
---@field OffColor UColor
---@field ExternalSourceColor UColor
---@field GeneratorColor UColor
---@field TimeDisplayFormat integer
---@field UserBits integer
---@field SourceIP Network.IP8Full
---@field TimeString string
---@field Time integer
local TCSlot = {
    TimeDisplayFormat="0"
}
---@return "TCSlot"
function TCSlot:GetClass() end
---@return "Object"
function TCSlot:GetChildClass() end
---@return TimecodeSlots
function TCSlot:Parent() end
---@overload fun(name: "Color", role: nil): Colors.RGB<float>
---@overload fun(name: "CreatedBy", role: nil): CreateBy
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Appearance"|"Image", role: nil): Image
---@overload fun(name: "ImageMode", role: nil): ImageBackGroundMode
---@overload fun(name: "ImageMirror", role: nil): ImageMirror
---@overload fun(name: "ImageRotation", role: nil): ImageRotation
---@overload fun(name: "SourceIP", role: nil): Network.IP8Full
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "PreRoll"|"AfterRoll"|"GeneratorStartTime"|"GeneratorEndTime", role: nil): TimePropertyValue
---@overload fun(name: "AfterRollColor"|"OffColor"|"ExternalSourceColor"|"GeneratorColor", role: nil): UColor
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "GeneratorLooped"|"GeneratorFrameUnit"|"TimeDisplayFormat"|"UserBits"|"Time"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"IPX"|"IPY"|"IPW"|"IPH"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "TimeString"|"ImageRGBA"|"BackRGBA"|"MediaFileName"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "PreRoll"|"AfterRoll"|"GeneratorStartTime"|"GeneratorEndTime"|"GeneratorLooped"|"GeneratorFrameUnit"|"AfterRollColor"|"OffColor"|"ExternalSourceColor"|"GeneratorColor"|"TimeDisplayFormat"|"UserBits"|"SourceIP"|"TimeString"|"Time"|"Appearance"|"Color"|"Image"|"ImageMode"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"ImageRGBA"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"BackRGBA"|"MediaFileName"|"ImageRotation"|"ImageMirror"|"CreatedBy"|"IPX"|"IPY"|"IPW"|"IPH"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function TCSlot:Get(name, role) end