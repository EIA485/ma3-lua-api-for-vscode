---@meta

---@class KeyboardShortcut: Object Describes the behavior of a keyboard shortcut.
---@field Name string
---@field Key
Code VirtualKeyCode
---@field Executor
Index integer
---@field Special
Exec integer
---@field Shortcut HotKey
local KeyboardShortcut = {
    ["Special
Exec"]="None"
}
---@return "KeyboardShortcut"
function KeyboardShortcut:GetClass() end
---@return "Object"
function KeyboardShortcut:GetChildClass() end
---@return KeyboardShortCuts
function KeyboardShortcut:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "Key
Code", role: nil): VirtualKeyCode
---@overload fun(name: "Executor
Index"|"Special
Exec", role: nil): integer
---@overload fun(name: "Shortcut", role: nil): HotKey
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Name"|"Key
Code"|"Executor
Index"|"Special
Exec"|"Shortcut", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function KeyboardShortcut:Get(name, role) end
