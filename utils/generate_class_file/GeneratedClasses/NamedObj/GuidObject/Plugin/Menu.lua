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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Placement", role: nil): PluginPlacement
---@overload fun(name: "PultType", role: nil): PultType
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DisplayFrom"|"DisplayTo"|"HostType"|"HostSubType"|"HostOs"|"DisplayIndexConfigurable"|"DisplayExcludeMask"|"Core"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Author"|"Path"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "DisplayFrom"|"DisplayTo"|"Placement"|"PultType"|"HostType"|"HostSubType"|"HostOs"|"DisplayIndexConfigurable"|"DisplayExcludeMask"|"Core"|"Author"|"Version"|"Path"|"UserRights"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Component
function Menu:Get(name, role) end
---@generic T : Component
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Component
function Menu:Create(index, class, undo) end
---@generic T : Component
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Component
function Menu:Append(class, undo, count) end
---@generic T : Component
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Component
function Menu:Acquire(class, undo) end
---@generic T : Component
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Component
---@deprecated use "Acquire" instead
function Menu:Aquire(class, undo) end
---@generic T : Component
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Component
function Menu:Insert(index, class, undo, count) end
---@generic T : Component
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Component
function Menu:Find(class, undo) end