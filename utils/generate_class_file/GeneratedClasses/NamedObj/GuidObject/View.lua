---@meta

---@class View: GuidObject
---@field ScreenContentDisplay1 YesNo|boolean
---@field ScreenContentDisplay2 YesNo|boolean
---@field ScreenContentDisplay3 YesNo|boolean
---@field ScreenContentDisplay4 YesNo|boolean
---@field ScreenContentDisplay5 YesNo|boolean
---@field ScreenContentDisplay6 YesNo|boolean
---@field ScreenContentDisplay7 YesNo|boolean
---@field ScreenContentMask integer
---@field RequestedW RequestedSize
---@field RequestedH RequestedSize
local View = {
    ScreenContentDisplay1="1",
    ScreenContentDisplay2="0",
    ScreenContentDisplay3="0",
    ScreenContentDisplay4="0",
    ScreenContentDisplay5="0",
    ScreenContentDisplay6="0",
    ScreenContentDisplay7="0",
    ScreenContentMask="0",
    RequestedW="0",
    RequestedH="0"
}
---@return "View"
function View:GetClass() end
---@return "ViewWidget"
function View:GetChildClass() end
---@generic T : View
---@param class `T`
---@return boolean
function View:IsClass(class) end
---@return Views
function View:Parent() end
---@param index integer
---@return ViewWidget
function View:Ptr(index) end
---@return ViewWidget[]
function View:Children() end
---@return ViewWidget?
function View:CurrentChild() end
---@return 30
function View:PropertyCount() end
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
---@overload fun(idx: 20): "ScreenContentDisplay1"
---@overload fun(idx: 21): "ScreenContentDisplay2"
---@overload fun(idx: 22): "ScreenContentDisplay3"
---@overload fun(idx: 23): "ScreenContentDisplay4"
---@overload fun(idx: 24): "ScreenContentDisplay5"
---@overload fun(idx: 25): "ScreenContentDisplay6"
---@overload fun(idx: 26): "ScreenContentDisplay7"
---@overload fun(idx: 27): "ScreenContentMask"
---@overload fun(idx: 28): "RequestedW"
---@overload fun(idx: 29): "RequestedH"
function View:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|27): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8|20|21|22|23|24|25|26): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 28|29): {ExportIgnore: False, EnumCollection: RequestedSize, ReadOnly: False, ImportIgnore: False}
function View:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|20|21|22|23|24|25|26|27): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16): "Handle"
---@overload fun(idx: 28|29): "Int16"
function View:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "RequestedW"|"RequestedH", role: nil): RequestedSize
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"ScreenContentMask", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"ScreenContentDisplay1"|"ScreenContentDisplay2"|"ScreenContentDisplay3"|"ScreenContentDisplay4"|"ScreenContentDisplay5"|"ScreenContentDisplay6"|"ScreenContentDisplay7"|"ScreenContentMask"|"RequestedW"|"RequestedH", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): ViewWidget
function View:Get(name, role) end
---@generic T : ViewWidget
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ViewWidget
function View:Create(index, class, undo) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ViewWidget
function View:Append(class, undo, count) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewWidget
function View:Acquire(class, undo) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewWidget
---@deprecated use "Acquire" instead
function View:Aquire(class, undo) end
---@generic T : ViewWidget
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ViewWidget
function View:Insert(index, class, undo, count) end
---@generic T : ViewWidget
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ViewWidget
function View:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "RequestedW"|"RequestedH", property_value: RequestedSize, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"ScreenContentMask", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function View:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "PresetPoolType", property_value: DynamicPresetPool)
---@overload fun(property_name: "PresetPoolType", property_value: DynamicPresetPool)
---@overload fun(property_name: "SnapToBlockSize"|"MinSizeTranspose", property_value: YesNo|boolean)
---@overload fun(property_name: "MinW"|"MinH"|"Display"|"MaxW"|"X"|"MaxH"|"Y"|"W"|"H", property_value: integer)
function View:PresetPoolType(property_name, property_value) end