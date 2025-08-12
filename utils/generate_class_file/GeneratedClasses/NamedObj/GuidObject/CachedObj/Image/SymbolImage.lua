---@meta

---@class SymbolImage: Image
---@field ColorKeyLightFrom UiColor
---@field ColorKeyLightTo UiColor
---@field ColorKeySelectionFrom UiColor
---@field ColorKeySelectionTo UiColor
local SymbolImage = {
    ColorKeyLightFrom="0",
    ColorKeyLightTo="0",
    ColorKeySelectionFrom="0",
    ColorKeySelectionTo="0"
}
---@return "SymbolImage"
function SymbolImage:GetClass() end
---@return "Object"
function SymbolImage:GetChildClass() end
---@return Symbols
function SymbolImage:Parent() end
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
---@overload fun(name: "Installed"|"IsResource"|"InStream"|"Width"|"Height"|"AddAlpha", role: nil): integer
---@overload fun(name: "ColorKeyLightFrom"|"ColorKeyLightTo"|"ColorKeySelectionFrom"|"ColorKeySelectionTo", role: nil): UiColor
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Width"|"Height"|"AddAlpha"|"ColorKeyLightFrom"|"ColorKeyLightTo"|"ColorKeySelectionFrom"|"ColorKeySelectionTo", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function SymbolImage:Get(name, role) end
