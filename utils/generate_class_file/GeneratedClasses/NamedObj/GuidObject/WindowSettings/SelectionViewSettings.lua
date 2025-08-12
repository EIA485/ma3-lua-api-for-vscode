---@meta

---@class SelectionViewSettings: WindowSettings
---@field GridLines integer
---@field ToolBar integer
---@field MAtricks
Transformation integer
---@field CenterlineX integer
---@field CenterlineY integer
---@field AlignBar integer
---@field AutoScroll boolean
---@field FontSize SelectionViewFontSize
local SelectionViewSettings = {
    GridLines="Yes",
    ToolBar="Yes",
    ["MAtricks
Transformation"]="No",
    CenterlineX="No",
    CenterlineY="No",
    AlignBar="Yes",
    AutoScroll="Yes"
}
---@return "SelectionViewSettings"
function SelectionViewSettings:GetClass() end
---@return "Object"
function SelectionViewSettings:GetChildClass() end
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
---@overload fun(name: "GridLines"|"ToolBar"|"MAtricks
Transformation"|"CenterlineX"|"CenterlineY"|"AlignBar", role: nil): integer
---@overload fun(name: "AutoScroll", role: nil): boolean
---@overload fun(name: "FontSize", role: nil): SelectionViewFontSize
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"GridLines"|"ToolBar"|"MAtricks
Transformation"|"CenterlineX"|"CenterlineY"|"AlignBar"|"AutoScroll"|"FontSize", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function SelectionViewSettings:Get(name, role) end
