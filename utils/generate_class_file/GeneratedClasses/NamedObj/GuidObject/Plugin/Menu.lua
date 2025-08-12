---@meta

---@class Menu: Plugin
---@field DisplayFrom integer
---@field DisplayTo integer
---@field Placement PluginPlacement
---@field PultType PultType
---@field HostType integer
---@field HostSubType integer
---@field HostOs integer
---@field DisplayIndexConfigurable integer
---@field DisplayExcludeMask integer
---@field Core integer
local Menu = {
    DisplayFrom="None",
    DisplayTo="None",
    Placement="Single",
    PultType="Any",
    HostType="Undefined",
    HostSubType="Undefined",
    HostOs="Undefined",
    DisplayIndexConfigurable="No",
    DisplayExcludeMask="0",
    Core="No"
}
---@return "Menu"
function Menu:GetClass() end
---@return "Component"
function Menu:GetChildClass() end
---@return Menus
function Menu:Parent() end
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
---@overload fun(name: "Author", role: nil): string
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Path", role: nil): string
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "DisplayFrom"|"DisplayTo", role: nil): integer
---@overload fun(name: "Placement", role: nil): PluginPlacement
---@overload fun(name: "PultType", role: nil): PultType
---@overload fun(name: "HostType"|"HostSubType"|"HostOs"|"DisplayIndexConfigurable"|"DisplayExcludeMask"|"Core", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Author"|"Version"|"Path"|"UserRights"|"DisplayFrom"|"DisplayTo"|"Placement"|"PultType"|"HostType"|"HostSubType"|"HostOs"|"DisplayIndexConfigurable"|"DisplayExcludeMask"|"Core", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Component
function Menu:Get(name, role) end
---@overload fun(index: integer, class: "Component", undo: Undo?): Component
---@overload fun(index: integer, class: "ComponentMultiLanguage", undo: Undo?): ComponentMultiLanguage
---@overload fun(index: integer, class: "ComponentSound", undo: Undo?): ComponentSound
---@overload fun(index: integer, class: "ComponentTexture", undo: Undo?): ComponentTexture
---@overload fun(index: integer, class: "ComponentXML", undo: Undo?): ComponentXML
---@overload fun(index: integer, class: "ComponentXML", undo: Undo?): ComponentXML
---@overload fun(index: integer, class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(index: integer, class: nil, undo: Undo?): Component
function Menu:Create(index, class, undo) end
---@overload fun(class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(class: "ComponentMultiLanguage", undo: Undo?, count: integer?): ComponentMultiLanguage
---@overload fun(class: "ComponentSound", undo: Undo?, count: integer?): ComponentSound
---@overload fun(class: "ComponentTexture", undo: Undo?, count: integer?): ComponentTexture
---@overload fun(class: "ComponentXML", undo: Undo?, count: integer?): ComponentXML
---@overload fun(class: "ComponentXML", undo: Undo?, count: integer?): ComponentXML
---@overload fun(class: "ComponentLua", undo: Undo?, count: integer?): ComponentLua
---@overload fun(class: nil, undo: Undo?, count: integer?): Component
function Menu:Append(class, undo, count) end
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: "ComponentMultiLanguage", undo: Undo?): ComponentMultiLanguage
---@overload fun(class: "ComponentSound", undo: Undo?): ComponentSound
---@overload fun(class: "ComponentTexture", undo: Undo?): ComponentTexture
---@overload fun(class: "ComponentXML", undo: Undo?): ComponentXML
---@overload fun(class: "ComponentXML", undo: Undo?): ComponentXML
---@overload fun(class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(class: nil, undo: Undo?): Component
function Menu:Acquire(class, undo) end
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: "ComponentMultiLanguage", undo: Undo?): ComponentMultiLanguage
---@overload fun(class: "ComponentSound", undo: Undo?): ComponentSound
---@overload fun(class: "ComponentTexture", undo: Undo?): ComponentTexture
---@overload fun(class: "ComponentXML", undo: Undo?): ComponentXML
---@overload fun(class: "ComponentXML", undo: Undo?): ComponentXML
---@overload fun(class: "ComponentLua", undo: Undo?): ComponentLua
---@overload fun(class: nil, undo: Undo?): Component
---@deprecated use "Acquire" instead
function Menu:Aquire(class, undo) end
---@overload fun(index: integer, class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(index: integer, class: "ComponentMultiLanguage", undo: Undo?, count: integer?): ComponentMultiLanguage
---@overload fun(index: integer, class: "ComponentSound", undo: Undo?, count: integer?): ComponentSound
---@overload fun(index: integer, class: "ComponentTexture", undo: Undo?, count: integer?): ComponentTexture
---@overload fun(index: integer, class: "ComponentXML", undo: Undo?, count: integer?): ComponentXML
---@overload fun(index: integer, class: "ComponentXML", undo: Undo?, count: integer?): ComponentXML
---@overload fun(index: integer, class: "ComponentLua", undo: Undo?, count: integer?): ComponentLua
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Component
function Menu:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Component"): Component
---@overload fun(name: string, class: "ComponentMultiLanguage"): ComponentMultiLanguage
---@overload fun(name: string, class: "ComponentSound"): ComponentSound
---@overload fun(name: string, class: "ComponentTexture"): ComponentTexture
---@overload fun(name: string, class: "ComponentXML"): ComponentXML
---@overload fun(name: string, class: "ComponentXML"): ComponentXML
---@overload fun(name: string, class: "ComponentLua"): ComponentLua
---@overload fun(name: string, class: nil): Component
function Menu:Find(name, class) end
---@overload fun(name: string, class: "Component"): Component
---@overload fun(name: string, class: "ComponentMultiLanguage"): ComponentMultiLanguage
---@overload fun(name: string, class: "ComponentSound"): ComponentSound
---@overload fun(name: string, class: "ComponentTexture"): ComponentTexture
---@overload fun(name: string, class: "ComponentXML"): ComponentXML
---@overload fun(name: string, class: "ComponentXML"): ComponentXML
---@overload fun(name: string, class: "ComponentLua"): ComponentLua
---@overload fun(name: string, class: nil): Object
function Menu:FindRecursive(name, class) end
