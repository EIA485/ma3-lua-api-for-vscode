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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "DisplayTypePreference", role: nil): DisplayTypePreference
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection"|"DefaultDisplay"|"FileSize"|"Installed"|"IsResource"|"InStream"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "PlaceHolder"|"WindowSettings"|"WindowContext"|"BuddyGroupId"|"SingletonDialogGroup"|"FileName"|"FilePath"|"FileContent"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "PlaceHolder"|"WindowSettings"|"WindowContext"|"Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection"|"BuddyGroupId"|"DisplayTypePreference"|"DefaultDisplay"|"SingletonDialogGroup"|"UserRights"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ComponentXML:Get(name, role) end