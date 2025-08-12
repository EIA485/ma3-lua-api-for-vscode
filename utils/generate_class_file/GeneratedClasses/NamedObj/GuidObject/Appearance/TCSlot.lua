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
---@overload fun(name: "PreRoll"|"AfterRoll"|"GeneratorStartTime"|"GeneratorEndTime", role: nil): TimePropertyValue
---@overload fun(name: "GeneratorLooped"|"GeneratorFrameUnit", role: nil): integer
---@overload fun(name: "AfterRollColor"|"OffColor"|"ExternalSourceColor"|"GeneratorColor", role: nil): UColor
---@overload fun(name: "TimeDisplayFormat"|"UserBits", role: nil): integer
---@overload fun(name: "SourceIP", role: nil): Network.IP8Full
---@overload fun(name: "TimeString", role: nil): string
---@overload fun(name: "Time", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Appearance"|"Color"|"Image"|"ImageMode"|"ImageR"|"ImageG"|"ImageB"|"ImageAlpha"|"ImageRGBA"|"BackR"|"BackG"|"BackB"|"BackAlpha"|"BackRGBA"|"MediaFileName"|"ImageRotation"|"ImageMirror"|"CreatedBy"|"IPX"|"IPY"|"IPW"|"IPH"|"PreRoll"|"AfterRoll"|"GeneratorStartTime"|"GeneratorEndTime"|"GeneratorLooped"|"GeneratorFrameUnit"|"AfterRollColor"|"OffColor"|"ExternalSourceColor"|"GeneratorColor"|"TimeDisplayFormat"|"UserBits"|"SourceIP"|"TimeString"|"Time", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function TCSlot:Get(name, role) end
