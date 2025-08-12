---@meta

---@class ContentSheetSettings: SequenceSheetSettings
---@field ContentSheetCueMode integer
---@field ShowTracked integer
---@field FixtureSelect integer
---@field ShowParts integer
---@field ShowManualCueSelection integer
---@field SheetMode integer
---@field ShowNameField integer
---@field ShowIDType integer
---@field ManualCue Object
---@field CuePartAppearanceContent integer
local ContentSheetSettings = {
    ContentSheetCueMode="0",
    ShowTracked="0",
    FixtureSelect="0",
    ShowParts="0",
    ShowManualCueSelection="0",
    SheetMode="Fixture",
    ShowNameField="0",
    ShowIDType="0",
    CuePartAppearanceContent="Num+Name"
}
---@return "ContentSheetSettings"
function ContentSheetSettings:GetClass() end
---@return "Object"
function ContentSheetSettings:GetChildClass() end
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
---@overload fun(name: "Fixed
Target", role: nil): Object
---@overload fun(name: "Link
Type", role: nil): integer
---@overload fun(name: "Show
Steps"|"Sequence
PlaybackStatus"|"Sequence
Settings"|"Cue
Settings"|"Cue
Timing"|"MIB
Settings"|"Preset
Timing"|"Compressed
Timing"|"Note"|"Cmd"|"Loops"|"Track
Sheet"|"SelectionOnly", role: nil): boolean
---@overload fun(name: "Step", role: nil): integer
---@overload fun(name: "LineHeight", role: nil): LineHeights
---@overload fun(name: "Readout", role: nil): ValueReadoutMode
---@overload fun(name: "Speed", role: nil): SpeedReadoutMode
---@overload fun(name: "PresetReadout", role: nil): PresetReadoutMode
---@overload fun(name: "ChannelSetReadout", role: nil): ChannelSetReadoutMode
---@overload fun(name: "Layer", role: nil): ProgLayer
---@overload fun(name: "Feature
Sort"|"Fixture
Sort"|"ShowLayer
Toolbar"|"ShowFilter
Toolbar", role: nil): integer
---@overload fun(name: "Filter", role: nil): Object
---@overload fun(name: "Auto
Scroll"|"Cue
Only"|"Countdown"|"ShowRecipes"|"Show
Notes"|"Feature
Graphic"|"Test
Command"|"CuePart
Appearance"|"TimeDisplayFormat"|"Frame
Readout", role: nil): integer
---@overload fun(name: "ColorMode", role: nil): ColorDisplayMode
---@overload fun(name: "SplitSize"|"ContentSheetCueMode"|"ShowTracked"|"FixtureSelect"|"ShowParts"|"ShowManualCueSelection"|"SheetMode"|"ShowNameField"|"ShowIDType", role: nil): integer
---@overload fun(name: "ManualCue", role: nil): Object
---@overload fun(name: "CuePartAppearanceContent", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"Fixed
Target"|"Link
Type"|"Show
Steps"|"Sequence
PlaybackStatus"|"Sequence
Settings"|"Cue
Settings"|"Cue
Timing"|"MIB
Settings"|"Preset
Timing"|"Compressed
Timing"|"Note"|"Cmd"|"Loops"|"Track
Sheet"|"SelectionOnly"|"Step"|"LineHeight"|"Readout"|"Speed"|"PresetReadout"|"ChannelSetReadout"|"Layer"|"Feature
Sort"|"Fixture
Sort"|"ShowLayer
Toolbar"|"ShowFilter
Toolbar"|"Filter"|"Auto
Scroll"|"Cue
Only"|"Countdown"|"ShowRecipes"|"Show
Notes"|"Feature
Graphic"|"Test
Command"|"CuePart
Appearance"|"TimeDisplayFormat"|"Frame
Readout"|"ColorMode"|"SplitSize"|"ContentSheetCueMode"|"ShowTracked"|"FixtureSelect"|"ShowParts"|"ShowManualCueSelection"|"SheetMode"|"ShowNameField"|"ShowIDType"|"ManualCue"|"CuePartAppearanceContent", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ContentSheetSettings:Get(name, role) end
