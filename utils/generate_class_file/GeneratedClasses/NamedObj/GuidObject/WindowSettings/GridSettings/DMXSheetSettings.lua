---@meta

---@class DMXSheetSettings: GridSettings
---@field ColumnsCount integer
---@field AutoColumns integer
---@field ViewMode integer
---@field Address DMXPropertyAddress
---@field AddressMode integer
---@field SkipPatched integer
---@field Readout DMXReadoutMode
---@field Universe integer
---@field AutoColumnsWidth integer
---@field Levelbar integer
---@field OnlySelection integer
---@field TestBar integer
---@field Attribute integer
---@field Id integer
---@field Value integer
local DMXSheetSettings = {
    ColumnsCount="20",
    AutoColumns="off",
    ViewMode="Grid",
    SkipPatched="yes",
    Readout="Auto",
    AutoColumnsWidth="90",
    Levelbar="On",
    OnlySelection="On",
    TestBar="On"
}
---@return "DMXSheetSettings"
function DMXSheetSettings:GetClass() end
---@return "Object"
function DMXSheetSettings:GetChildClass() end
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
---@overload fun(name: "ColumnsCount"|"AutoColumns"|"ViewMode", role: nil): integer
---@overload fun(name: "Address", role: nil): DMXPropertyAddress
---@overload fun(name: "AddressMode"|"SkipPatched", role: nil): integer
---@overload fun(name: "Readout", role: nil): DMXReadoutMode
---@overload fun(name: "Universe"|"AutoColumnsWidth"|"Levelbar"|"OnlySelection"|"TestBar"|"Attribute"|"Id"|"Value", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"ColumnsCount"|"AutoColumns"|"ViewMode"|"Address"|"AddressMode"|"SkipPatched"|"Readout"|"Universe"|"AutoColumnsWidth"|"Levelbar"|"OnlySelection"|"TestBar"|"Attribute"|"Id"|"Value", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DMXSheetSettings:Get(name, role) end
