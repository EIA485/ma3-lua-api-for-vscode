---@meta

---@class VirtualKey: Object Describes the behavior of a virtual hardware key.
---@field Code VirtualKeyCode
---@field KeyCode KeyboardCodes
---@field SpecialCycle SpecialCycle
---@field RedirectKeyCode KeyboardCodes
---@field RedirectChar string
---@field Toggle YesNo|boolean
---@field IsFader YesNo|boolean
---@field NumericRedirect YesNo|boolean
---@field AlwaysNumericRedirect YesNo|boolean
---@field RedirectWithShift YesNo|boolean
---@field RedirectWithCtrl YesNo|boolean
---@field RedirectWithAlt YesNo|boolean
---@field CanBeProcessedWhileModal YesNo|boolean
---@field UseKeyStatusForLED YesNo|boolean
---@field HelpTopic string
---@field LedToken PresetActionToken
local VirtualKey = {
    Code="UNKNOWN",
    KeyCode="None",
    SpecialCycle="None",
    RedirectKeyCode="None",
    Toggle="0",
    IsFader="0",
    NumericRedirect="0",
    AlwaysNumericRedirect="0",
    RedirectWithShift="0",
    RedirectWithCtrl="0",
    RedirectWithAlt="0",
    CanBeProcessedWhileModal="0"
}
---@return "VirtualKey"
function VirtualKey:GetClass() end
---@return "VKValue"
function VirtualKey:GetChildClass() end
---@generic T : VirtualKey
---@param class `T`
---@return boolean
function VirtualKey:IsClass(class) end
---@return VirtualKeys
function VirtualKey:Parent() end
---@param index integer
---@return VKValue
function VirtualKey:Ptr(index) end
---@return VKValue[]
function VirtualKey:Children() end
---@return VKValue?
function VirtualKey:CurrentChild() end
---@return 31
function VirtualKey:PropertyCount() end
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
---@overload fun(idx: 15): "Code"
---@overload fun(idx: 16): "KeyCode"
---@overload fun(idx: 17): "SpecialCycle"
---@overload fun(idx: 18): "RedirectKeyCode"
---@overload fun(idx: 19): "RedirectChar"
---@overload fun(idx: 20): "Toggle"
---@overload fun(idx: 21): "IsFader"
---@overload fun(idx: 22): "NumericRedirect"
---@overload fun(idx: 23): "AlwaysNumericRedirect"
---@overload fun(idx: 24): "RedirectWithShift"
---@overload fun(idx: 25): "RedirectWithCtrl"
---@overload fun(idx: 26): "RedirectWithAlt"
---@overload fun(idx: 27): "CanBeProcessedWhileModal"
---@overload fun(idx: 28): "UseKeyStatusForLED"
---@overload fun(idx: 29): "HelpTopic"
---@overload fun(idx: 30): "LedToken"
function VirtualKey:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|20|21|22|23|24|25|26|27|28): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|19|29|30): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15): {ExportIgnore: False, EnumCollection: VirtualKeyCode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 16|18): {ExportIgnore: False, EnumCollection: KeyboardCodes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 17): {ExportIgnore: False, EnumCollection: SpecialCycle, ReadOnly: False, ImportIgnore: False}
function VirtualKey:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9|20|21|22|23|24|25|26|27|28): "UInt32"
---@overload fun(idx: 7|8|13|19|29): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15): "Int32"
---@overload fun(idx: 16|18): "Int16"
---@overload fun(idx: 17): "UInt8"
---@overload fun(idx: 30): "Token"
function VirtualKey:PropertyType(idx) end
---@overload fun(name: "KeyCode"|"RedirectKeyCode", role: nil): KeyboardCodes
---@overload fun(name: "LedToken", role: nil): PresetActionToken
---@overload fun(name: "SpecialCycle", role: nil): SpecialCycle
---@overload fun(name: "Code", role: nil): VirtualKeyCode
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"RedirectChar"|"HelpTopic", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Code"|"KeyCode"|"SpecialCycle"|"RedirectKeyCode"|"RedirectChar"|"Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED"|"HelpTopic"|"LedToken", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): VKValue
function VirtualKey:Get(name, role) end
---@generic T : VKValue
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): VKValue
function VirtualKey:Create(index, class, undo) end
---@generic T : VKValue
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): VKValue
function VirtualKey:Append(class, undo, count) end
---@generic T : VKValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VKValue
function VirtualKey:Acquire(class, undo) end
---@generic T : VKValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VKValue
---@deprecated use "Acquire" instead
function VirtualKey:Aquire(class, undo) end
---@generic T : VKValue
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): VKValue
function VirtualKey:Insert(index, class, undo, count) end
---@generic T : VKValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): VKValue
function VirtualKey:Find(class, undo) end
---@overload fun(property_name: "KeyCode"|"RedirectKeyCode", property_value: KeyboardCodes, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LedToken", property_value: PresetActionToken, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SpecialCycle", property_value: SpecialCycle, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Code", property_value: VirtualKeyCode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"RedirectChar"|"HelpTopic", property_value: string, override_change_level: ChangeLevel?)
function VirtualKey:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Modifier", property_value: VirtualKeyCode)
---@overload fun(property_name: "Execution", property_value: VirtualKeyExecutionType)
---@overload fun(property_name: "RedirectKeyCode", property_value: KeyboardCodes)
---@overload fun(property_name: "RedirectKeyCode", property_value: KeyboardCodes)
---@overload fun(property_name: "FirstToken"|"LastObjectToken"|"LastCommandToken", property_value: PresetActionToken)
---@overload fun(property_name: "PressSyntaxState"|"ReleaseSyntaxState", property_value: SyntaxState)
---@overload fun(property_name: "Modifier", property_value: VirtualKeyCode)
---@overload fun(property_name: "Execution", property_value: VirtualKeyExecutionType)
---@overload fun(property_name: "Remember"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"AlwaysNumericRedirect", property_value: YesNo|boolean)
---@overload fun(property_name: "Release"|"Press"|"DoublePress"|"RedirectChar"|"Hold"|"DisplayText", property_value: string)
function VirtualKey:RedirectKeyCode(property_name, property_value) end