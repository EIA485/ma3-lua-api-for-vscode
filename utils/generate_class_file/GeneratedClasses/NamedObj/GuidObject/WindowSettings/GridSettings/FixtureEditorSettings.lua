---@meta

---@class FixtureEditorSettings: GridSettings
---@field Show
Channels integer
---@field SplitSize integer
local FixtureEditorSettings = {
    ["Show
Channels"]="Yes",
    SplitSize="400"
}
---@return "FixtureEditorSettings"
function FixtureEditorSettings:GetClass() end
---@return "Object"
function FixtureEditorSettings:GetChildClass() end
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
---@overload fun(name: "Show
Channels"|"SplitSize", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"Show
Channels"|"SplitSize", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FixtureEditorSettings:Get(name, role) end
