---@meta

---@class KeyboardShortCuts: Object
---@field KeyboardShortcutsActive YesNo|boolean Defines if keyboard shortcuts are active
---@field OnResetToDefault fun(str: string) : boolean
local KeyboardShortCuts = {
    KeyboardShortcutsActive="0",
    OnResetToDefault="in:OnResetToDefault(s;)"
}
---@return "KeyboardShortCuts"
function KeyboardShortCuts:GetClass() end
---@return "KeyboardShortcut"
function KeyboardShortCuts:GetChildClass() end
---@generic T : KeyboardShortCuts
---@param class `T`
---@return boolean
function KeyboardShortCuts:IsClass(class) end
---@return UserProfile
function KeyboardShortCuts:Parent() end
---@param index integer
---@return KeyboardShortcut
function KeyboardShortCuts:Ptr(index) end
---@return KeyboardShortcut[]
function KeyboardShortCuts:Children() end
---@return KeyboardShortcut?
function KeyboardShortCuts:CurrentChild() end
---@return 17
function KeyboardShortCuts:PropertyCount() end
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
---@overload fun(idx: 15): "KeyboardShortcutsActive"
---@overload fun(idx: 16): "OnResetToDefault"
function KeyboardShortCuts:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|15): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|16): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function KeyboardShortCuts:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|15): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 16): "Action"
function KeyboardShortCuts:PropertyType(idx) end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"KeyboardShortcutsActive", role: nil): YesNo|boolean
---@overload fun(name: "OnResetToDefault", role: nil): fun(str: string) : boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"KeyboardShortcutsActive"|"OnResetToDefault", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyboardShortcut
function KeyboardShortCuts:Get(name, role) end
---@generic T : KeyboardShortcut
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardShortcut
function KeyboardShortCuts:Create(index, class, undo) end
---@generic T : KeyboardShortcut
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardShortcut
function KeyboardShortCuts:Append(class, undo, count) end
---@generic T : KeyboardShortcut
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardShortcut
function KeyboardShortCuts:Acquire(class, undo) end
---@generic T : KeyboardShortcut
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardShortcut
---@deprecated use "Acquire" instead
function KeyboardShortCuts:Aquire(class, undo) end
---@generic T : KeyboardShortcut
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardShortcut
function KeyboardShortCuts:Insert(index, class, undo, count) end
---@generic T : KeyboardShortcut
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardShortcut
function KeyboardShortCuts:Find(class, undo) end
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"KeyboardShortcutsActive", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "OnResetToDefault", property_value: fun(str: string) : boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function KeyboardShortCuts:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "KeyCode", property_value: SCVirtualKeyCode)
---@overload fun(property_name: "ExecutorIndex", property_value: GrandKnob)
---@overload fun(property_name: "SpecialExec", property_value: SpecialExecutor)
---@overload fun(property_name: "Shortcut", property_value: HotKey)
---@overload fun(property_name: "ExecutorIndex", property_value: GrandKnob)
---@overload fun(property_name: "Shortcut", property_value: HotKey)
---@overload fun(property_name: "KeyCode", property_value: SCVirtualKeyCode)
---@overload fun(property_name: "SpecialExec", property_value: SpecialExecutor)
---@overload fun(property_name: "Name", property_value: string)
function KeyboardShortCuts:SetChildren(property_name, property_value) end