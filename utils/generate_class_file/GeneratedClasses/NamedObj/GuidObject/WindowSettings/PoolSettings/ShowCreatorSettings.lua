---@meta

---@class ShowCreatorSettings: PoolSettings
---@field ObjectType ShowCreatorObjectType
---@field SubPoolSelectorValue integer
---@field SubPoolSelectorIndex integer
---@field Create
ReferenceObject integer
---@field Sheet
Style integer
---@field FixtureGrid integer
---@field Advanced integer
---@field ExpandAtFilter integer
---@field SortColorBySaturation integer
---@field UseColorBook integer
---@field UseChannelSet integer
---@field DestinationObject Object
---@field ObjectTypeValid boolean
---@field IncludeDependencies boolean
---@field GapsImport boolean
---@field GapsExport boolean
---@field LastSelectedTab LastSelectedTab
---@field FixtureSourceType FixtureSourceType
---@field DimmerIncrement integer
---@field AmountHue integer
---@field AmountSaturation integer
local ShowCreatorSettings = {
    GapsImport="Yes",
    GapsExport="No"
}
---@return "ShowCreatorSettings"
function ShowCreatorSettings:GetClass() end
---@return "Object"
function ShowCreatorSettings:GetChildClass() end
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
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "ShowTitleBar", role: nil): integer
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "RequestDefaultTitlebuttons", role: nil): integer
---@overload fun(name: "TitleButtonMask", role: nil): string
---@overload fun(name: "ShowEmpty", role: nil): integer
---@overload fun(name: "PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor", role: nil): UColor
---@overload fun(name: "ShowBottomMenu"|"RightClick
ToEdit"|"ObjectActionEnabled"|"PoolColumnsCount", role: nil): integer
---@overload fun(name: "DataPool", role: nil): Pool
---@overload fun(name: "PoolType", role: nil): Pooltype
---@overload fun(name: "DrawActiveMode", role: nil): integer
---@overload fun(name: "ObjectType", role: nil): ShowCreatorObjectType
---@overload fun(name: "SubPoolSelectorValue"|"SubPoolSelectorIndex"|"Create
ReferenceObject"|"Sheet
Style"|"FixtureGrid"|"Advanced"|"ExpandAtFilter"|"SortColorBySaturation"|"UseColorBook"|"UseChannelSet", role: nil): integer
---@overload fun(name: "DestinationObject", role: nil): Object
---@overload fun(name: "ObjectTypeValid"|"IncludeDependencies"|"GapsImport"|"GapsExport", role: nil): boolean
---@overload fun(name: "LastSelectedTab", role: nil): LastSelectedTab
---@overload fun(name: "FixtureSourceType", role: nil): FixtureSourceType
---@overload fun(name: "DimmerIncrement"|"AmountHue"|"AmountSaturation", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowEmpty"|"PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor"|"ShowBottomMenu"|"RightClick
ToEdit"|"ObjectActionEnabled"|"PoolColumnsCount"|"DataPool"|"PoolType"|"DrawActiveMode"|"ObjectType"|"SubPoolSelectorValue"|"SubPoolSelectorIndex"|"Create
ReferenceObject"|"Sheet
Style"|"FixtureGrid"|"Advanced"|"ExpandAtFilter"|"SortColorBySaturation"|"UseColorBook"|"UseChannelSet"|"DestinationObject"|"ObjectTypeValid"|"IncludeDependencies"|"GapsImport"|"GapsExport"|"LastSelectedTab"|"FixtureSourceType"|"DimmerIncrement"|"AmountHue"|"AmountSaturation", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ShowCreatorSettings:Get(name, role) end
