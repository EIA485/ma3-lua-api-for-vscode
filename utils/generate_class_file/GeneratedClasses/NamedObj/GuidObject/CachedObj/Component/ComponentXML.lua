---@meta

---@class ComponentXML: Component A plugin component that contains xml to create ui elements.
---@field PlaceHolder string
---@field WindowSettings string
---@field WindowContext string
---@field Toggle integer
---@field SearchFocusAllowed integer
---@field BuddyGroupIdUnique integer
---@field CanProvideUiGridSelection integer
---@field BuddyGroupId string
---@field DisplayTypePreference DisplayTypePreference
---@field DefaultDisplay integer
---@field SingletonDialogGroup string
local ComponentXML = {
    Toggle="Yes",
    SearchFocusAllowed="Yes",
    BuddyGroupIdUnique="Yes",
    CanProvideUiGridSelection="Yes",
    DisplayTypePreference="Any",
    DefaultDisplay="None"
}
---@return "ComponentXML"
function ComponentXML:GetClass() end
---@return "Object"
function ComponentXML:GetChildClass() end
---@return Menu
function ComponentXML:Parent() end
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
---@overload fun(name: "FileName"|"FilePath", role: nil): string
---@overload fun(name: "FileSize", role: nil): integer
---@overload fun(name: "FileContent", role: nil): string
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Installed"|"IsResource"|"InStream", role: nil): integer
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "PlaceHolder"|"WindowSettings"|"WindowContext", role: nil): string
---@overload fun(name: "Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection", role: nil): integer
---@overload fun(name: "BuddyGroupId", role: nil): string
---@overload fun(name: "DisplayTypePreference", role: nil): DisplayTypePreference
---@overload fun(name: "DefaultDisplay", role: nil): integer
---@overload fun(name: "SingletonDialogGroup", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"UserRights"|"PlaceHolder"|"WindowSettings"|"WindowContext"|"Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection"|"BuddyGroupId"|"DisplayTypePreference"|"DefaultDisplay"|"SingletonDialogGroup", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ComponentXML:Get(name, role) end
