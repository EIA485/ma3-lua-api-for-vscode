---@meta

---@class WindowPhaserEditorSettings: GridSettings
---@field EditTools PhaserEditTool
---@field Show
Beams integer
---@field Absolute integer
---@field Relative integer
---@field AbsRelMode integer
---@field Mode1D integer
---@field LayerSheet integer
---@field AttributeSheet integer
---@field ShowEmptyLines integer
---@field Step
Bar integer
---@field Layer
Bar integer
---@field LineHeight integer
---@field ViewMode integer
---@field Readout ValueReadoutMode
---@field Speed SpeedReadoutMode
---@field PresetReadout PresetReadoutMode
---@field Attributes integer
---@field EncoderBar PhaserBars
---@field ColorMode ColorDisplayMode
local WindowPhaserEditorSettings = {
    ["Show
Beams"]="1",
    Absolute="1",
    Relative="1",
    AbsRelMode="AbsRel",
    Mode1D="Value",
    LayerSheet="Yes",
    AttributeSheet="No",
    ShowEmptyLines="No",
    ["Step
Bar"]="No",
    ["Layer
Bar"]="No",
    LineHeight="Auto",
    ViewMode="Auto",
    Readout="Auto",
    Speed="Auto",
    PresetReadout="Preset",
    Attributes="PanTilt",
    ColorMode="0"
}
---@return "WindowPhaserEditorSettings"
function WindowPhaserEditorSettings:GetClass() end
---@return "Object"
function WindowPhaserEditorSettings:GetChildClass() end
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
---@overload fun(name: "EditTools", role: nil): PhaserEditTool
---@overload fun(name: "Show
Beams"|"Absolute"|"Relative"|"AbsRelMode"|"Mode1D"|"LayerSheet"|"AttributeSheet"|"ShowEmptyLines"|"Step
Bar"|"Layer
Bar"|"LineHeight"|"ViewMode", role: nil): integer
---@overload fun(name: "Readout", role: nil): ValueReadoutMode
---@overload fun(name: "Speed", role: nil): SpeedReadoutMode
---@overload fun(name: "PresetReadout", role: nil): PresetReadoutMode
---@overload fun(name: "Attributes", role: nil): integer
---@overload fun(name: "EncoderBar", role: nil): PhaserBars
---@overload fun(name: "ColorMode", role: nil): ColorDisplayMode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"EditTools"|"Show
Beams"|"Absolute"|"Relative"|"AbsRelMode"|"Mode1D"|"LayerSheet"|"AttributeSheet"|"ShowEmptyLines"|"Step
Bar"|"Layer
Bar"|"LineHeight"|"ViewMode"|"Readout"|"Speed"|"PresetReadout"|"Attributes"|"EncoderBar"|"ColorMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowPhaserEditorSettings:Get(name, role) end
