---@meta

---@class Element: GuidObject
---@field AssignType AssignType
---@field ID integer
---@field CID integer
---@field Appearance string
---@field AppearanceRotation ImageRotation
---@field Mirror ImageMirror
---@field Object Object
---@field Action PresetActionToken
---@field Selected integer
---@field PosX integer
---@field PosY integer
---@field Width integer
---@field Height integer
---@field VisibilityElement integer
---@field VisibilityBar integer
---@field VisibilityObjectName integer
---@field VisibilityID integer
---@field VisibilityCID integer
---@field VisibilityValue integer
---@field VisibilityIndicatorBar integer
---@field VisibilitySelectionRelevance integer
---@field VisibilityBorder integer
---@field BorderSize integer
---@field BorderColor UColor
---@field IsInWorld boolean
---@field Scribble Scribble
---@field ObjectTextSize FontSizes
---@field CustomTextVertical integer
---@field Full
Resolution integer
---@field IDType integer
---@field FixtureID integer
local Element = {
    ID="None",
    CID="None",
    AppearanceRotation="None",
    Mirror="None",
    Selected="No",
    Width="100",
    Height="100",
    VisibilityElement="Off",
    VisibilityBar="Off",
    VisibilityObjectName="0",
    VisibilityID="Off",
    VisibilityCID="Off",
    VisibilityValue="Off",
    VisibilityIndicatorBar="Off",
    VisibilitySelectionRelevance="Off",
    VisibilityBorder="Off",
    BorderSize="2",
    CustomTextVertical="No"
}
---@return "Element"
function Element:GetClass() end
---@return "Object"
function Element:GetChildClass() end
---@return Layout
function Element:Parent() end
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
---@overload fun(name: "AssignType", role: nil): AssignType
---@overload fun(name: "ID"|"CID", role: nil): integer
---@overload fun(name: "Appearance", role: nil): string
---@overload fun(name: "AppearanceRotation", role: nil): ImageRotation
---@overload fun(name: "Mirror", role: nil): ImageMirror
---@overload fun(name: "Object", role: nil): Object
---@overload fun(name: "Action", role: nil): PresetActionToken
---@overload fun(name: "Selected"|"PosX"|"PosY"|"Width"|"Height"|"VisibilityElement"|"VisibilityBar"|"VisibilityObjectName"|"VisibilityID"|"VisibilityCID"|"VisibilityValue"|"VisibilityIndicatorBar"|"VisibilitySelectionRelevance"|"VisibilityBorder"|"BorderSize", role: nil): integer
---@overload fun(name: "BorderColor", role: nil): UColor
---@overload fun(name: "IsInWorld", role: nil): boolean
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "ObjectTextSize", role: nil): FontSizes
---@overload fun(name: "CustomTextVertical"|"Full
Resolution"|"IDType"|"FixtureID", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"AssignType"|"ID"|"CID"|"Appearance"|"AppearanceRotation"|"Mirror"|"Object"|"Action"|"Selected"|"PosX"|"PosY"|"Width"|"Height"|"VisibilityElement"|"VisibilityBar"|"VisibilityObjectName"|"VisibilityID"|"VisibilityCID"|"VisibilityValue"|"VisibilityIndicatorBar"|"VisibilitySelectionRelevance"|"VisibilityBorder"|"BorderSize"|"BorderColor"|"IsInWorld"|"Scribble"|"ObjectTextSize"|"CustomTextVertical"|"Full
Resolution"|"IDType"|"FixtureID", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Element:Get(name, role) end
