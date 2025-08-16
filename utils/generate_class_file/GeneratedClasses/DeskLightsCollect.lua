---@meta

---@class DeskLightsCollect: Object
---@field LedFeedbackDuration integer
local DeskLightsCollect = {
    LedFeedbackDuration="30"
}
---@return "DeskLightsCollect"
function DeskLightsCollect:GetClass() end
---@return "DeskLightsSet"
function DeskLightsCollect:GetChildClass() end
---@generic T : DeskLightsCollect
---@param class `T`
---@return boolean
function DeskLightsCollect:IsClass(class) end
---@return StationSettings
function DeskLightsCollect:Parent() end
---@param index integer
---@return DeskLightsSet
function DeskLightsCollect:Ptr(index) end
---@return DeskLightsSet[]
function DeskLightsCollect:Children() end
---@return DeskLightsSet?
function DeskLightsCollect:CurrentChild() end
---@return 16
function DeskLightsCollect:PropertyCount() end
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
---@overload fun(idx: 15): "LedFeedbackDuration"
function DeskLightsCollect:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function DeskLightsCollect:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
function DeskLightsCollect:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"LedFeedbackDuration", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"LedFeedbackDuration", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DeskLightsSet
function DeskLightsCollect:Get(name, role) end
---@generic T : DeskLightsSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Create(index, class, undo) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DeskLightsSet
function DeskLightsCollect:Append(class, undo, count) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Acquire(class, undo) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
---@deprecated use "Acquire" instead
function DeskLightsCollect:Aquire(class, undo) end
---@generic T : DeskLightsSet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DeskLightsSet
function DeskLightsCollect:Insert(index, class, undo, count) end
---@generic T : DeskLightsSet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DeskLightsSet
function DeskLightsCollect:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"LedFeedbackDuration", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function DeskLightsCollect:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "DarkMode", property_value: YesNo|boolean)
---@overload fun(property_name: "MasterAddress"|"LedEncoderAddress"|"ScreenExternalAddress"|"LedFaderAddress"|"LedExecAddress"|"LedKeyboardAddress"|"LedOtherAddress"|"ScreenBigAddress"|"ScreenLetterAddress"|"ScreenSmallAddress", property_value: DMXPropertyAddress)
---@overload fun(property_name: "DarkMode", property_value: YesNo|boolean)
---@overload fun(property_name: "LedExec"|"LedEncoder"|"LedKeyboard"|"ScreenExternal"|"LedOther"|"ScreenBig"|"Master"|"ScreenLetter"|"ScreenSmall"|"LedFader", property_value: integer)
function DeskLightsCollect:SetChildren(property_name, property_value) end