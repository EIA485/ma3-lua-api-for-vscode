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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"KeyboardShortcutsActive", role: nil): integer
---@overload fun(name: "OnResetToDefault", role: nil): fun(str: string) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"KeyboardShortcutsActive"|"OnResetToDefault", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyboardShortcut
function KeyboardShortCuts:Get(name, role) end
---@overload fun(index: integer, class: "KeyboardShortcut", undo: Undo?): KeyboardShortcut
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardShortcut
function KeyboardShortCuts:Create(index, class, undo) end
---@overload fun(class: "KeyboardShortcut", undo: Undo?, count: integer?): KeyboardShortcut
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardShortcut
function KeyboardShortCuts:Append(class, undo, count) end
---@overload fun(class: "KeyboardShortcut", undo: Undo?): KeyboardShortcut
---@overload fun(class: nil, undo: Undo?): KeyboardShortcut
function KeyboardShortCuts:Acquire(class, undo) end
---@overload fun(class: "KeyboardShortcut", undo: Undo?): KeyboardShortcut
---@overload fun(class: nil, undo: Undo?): KeyboardShortcut
---@deprecated use "Acquire" instead
function KeyboardShortCuts:Aquire(class, undo) end
---@overload fun(index: integer, class: "KeyboardShortcut", undo: Undo?, count: integer?): KeyboardShortcut
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardShortcut
function KeyboardShortCuts:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "KeyboardShortcut"): KeyboardShortcut
---@overload fun(name: string, class: nil): KeyboardShortcut
function KeyboardShortCuts:Find(name, class) end
---@overload fun(name: string, class: "KeyboardShortcut"): KeyboardShortcut
---@overload fun(name: string, class: nil): Object
function KeyboardShortCuts:FindRecursive(name, class) end
