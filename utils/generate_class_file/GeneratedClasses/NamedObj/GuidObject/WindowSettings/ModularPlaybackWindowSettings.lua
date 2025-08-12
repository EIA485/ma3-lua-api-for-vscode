---@meta

---@class ModularPlaybackWindowSettings: WindowSettings
---@field WingID WingID
---@field Row400 integer
---@field Row300 integer
---@field Row200 integer
---@field Row100 integer
---@field Labels integer
---@field Executors integer
---@field Page integer
---@field #Sections SectionCount
---@field DirectAction integer
local ModularPlaybackWindowSettings = {
    WingID="Wing1",
    Row400="1",
    Row300="1",
    Row200="1",
    Row100="1",
    Labels="1",
    Executors="1",
    ["#Sections"]="Auto",
    DirectAction="1"
}
---@return "ModularPlaybackWindowSettings"
function ModularPlaybackWindowSettings:GetClass() end
---@return "Object"
function ModularPlaybackWindowSettings:GetChildClass() end
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
---@overload fun(name: "WingID", role: nil): WingID
---@overload fun(name: "Row400"|"Row300"|"Row200"|"Row100"|"Labels"|"Executors"|"Page", role: nil): integer
---@overload fun(name: "#Sections", role: nil): SectionCount
---@overload fun(name: "DirectAction", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"WingID"|"Row400"|"Row300"|"Row200"|"Row100"|"Labels"|"Executors"|"Page"|"#Sections"|"DirectAction", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ModularPlaybackWindowSettings:Get(name, role) end
