---@meta

---@class VirtualKey: Object Describes the behavior of a virtual hardware key.
---@field Code VirtualKeyCode
---@field KeyCode SCVirtualKeyCode
---@field SpecialCycle SpecialCycle
---@field RedirectKeyCode SCVirtualKeyCode
---@field RedirectChar string
---@field Toggle integer
---@field IsFader integer
---@field NumericRedirect integer
---@field AlwaysNumericRedirect integer
---@field RedirectWithShift integer
---@field RedirectWithCtrl integer
---@field RedirectWithAlt integer
---@field CanBeProcessedWhileModal integer
---@field UseKeyStatusForLED integer
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
---@return VirtualKeys
function VirtualKey:Parent() end
---@param index integer
---@return VKValue
function VirtualKey:Ptr(index) end
---@return VKValue[]
function VirtualKey:Children() end
---@return VKValue?
function VirtualKey:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Code", role: nil): VirtualKeyCode
---@overload fun(name: "KeyCode", role: nil): SCVirtualKeyCode
---@overload fun(name: "SpecialCycle", role: nil): SpecialCycle
---@overload fun(name: "RedirectKeyCode", role: nil): SCVirtualKeyCode
---@overload fun(name: "RedirectChar", role: nil): string
---@overload fun(name: "Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED", role: nil): integer
---@overload fun(name: "HelpTopic", role: nil): string
---@overload fun(name: "LedToken", role: nil): PresetActionToken
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Code"|"KeyCode"|"SpecialCycle"|"RedirectKeyCode"|"RedirectChar"|"Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED"|"HelpTopic"|"LedToken", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): VKValue
function VirtualKey:Get(name, role) end
---@overload fun(index: integer, class: "VKValue", undo: Undo?): VKValue
---@overload fun(index: integer, class: nil, undo: Undo?): VKValue
function VirtualKey:Create(index, class, undo) end
---@overload fun(class: "VKValue", undo: Undo?, count: integer?): VKValue
---@overload fun(class: nil, undo: Undo?, count: integer?): VKValue
function VirtualKey:Append(class, undo, count) end
---@overload fun(class: "VKValue", undo: Undo?): VKValue
---@overload fun(class: nil, undo: Undo?): VKValue
function VirtualKey:Acquire(class, undo) end
---@overload fun(class: "VKValue", undo: Undo?): VKValue
---@overload fun(class: nil, undo: Undo?): VKValue
---@deprecated use "Acquire" instead
function VirtualKey:Aquire(class, undo) end
---@overload fun(index: integer, class: "VKValue", undo: Undo?, count: integer?): VKValue
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): VKValue
function VirtualKey:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "VKValue"): VKValue
---@overload fun(name: string, class: nil): VKValue
function VirtualKey:Find(name, class) end
---@overload fun(name: string, class: "VKValue"): VKValue
---@overload fun(name: string, class: nil): Object
function VirtualKey:FindRecursive(name, class) end
