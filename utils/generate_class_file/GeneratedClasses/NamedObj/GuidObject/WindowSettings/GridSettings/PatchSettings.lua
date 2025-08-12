---@meta

---@class PatchSettings: GridSettings
---@field ShowFilter
Toolbar integer
---@field AllowExtendedCondensed integer
---@field ShowSplitView integer
---@field Show3DPositions integer
---@field FlatFilter integer
---@field FilterOutDMXLess integer
---@field Filter Filter
---@field SelectedStage integer
---@field FilterMaskValue integer
---@field SplitFrameSize integer
---@field SplitFrameSize3d integer
---@field SelectedSplitView integer
---@field CheckColumnCondensedFilter fun()
local PatchSettings = {
    ["ShowFilter
Toolbar"]="No",
    AllowExtendedCondensed="No",
    ShowSplitView="No",
    Show3DPositions="No",
    FlatFilter="No",
    FilterOutDMXLess="No",
    Filter="Default.Filters.Patch",
    SelectedStage="0",
    SplitFrameSize="200",
    SplitFrameSize3d="800",
    SelectedSplitView="0"
}
---@return "PatchSettings"
function PatchSettings:GetClass() end
---@return "Object"
function PatchSettings:GetChildClass() end
---@return TemporaryWindowSettings
function PatchSettings:Parent() end
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
---@overload fun(name: "ShowFilter
Toolbar"|"AllowExtendedCondensed"|"ShowSplitView"|"Show3DPositions"|"FlatFilter"|"FilterOutDMXLess", role: nil): integer
---@overload fun(name: "Filter", role: nil): Filter
---@overload fun(name: "SelectedStage"|"FilterMaskValue"|"SplitFrameSize"|"SplitFrameSize3d"|"SelectedSplitView", role: nil): integer
---@overload fun(name: "CheckColumnCondensedFilter", role: nil): fun()
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"ShowFilter
Toolbar"|"AllowExtendedCondensed"|"ShowSplitView"|"Show3DPositions"|"FlatFilter"|"FilterOutDMXLess"|"Filter"|"SelectedStage"|"FilterMaskValue"|"SplitFrameSize"|"SplitFrameSize3d"|"SelectedSplitView"|"CheckColumnCondensedFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PatchSettings:Get(name, role) end
