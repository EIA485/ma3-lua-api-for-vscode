---@meta

---@class FaderSubTrack: SubTrack
---@field FaderToken AssignmentFaderFunctionsSubTrack
local FaderSubTrack = {
    FaderToken="Master"
}
---@return "FaderSubTrack"
function FaderSubTrack:GetClass() end
---@return "FaderEvent"
function FaderSubTrack:GetChildClass() end
---@generic T : FaderSubTrack
---@param class `T`
---@return boolean
function FaderSubTrack:IsClass(class) end
---@param index integer
---@return FaderEvent
function FaderSubTrack:Ptr(index) end
---@return FaderEvent[]
function FaderSubTrack:Children() end
---@return FaderEvent?
function FaderSubTrack:CurrentChild() end
---@return 16
function FaderSubTrack:PropertyCount() end
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
---@overload fun(idx: 15): "FaderToken"
function FaderSubTrack:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: AssignmentFaderFunctionsSubTrack, ReadOnly: False, ImportIgnore: False}
function FaderSubTrack:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "UInt16"
function FaderSubTrack:PropertyType(idx) end
---@overload fun(name: "FaderToken", role: nil): AssignmentFaderFunctionsSubTrack
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FaderToken", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): FaderEvent
function FaderSubTrack:Get(name, role) end
---@generic T : FaderEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Create(index, class, undo) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FaderEvent
function FaderSubTrack:Append(class, undo, count) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Acquire(class, undo) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderEvent
---@deprecated use "Acquire" instead
function FaderSubTrack:Aquire(class, undo) end
---@generic T : FaderEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FaderEvent
function FaderSubTrack:Insert(index, class, undo, count) end
---@generic T : FaderEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderEvent
function FaderSubTrack:Find(class, undo) end
---@overload fun(property_name: "FaderToken", property_value: AssignmentFaderFunctionsSubTrack, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function FaderSubTrack:Set(property_name, property_value, override_change_level) end
function FaderSubTrack:CueDestination(property_name, property_value) end