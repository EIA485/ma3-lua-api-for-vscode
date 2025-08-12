---@meta

---@class LayoutElementDefaults: GuidObject
---@field ElementType AssignType
---@field Action PresetActionToken
---@field Width integer
---@field Height integer
---@field Bar integer
---@field ObjectName integer
---@field ID integer
---@field Value integer
---@field IndicatorBar integer
---@field SelectionRelevance integer
---@field Border integer
---@field BorderSize integer
---@field BorderColor UColor
---@field ObjectTextSize FontSizes
---@field CustomTextColor UColor
---@field CustomTextAlignmentH AlignmentH
---@field CustomTextAlignmentV LayoutElementAlignmentV
---@field CustomTextSize FontSizes
---@field Full
Resolution integer
local LayoutElementDefaults = {
    Width="100",
    Height="100",
    Bar="Off",
    ObjectName="Off",
    ID="Off",
    Value="Off",
    IndicatorBar="Off",
    SelectionRelevance="Off",
    Border="Off",
    BorderSize="2"
}
---@return "LayoutElementDefaults"
function LayoutElementDefaults:GetClass() end
---@return "Object"
function LayoutElementDefaults:GetChildClass() end
---@return LayoutElementDefaultsCollect
function LayoutElementDefaults:Parent() end
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
---@overload fun(name: "ElementType", role: nil): AssignType
---@overload fun(name: "Action", role: nil): PresetActionToken
---@overload fun(name: "Width"|"Height"|"Bar"|"ObjectName"|"ID"|"Value"|"IndicatorBar"|"SelectionRelevance"|"Border"|"BorderSize", role: nil): integer
---@overload fun(name: "BorderColor", role: nil): UColor
---@overload fun(name: "ObjectTextSize", role: nil): FontSizes
---@overload fun(name: "CustomTextColor", role: nil): UColor
---@overload fun(name: "CustomTextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "CustomTextAlignmentV", role: nil): LayoutElementAlignmentV
---@overload fun(name: "CustomTextSize", role: nil): FontSizes
---@overload fun(name: "Full
Resolution", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"ElementType"|"Action"|"Width"|"Height"|"Bar"|"ObjectName"|"ID"|"Value"|"IndicatorBar"|"SelectionRelevance"|"Border"|"BorderSize"|"BorderColor"|"ObjectTextSize"|"CustomTextColor"|"CustomTextAlignmentH"|"CustomTextAlignmentV"|"CustomTextSize"|"Full
Resolution", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function LayoutElementDefaults:Get(name, role) end
