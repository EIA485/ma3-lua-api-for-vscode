---@meta

---@class WindowInfoSettings: WindowSettings
---@field ShowTabs integer
---@field RememberedTab WindowInfoTab
---@field LinkMode InfoLinkMode
---@field WindowMode InfoWindowMode
---@field AppearanceMode InfoAppearanceMode
---@field UseTargetAppearance integer
---@field EditMode integer
---@field ShowEmpty integer
---@field AutoScroll integer
---@field NoteLabelColor UColor
---@field TargetName string
---@field ChildName string
---@field ChangeWindowMode fun(text: string) : boolean 0:text
---@field ChangeLinkMode fun(text: string) : boolean 0:text
local WindowInfoSettings = {
    ChangeWindowMode="in:(s;)",
    ChangeLinkMode="in:(s;)"
}
---@return "WindowInfoSettings"
function WindowInfoSettings:GetClass() end
---@return "Object"
function WindowInfoSettings:GetChildClass() end
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
---@overload fun(name: "ShowTabs", role: nil): integer
---@overload fun(name: "RememberedTab", role: nil): WindowInfoTab
---@overload fun(name: "LinkMode", role: nil): InfoLinkMode
---@overload fun(name: "WindowMode", role: nil): InfoWindowMode
---@overload fun(name: "AppearanceMode", role: nil): InfoAppearanceMode
---@overload fun(name: "UseTargetAppearance"|"EditMode"|"ShowEmpty"|"AutoScroll", role: nil): integer
---@overload fun(name: "NoteLabelColor", role: nil): UColor
---@overload fun(name: "TargetName"|"ChildName", role: nil): string
---@overload fun(name: "ChangeWindowMode"|"ChangeLinkMode", role: nil): fun(text: string) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"ShowTabs"|"RememberedTab"|"LinkMode"|"WindowMode"|"AppearanceMode"|"UseTargetAppearance"|"EditMode"|"ShowEmpty"|"AutoScroll"|"NoteLabelColor"|"TargetName"|"ChildName"|"ChangeWindowMode"|"ChangeLinkMode", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowInfoSettings:Get(name, role) end
