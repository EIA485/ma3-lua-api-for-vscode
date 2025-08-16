---@meta

---@class TrackGroup: NamedObj
---@field Play ECPlay|boolean
---@field Rec ECRec|boolean
local TrackGroup = {
    Play="1",
    Rec="1"
}
---@return "TrackGroup"
function TrackGroup:GetClass() end
---@return "Track"
function TrackGroup:GetChildClass() end
---@generic T : TrackGroup
---@param class `T`
---@return boolean
function TrackGroup:IsClass(class) end
---@return Timecode
function TrackGroup:Parent() end
---@param index integer
---@return Track
function TrackGroup:Ptr(index) end
---@return Track[]
function TrackGroup:Children() end
---@return Track?
function TrackGroup:CurrentChild() end
---@return 17
function TrackGroup:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "Play"
---@overload fun(idx: 16): "Rec"
function TrackGroup:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: ECPlay, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: ECRec, ReadOnly: False, ImportIgnore: False}
function TrackGroup:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12|15|16): "UInt64"
---@overload fun(idx: 14): "Int64"
function TrackGroup:PropertyType(idx) end
---@overload fun(name: "Play", role: nil): ECPlay|boolean
---@overload fun(name: "Rec", role: nil): ECRec|boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Play"|"Rec", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Track
function TrackGroup:Get(name, role) end
---@generic T : Track
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Track
function TrackGroup:Create(index, class, undo) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Track
function TrackGroup:Append(class, undo, count) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Track
function TrackGroup:Acquire(class, undo) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Track
---@deprecated use "Acquire" instead
function TrackGroup:Aquire(class, undo) end
---@generic T : Track
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Track
function TrackGroup:Insert(index, class, undo, count) end
---@generic T : Track
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Track
function TrackGroup:Find(class, undo) end
---@overload fun(property_name: "Play", property_value: ECPlay|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function TrackGroup:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Target", property_value: Object)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean)
---@overload fun(property_name: "Play", property_value: ECPlay|boolean)
---@overload fun(property_name: "Rec", property_value: ECRec|boolean)
---@overload fun(property_name: "Target", property_value: Object)
function TrackGroup:SetChildren(property_name, property_value) end