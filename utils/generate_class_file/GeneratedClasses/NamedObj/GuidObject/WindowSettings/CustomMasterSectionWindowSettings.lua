---@meta

---@class CustomMasterSectionWindowSettings: WindowSettings
---@field ShowCustomSection integer
---@field ShowMasterSection integer
---@field ShowPageSection integer
---@field ShowMasterSectionKnobs integer
---@field ShowLabels integer
---@field ShowHardwareButtons integer
---@field ShowGrandMasterSection integer
local CustomMasterSectionWindowSettings = {
    ShowCustomSection="Yes",
    ShowMasterSection="Yes",
    ShowPageSection="Yes",
    ShowMasterSectionKnobs="Yes",
    ShowLabels="Yes",
    ShowHardwareButtons="Yes",
    ShowGrandMasterSection="Yes"
}
---@return "CustomMasterSectionWindowSettings"
function CustomMasterSectionWindowSettings:GetClass() end
---@return "Object"
function CustomMasterSectionWindowSettings:GetChildClass() end
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
---@overload fun(name: "ShowCustomSection"|"ShowMasterSection"|"ShowPageSection"|"ShowMasterSectionKnobs"|"ShowLabels"|"ShowHardwareButtons"|"ShowGrandMasterSection", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowCustomSection"|"ShowMasterSection"|"ShowPageSection"|"ShowMasterSectionKnobs"|"ShowLabels"|"ShowHardwareButtons"|"ShowGrandMasterSection", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function CustomMasterSectionWindowSettings:Get(name, role) end
