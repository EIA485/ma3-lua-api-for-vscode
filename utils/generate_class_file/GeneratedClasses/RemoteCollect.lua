---@meta

---@class RemoteCollect: Object
---@field Enabled YesNo|boolean
---@field FeedbackInput YesNo|boolean
local RemoteCollect = {
    Enabled="No",
    FeedbackInput="No"
}
---@return "RemoteCollect"
function RemoteCollect:GetClass() end
---@return "Remote"
function RemoteCollect:GetChildClass() end
---@generic T : RemoteCollect
---@param class `T`
---@return boolean
function RemoteCollect:IsClass(class) end
---@return Remotes
function RemoteCollect:Parent() end
---@param index integer
---@return Remote
function RemoteCollect:Ptr(index) end
---@return Remote[]
function RemoteCollect:Children() end
---@return Remote?
function RemoteCollect:CurrentChild() end
---@return 17
function RemoteCollect:PropertyCount() end
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
---@overload fun(idx: 15): "Enabled"
---@overload fun(idx: 16): "FeedbackInput"
function RemoteCollect:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15|16): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function RemoteCollect:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16): "UInt8"
function RemoteCollect:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Enabled"|"FeedbackInput", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Enabled"|"FeedbackInput", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Remote
function RemoteCollect:Get(name, role) end
---@overload fun(index: integer, class: "Remote", undo: Undo?): Remote
---@overload fun(index: integer, class: nil, undo: Undo?): Remote
function RemoteCollect:Create(index, class, undo) end
---@overload fun(class: "Remote", undo: Undo?, count: integer?): Remote
---@overload fun(class: nil, undo: Undo?, count: integer?): Remote
function RemoteCollect:Append(class, undo, count) end
---@overload fun(class: "Remote", undo: Undo?): Remote
---@overload fun(class: nil, undo: Undo?): Remote
function RemoteCollect:Acquire(class, undo) end
---@overload fun(class: "Remote", undo: Undo?): Remote
---@overload fun(class: nil, undo: Undo?): Remote
---@deprecated use "Acquire" instead
function RemoteCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "Remote", undo: Undo?, count: integer?): Remote
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Remote
function RemoteCollect:Insert(index, class, undo, count) end
---@overload fun(class: "Remote", undo: Undo?): Remote
---@overload fun(class: nil, undo: Undo?): Remote
function RemoteCollect:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Enabled"|"FeedbackInput", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function RemoteCollect:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Fader", property_value: AssignmentFaderFunctions)
---@overload fun(property_name: "Target", property_value: Object)
---@overload fun(property_name: "Key", property_value: AssignmentButtonFunctions)
---@overload fun(property_name: "Enabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Key", property_value: AssignmentButtonFunctions)
---@overload fun(property_name: "Fader", property_value: AssignmentFaderFunctions)
---@overload fun(property_name: "In"|"Out"|"TriggerOn"|"TriggerOff"|"InFrom"|"InTo", property_value: DMXPropertyValue)
---@overload fun(property_name: "Target", property_value: Object)
---@overload fun(property_name: "Enabled", property_value: YesNo|boolean)
---@overload fun(property_name: "OutTo"|"OutFrom", property_value: integer)
function RemoteCollect:SetChildren(property_name, property_value) end