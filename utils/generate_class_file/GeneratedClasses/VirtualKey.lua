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
---@overload fun(name: "LedToken", role: nil): PresetActionToken
---@overload fun(name: "KeyCode"|"RedirectKeyCode", role: nil): SCVirtualKeyCode
---@overload fun(name: "SpecialCycle", role: nil): SpecialCycle
---@overload fun(name: "Code", role: nil): VirtualKeyCode
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "RedirectChar"|"HelpTopic"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Code"|"KeyCode"|"SpecialCycle"|"RedirectKeyCode"|"RedirectChar"|"Toggle"|"IsFader"|"NumericRedirect"|"AlwaysNumericRedirect"|"RedirectWithShift"|"RedirectWithCtrl"|"RedirectWithAlt"|"CanBeProcessedWhileModal"|"UseKeyStatusForLED"|"HelpTopic"|"LedToken"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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