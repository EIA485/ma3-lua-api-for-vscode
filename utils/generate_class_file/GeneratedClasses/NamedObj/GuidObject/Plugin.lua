---@meta

---@class Plugin: GuidObject A plugin is a collection of components. Usually it represents a piece of user interface.
---@field Author string
---@field Version Stream.Version
---@field Path string
---@field UserRights UserRights
local Plugin = {
    UserRights="View"
}
---@return "Plugin"
function Plugin:GetClass() end
---@return "Component"
function Plugin:GetChildClass() end
---@generic T : Plugin
---@param class `T`
---@return boolean
function Plugin:IsClass(class) end
---@param index integer
---@return Component
function Plugin:Ptr(index) end
---@return Component[]
function Plugin:Children() end
---@return Component?
function Plugin:CurrentChild() end
---@return 24
function Plugin:PropertyCount() end
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
function Plugin:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21|22): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 23): {ExportIgnore: False, EnumCollection: UserRights, ReadOnly: False, ImportIgnore: False}
function Plugin:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8): "UInt32"
---@overload fun(idx: 7|12|17|18|20|22): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|21): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 23): "UInt8"
function Plugin:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"Author"|"Path", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Author"|"Version"|"Path"|"UserRights", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Component
function Plugin:Get(name, role) end
---@generic T : ComponentLua
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Component", undo: Undo?): Component
---@overload fun(index: integer, class: nil, undo: Undo?): Component
function Plugin:Create(index, class, undo) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(class: nil, undo: Undo?, count: integer?): Component
function Plugin:Append(class, undo, count) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: nil, undo: Undo?): Component
function Plugin:Acquire(class, undo) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: nil, undo: Undo?): Component
---@deprecated use "Acquire" instead
function Plugin:Aquire(class, undo) end
---@generic T : ComponentLua
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Component", undo: Undo?, count: integer?): Component
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Component
function Plugin:Insert(index, class, undo, count) end
---@generic T : ComponentLua
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Component", undo: Undo?): Component
---@overload fun(class: nil, undo: Undo?): Component
function Plugin:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Version", property_value: Stream.Version, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "UserRights", property_value: UserRights, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"Author"|"Path", property_value: string, override_change_level: ChangeLevel?)
function Plugin:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "UserRights", property_value: UserRights)
---@overload fun(property_name: "UserRights", property_value: UserRights)
function Plugin:SetChildren(property_name, property_value) end