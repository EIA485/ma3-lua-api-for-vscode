---@meta

---@class KeyboardShortCuts: Object
---@field KeyboardShortcutsActive integer Defines if keyboard shortcuts are active
---@field OnResetToDefault fun(str: string) : boolean
local KeyboardShortCuts = {
    KeyboardShortcutsActive="0",
    OnResetToDefault="in:OnResetToDefault(s;)"
}
---@return "KeyboardShortCuts"
function KeyboardShortCuts:GetClass() end
---@return "KeyboardShortcut"
function KeyboardShortCuts:GetChildClass() end
---@return UserProfile
function KeyboardShortCuts:Parent() end
---@param index integer
---@return KeyboardShortcut
function KeyboardShortCuts:Ptr(index) end
---@return KeyboardShortcut[]
function KeyboardShortCuts:Children() end
---@return KeyboardShortcut?
function KeyboardShortCuts:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "OnResetToDefault", role: nil): fun(str: string) : boolean
---@overload fun(name: "KeyboardShortcutsActive"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "KeyboardShortcutsActive"|"OnResetToDefault"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
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