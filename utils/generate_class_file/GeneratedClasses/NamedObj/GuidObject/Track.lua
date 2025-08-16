---@meta

---@class Track: GuidObject
---@field Target Object
---@field Play ECPlay|boolean
---@field Rec ECRec|boolean
local Track = {
    Play="1",
    Rec="1"
}
---@return "Track"
function Track:GetClass() end
---@return "TimeRange"
function Track:GetChildClass() end
---@generic T : Track
---@param class `T`
---@return boolean
function Track:IsClass(class) end
---@return TrackGroup
function Track:Parent() end
---@param index integer
---@return TimeRange
function Track:Ptr(index) end
---@return TimeRange[]
function Track:Children() end
---@return TimeRange?
function Track:CurrentChild() end
---@return 23
function Track:PropertyCount() end
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
---@overload fun(idx: 20): "Target"
---@overload fun(idx: 21): "Play"
---@overload fun(idx: 22): "Rec"
function Track:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|20): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 21): {ExportIgnore: False, EnumCollection: ECPlay, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 22): {ExportIgnore: False, EnumCollection: ECRec, ReadOnly: False, ImportIgnore: False}
function Track:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8): "UInt32"
---@overload fun(idx: 7|12|17|18): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11|21|22): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19): "Custom"
---@overload fun(idx: 15|16|20): "Handle"
function Track:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Play", role: nil): ECPlay|boolean
---@overload fun(name: "Rec", role: nil): ECRec|boolean
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Target"|"Play"|"Rec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): TimeRange
function Track:Get(name, role) end
---@overload fun(index: integer, class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(index: integer, class: nil, undo: Undo?): TimeRange
function Track:Create(index, class, undo) end
---@overload fun(class: "TimeRange", undo: Undo?, count: integer?): TimeRange
---@overload fun(class: nil, undo: Undo?, count: integer?): TimeRange
function Track:Append(class, undo, count) end
---@overload fun(class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(class: nil, undo: Undo?): TimeRange
function Track:Acquire(class, undo) end
---@overload fun(class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(class: nil, undo: Undo?): TimeRange
---@deprecated use "Acquire" instead
function Track:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimeRange", undo: Undo?, count: integer?): TimeRange
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimeRange
function Track:Insert(index, class, undo, count) end
---@overload fun(class: "TimeRange", undo: Undo?): TimeRange
---@overload fun(class: nil, undo: Undo?): TimeRange
function Track:Find(class, undo) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Target", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function Track:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Start", property_value: SignedTimePropertyValue)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean)
---@overload fun(property_name: "Duration", property_value: TCDuration)
---@overload fun(property_name: "SpeedFactor", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean)
---@overload fun(property_name: "TrackGroup"|"Track", property_value: Object)
---@overload fun(property_name: "Start", property_value: SignedTimePropertyValue)
---@overload fun(property_name: "Duration", property_value: TCDuration)
---@overload fun(property_name: "SpeedFactor", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
function Track:SetChildren(property_name, property_value) end