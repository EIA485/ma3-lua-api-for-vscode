---@meta

---@class LayoutViewSettings: WindowSettings
---@field Layout Layout
---@field Tool integer
---@field CanvasFit
Mode integer
---@field Visible
Grid integer
---@field Snap
Grid integer
---@field GridColor UColor
---@field PaddingLeft integer
---@field PaddingRight integer
---@field PaddingTop integer
---@field PaddingBottom integer
---@field GridStyle integer
---@field Snapto
Grid integer
---@field Auto
Fit integer
---@field Setup integer
---@field RightClick
ToEdit integer
---@field ShowSelection integer
---@field SelectionMode integer
---@field FitType integer
---@field Scale number
---@field Aspect number
---@field ScrollH ScrollType
---@field ScrollV ScrollType
---@field LayoutOutputSelection LayoutOutputSelection
---@field Filter Filter
---@field Appearance Appearance
---@field LassoFilter integer
local LayoutViewSettings = {
    Tool="Auto",
    ["CanvasFit
Mode"]="Bar",
    ["Visible
Grid"]="50",
    ["Snap
Grid"]="50",
    GridColor="0",
    PaddingLeft="5",
    PaddingRight="5",
    PaddingTop="5",
    PaddingBottom="5",
    GridStyle="0",
    ["Snapto
Grid"]="0",
    ["Auto
Fit"]="0",
    ["RightClick
ToEdit"]="false",
    ShowSelection="true",
    SelectionMode="true",
    FitType="2",
    Scale="1",
    Aspect="1",
    Filter="Default.Filters.LayoutView",
    LassoFilter="All"
}
---@return "LayoutViewSettings"
function LayoutViewSettings:GetClass() end
---@return "Object"
function LayoutViewSettings:GetChildClass() end
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
---@overload fun(name: "Layout", role: nil): Layout
---@overload fun(name: "Tool"|"CanvasFit
Mode"|"Visible
Grid"|"Snap
Grid", role: nil): integer
---@overload fun(name: "GridColor", role: nil): UColor
---@overload fun(name: "PaddingLeft"|"PaddingRight"|"PaddingTop"|"PaddingBottom"|"GridStyle"|"Snapto
Grid"|"Auto
Fit"|"Setup"|"RightClick
ToEdit"|"ShowSelection"|"SelectionMode"|"FitType", role: nil): integer
---@overload fun(name: "Scale"|"Aspect", role: nil): number
---@overload fun(name: "ScrollH"|"ScrollV", role: nil): ScrollType
---@overload fun(name: "LayoutOutputSelection", role: nil): LayoutOutputSelection
---@overload fun(name: "Filter", role: nil): Filter
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "LassoFilter", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Layout"|"Tool"|"CanvasFit
Mode"|"Visible
Grid"|"Snap
Grid"|"GridColor"|"PaddingLeft"|"PaddingRight"|"PaddingTop"|"PaddingBottom"|"GridStyle"|"Snapto
Grid"|"Auto
Fit"|"Setup"|"RightClick
ToEdit"|"ShowSelection"|"SelectionMode"|"FitType"|"Scale"|"Aspect"|"ScrollH"|"ScrollV"|"LayoutOutputSelection"|"Filter"|"Appearance"|"LassoFilter", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function LayoutViewSettings:Get(name, role) end
