---@meta

---@class ComponentLua: Component A plugin component that contains Lua script.
---@field SyntaxError YesNo|boolean
---@field FullPath string
---@field FileExists YesNo|boolean
local ComponentLua = {}
---@return "ComponentLua"
function ComponentLua:GetClass() end
---@return "Object"
function ComponentLua:GetChildClass() end
---@generic T : ComponentLua
---@param class `T`
---@return boolean
function ComponentLua:IsClass(class) end
---@return 32
function ComponentLua:PropertyCount() end
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
---@overload fun(idx: 29): "SyntaxError"
---@overload fun(idx: 30): "FullPath"
---@overload fun(idx: 31): "FileExists"
function ComponentLua:PropertyName(idx) end
---@overload fun(idx: 0|1|2|26|27): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|25): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|22): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20|21|23): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10|29|31): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 24): {ExportIgnore: True, EnumCollection: CachedObjectSource, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 28): {ExportIgnore: False, EnumCollection: UserRights, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 30): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function ComponentLua:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|22|25|26|27): "UInt32"
---@overload fun(idx: 7|12|17|18|20|21|23|30): "String"
---@overload fun(idx: 9|10|29|31): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 24|28): "UInt8"
function ComponentLua:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Source", role: nil): CachedObjectSource
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Installed"|"IsResource"|"InStream"|"SyntaxError"|"FileExists", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FileSize", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"FileName"|"FilePath"|"FileContent"|"FullPath", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"FileName"|"FilePath"|"FileSize"|"FileContent"|"Source"|"Installed"|"IsResource"|"InStream"|"UserRights"|"SyntaxError"|"FullPath"|"FileExists", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ComponentLua:Get(name, role) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Source", property_value: CachedObjectSource, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "UserRights", property_value: UserRights, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Installed"|"IsResource"|"InStream", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FileSize", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"FileName"|"FilePath"|"FileContent", property_value: string, override_change_level: ChangeLevel?)
function ComponentLua:Set(property_name, property_value, override_change_level) end