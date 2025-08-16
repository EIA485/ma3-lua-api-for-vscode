---@meta

---@class Menu: Plugin
---@field DisplayFrom DisplayNumber
---@field DisplayTo DisplayNumber
---@field Placement PluginPlacement
---@field PultType PultType
---@field HostType HostType
---@field HostSubType HostSubType
---@field HostOs HostOs
---@field DisplayIndexConfigurable YesNo|boolean
---@field DisplayExcludeMask integer
---@field Core YesNo|boolean
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
---@generic T : Menu
---@param class `T`
---@return boolean
function Menu:IsClass(class) end
---@return Menus
function Menu:Parent() end
---@return 34
function Menu:PropertyCount() end
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
---@overload fun(idx: 20): "Author"
---@overload fun(idx: 21): "Version"
---@overload fun(idx: 22): "Path"
---@overload fun(idx: 23): "UserRights"
---@overload fun(idx: 24): "DisplayFrom"
---@overload fun(idx: 25): "DisplayTo"
---@overload fun(idx: 26): "Placement"
---@overload fun(idx: 27): "PultType"
---@overload fun(idx: 28): "HostType"
---@overload fun(idx: 29): "HostSubType"
---@overload fun(idx: 30): "HostOs"
---@overload fun(idx: 31): "DisplayIndexConfigurable"
---@overload fun(idx: 32): "DisplayExcludeMask"
---@overload fun(idx: 33): "Core"
function Menu:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|31|33): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21|22|32): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 23): {ExportIgnore: False, EnumCollection: UserRights, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 24|25): {ExportIgnore: False, EnumCollection: DisplayNumber, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 26): {ExportIgnore: False, EnumCollection: PluginPlacement, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 27): {ExportIgnore: False, EnumCollection: PultType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 28): {ExportIgnore: False, EnumCollection: HostType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 29): {ExportIgnore: False, EnumCollection: HostSubType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 30): {ExportIgnore: False, EnumCollection: HostOs, ReadOnly: False, ImportIgnore: False}
function Menu:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|24|25|32): "UInt32"
---@overload fun(idx: 7|12|17|18|20|22): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|21): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 23|26|27|28|29|30|31): "UInt8"
---@overload fun(idx: 33): "UInt16"
function Menu:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "DisplayFrom"|"DisplayTo", role: nil): DisplayNumber
---@overload fun(name: "HostOs", role: nil): HostOs
---@overload fun(name: "HostSubType", role: nil): HostSubType
---@overload fun(name: "HostType", role: nil): HostType
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Placement", role: nil): PluginPlacement
---@overload fun(name: "PultType", role: nil): PultType
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DisplayIndexConfigurable"|"Core", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"DisplayExcludeMask", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"Author"|"Path", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Author"|"Version"|"Path"|"UserRights"|"DisplayFrom"|"DisplayTo"|"Placement"|"PultType"|"HostType"|"HostSubType"|"HostOs"|"DisplayIndexConfigurable"|"DisplayExcludeMask"|"Core", role: Enums.Roles): string
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
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DisplayFrom"|"DisplayTo", property_value: DisplayNumber, override_change_level: ChangeLevel?)
---@overload fun(property_name: "HostOs", property_value: HostOs, override_change_level: ChangeLevel?)
---@overload fun(property_name: "HostSubType", property_value: HostSubType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "HostType", property_value: HostType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Placement", property_value: PluginPlacement, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PultType", property_value: PultType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Version", property_value: Stream.Version, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "UserRights", property_value: UserRights, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"DisplayIndexConfigurable"|"Core", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"DisplayExcludeMask", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"Author"|"Path", property_value: string, override_change_level: ChangeLevel?)
function Menu:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DefaultDisplay", property_value: DisplayNone)
---@overload fun(property_name: "DisplayTypePreference", property_value: DisplayTypePreference)
---@overload fun(property_name: "UserRights", property_value: UserRights)
---@overload fun(property_name: "DefaultDisplay", property_value: DisplayNone)
---@overload fun(property_name: "DisplayTypePreference", property_value: DisplayTypePreference)
---@overload fun(property_name: "UserRights", property_value: UserRights)
---@overload fun(property_name: "Toggle"|"CanProvideUiGridSelection"|"SearchFocusAllowed"|"BuddyGroupIdUnique", property_value: YesNo|boolean)
---@overload fun(property_name: "PlaceHolder"|"BuddyGroupId"|"WindowSettings"|"SingletonDialogGroup"|"WindowContext", property_value: string)
function Menu:SetChildren(property_name, property_value) end