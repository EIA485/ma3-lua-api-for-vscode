---@meta

---@class ShaperWindowSettings: WindowSettings
---@field ViewMode ShaperViewMode
---@field BarMode ShaperBarMode
---@field ControlMode ShaperControlMode
---@field LinkMode ShaperEncoderLinkMode
---@field MiniFadersMode MiniFadersMode
---@field ShowPov integer
---@field AutoPov integer
---@field ShowResetBar integer
---@field ResetBlade fun(str: string, int: integer) : boolean 0:text
---@field ResetRotation fun(text: string) : boolean 0:text
---@field ResetPov fun(text: string) : boolean 0:text
---@field ResetShaper fun(text: string) : boolean 0:text
---@field ResetAllBlades fun(text: string) : boolean 0:text
local ShaperWindowSettings = {
    ViewMode="Graphical",
    BarMode="Blades",
    ControlMode="A+B",
    LinkMode="None",
    MiniFadersMode="Full",
    ShowPov="0",
    AutoPov="0",
    ShowResetBar="0",
    ResetBlade="in:(s;u4;)",
    ResetRotation="in:(s;)",
    ResetPov="in:(s;)",
    ResetShaper="in:(s;)",
    ResetAllBlades="in:(s;)"
}
---@return "ShaperWindowSettings"
function ShaperWindowSettings:GetClass() end
---@return "Object"
function ShaperWindowSettings:GetChildClass() end
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
---@overload fun(name: "ViewMode", role: nil): ShaperViewMode
---@overload fun(name: "BarMode", role: nil): ShaperBarMode
---@overload fun(name: "ControlMode", role: nil): ShaperControlMode
---@overload fun(name: "LinkMode", role: nil): ShaperEncoderLinkMode
---@overload fun(name: "MiniFadersMode", role: nil): MiniFadersMode
---@overload fun(name: "ShowPov"|"AutoPov"|"ShowResetBar", role: nil): integer
---@overload fun(name: "ResetBlade", role: nil): fun(str: string, int: integer) : boolean
---@overload fun(name: "ResetRotation"|"ResetPov"|"ResetShaper"|"ResetAllBlades", role: nil): fun(text: string) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ViewMode"|"BarMode"|"ControlMode"|"LinkMode"|"MiniFadersMode"|"ShowPov"|"AutoPov"|"ShowResetBar"|"ResetBlade"|"ResetRotation"|"ResetPov"|"ResetShaper"|"ResetAllBlades", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ShaperWindowSettings:Get(name, role) end
