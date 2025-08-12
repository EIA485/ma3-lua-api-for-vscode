---@meta

---@class FixtureSheetSettings: GridSettings
---@field Step integer
---@field Readout ValueReadoutMode
---@field Speed SpeedReadoutMode
---@field PresetReadout PresetReadoutMode
---@field TimeDisplayFormat integer
---@field FrameReadout integer
---@field ChannelSetReadout ChannelSetReadoutMode
---@field ColorMode ColorDisplayMode
---@field Layer ProgLayer
---@field SheetMode integer
---@field Prog
Only boolean
---@field Filter
Selection boolean
---@field Feature
Sort integer
---@field Fixture
Sort integer
---@field ShowLayer
Toolbar integer
---@field ShowFilter
Toolbar integer
---@field Fixture
Appearance integer
---@field FixtureGraphic integer
---@field FixtureGraphic
Source integer
---@field Feature
Graphic integer
---@field ShowNameField integer
---@field ShowIDType integer
---@field HideSubfixtures integer
---@field Filter Object
local FixtureSheetSettings = {
    Readout="Auto",
    Speed="Auto",
    PresetReadout="Preset",
    TimeDisplayFormat="0",
    FrameReadout="0",
    ChannelSetReadout="Name",
    ColorMode="0",
    SheetMode="Fixture",
    ["Prog
Only"]="No",
    ["Filter
Selection"]="No",
    ["Feature
Sort"]="Yes",
    ["Fixture
Sort"]="No",
    ["ShowLayer
Toolbar"]="No",
    ["ShowFilter
Toolbar"]="No",
    ["Fixture
Appearance"]="Simple",
    FixtureGraphic="Simple",
    ["FixtureGraphic
Source"]="OutputLayer",
    ["Feature
Graphic"]="Yes",
    ShowNameField="Yes",
    ShowIDType="Yes",
    HideSubfixtures="No",
    Filter="Default.Filters.FixtureSheet"
}
---@return "FixtureSheetSettings"
function FixtureSheetSettings:GetClass() end
---@return "Object"
function FixtureSheetSettings:GetChildClass() end
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
---@overload fun(name: "Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting", role: nil): integer
---@overload fun(name: "RowHeightFactor", role: nil): number
---@overload fun(name: "ColumnsCount", role: nil): integer
---@overload fun(name: "ContentFilterType"|"GridColumnConfigurationType", role: nil): string
---@overload fun(name: "SelectedColumnConfiguration", role: nil): GridColumnConfiguration
---@overload fun(name: "SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder", role: nil): fun()
---@overload fun(name: "Step", role: nil): integer
---@overload fun(name: "Readout", role: nil): ValueReadoutMode
---@overload fun(name: "Speed", role: nil): SpeedReadoutMode
---@overload fun(name: "PresetReadout", role: nil): PresetReadoutMode
---@overload fun(name: "TimeDisplayFormat"|"FrameReadout", role: nil): integer
---@overload fun(name: "ChannelSetReadout", role: nil): ChannelSetReadoutMode
---@overload fun(name: "ColorMode", role: nil): ColorDisplayMode
---@overload fun(name: "Layer", role: nil): ProgLayer
---@overload fun(name: "SheetMode", role: nil): integer
---@overload fun(name: "Prog
Only"|"Filter
Selection", role: nil): boolean
---@overload fun(name: "Feature
Sort"|"Fixture
Sort"|"ShowLayer
Toolbar"|"ShowFilter
Toolbar"|"Fixture
Appearance"|"FixtureGraphic"|"FixtureGraphic
Source"|"Feature
Graphic"|"ShowNameField"|"ShowIDType"|"HideSubfixtures", role: nil): integer
---@overload fun(name: "Filter", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"Step"|"Readout"|"Speed"|"PresetReadout"|"TimeDisplayFormat"|"FrameReadout"|"ChannelSetReadout"|"ColorMode"|"Layer"|"SheetMode"|"Prog
Only"|"Filter
Selection"|"Feature
Sort"|"Fixture
Sort"|"ShowLayer
Toolbar"|"ShowFilter
Toolbar"|"Fixture
Appearance"|"FixtureGraphic"|"FixtureGraphic
Source"|"Feature
Graphic"|"ShowNameField"|"ShowIDType"|"HideSubfixtures"|"Filter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureSheetSettings:Get(name, role) end
