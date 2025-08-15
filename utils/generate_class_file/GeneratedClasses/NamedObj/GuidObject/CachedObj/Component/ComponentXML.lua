---@meta

---@class ComponentXML: Component A plugin component that contains xml to create ui elements.
---@field PlaceHolder string
---@field WindowSettings string
---@field WindowContext string
---@field Toggle YesNo|boolean
---@field SearchFocusAllowed YesNo|boolean
---@field BuddyGroupIdUnique YesNo|boolean
---@field CanProvideUiGridSelection YesNo|boolean
---@field BuddyGroupId string
---@field DisplayTypePreference DisplayTypePreference
---@field DefaultDisplay DisplayNone
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
---@generic T : ComponentXML
---@param class `T`
---@return boolean
function ComponentXML:IsClass(class) end
---@return Menu
function ComponentXML:Parent() end
---@return 40
function ComponentXML:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "FileName"
---@overload fun(idx: 21): "FilePath"
---@overload fun(idx: 22): "FileSize"
---@overload fun(idx: 23): "FileContent"
---@overload fun(idx: 24): "Source"
---@overload fun(idx: 25): "Installed"
---@overload fun(idx: 26): "IsResource"
---@overload fun(idx: 27): "InStream"
---@overload fun(idx: 28): "UserRights"
---@overload fun(idx: 29): "PlaceHolder"
---@overload fun(idx: 30): "WindowSettings"
---@overload fun(idx: 31): "WindowContext"
---@overload fun(idx: 32): "Toggle"
---@overload fun(idx: 33): "SearchFocusAllowed"
---@overload fun(idx: 34): "BuddyGroupIdUnique"
---@overload fun(idx: 35): "CanProvideUiGridSelection"
---@overload fun(idx: 36): "BuddyGroupId"
---@overload fun(idx: 37): "DisplayTypePreference"
---@overload fun(idx: 38): "DefaultDisplay"
---@overload fun(idx: 39): "SingletonDialogGroup"
function ComponentXML:PropertyName(idx) end
---@overload fun(idx: 0|1|2|26|27): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|25|32|33|34|35): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|22): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21|23|29|30|31|36|39): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: True, EnumCollection: CachedObjectSource, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 28): {ExportIgnore: False, EnumCollection: UserRights, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 37): {ExportIgnore: False, EnumCollection: DisplayTypePreference, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 38): {ExportIgnore: False, EnumCollection: DisplayNone, ReadOnly: False, ImportIgnore: False}
function ComponentXML:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|22|25|26|27|32|33|34|35|38): "UInt32"
---@overload fun(idx: 7|12|17|18|20|21|23|29|30|31|36|39): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 24|28|37): "UInt8"
function ComponentXML:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "DefaultDisplay", role: nil): DisplayNone
---@overload fun(name: "DisplayTypePreference", role: nil): DisplayTypePreference
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Installed"|"IsResource"|"InStream"|"Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FileSize", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"FileName"|"FilePath"|"FileContent"|"PlaceHolder"|"WindowSettings"|"WindowContext"|"BuddyGroupId"|"SingletonDialogGroup", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"UserRights"|"PlaceHolder"|"WindowSettings"|"WindowContext"|"Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection"|"BuddyGroupId"|"DisplayTypePreference"|"DefaultDisplay"|"SingletonDialogGroup", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ComponentXML:Get(name, role) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Source", property_value: CachedObjectSource, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DefaultDisplay", property_value: DisplayNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DisplayTypePreference", property_value: DisplayTypePreference, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "UserRights", property_value: UserRights, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Installed"|"IsResource"|"InStream"|"Toggle"|"SearchFocusAllowed"|"BuddyGroupIdUnique"|"CanProvideUiGridSelection", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FileSize", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"FileName"|"FilePath"|"FileContent"|"PlaceHolder"|"WindowSettings"|"WindowContext"|"BuddyGroupId"|"SingletonDialogGroup", property_value: string, override_change_level: ChangeLevel?)
function ComponentXML:Set(property_name, property_value, override_change_level) end