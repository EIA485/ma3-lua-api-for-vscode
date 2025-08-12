---@meta

---@class KeyboardKey: Object
---@field KeyCode SCVirtualKeyCode A keyboard key code that is supposed to be translated
---@field Value string A string value that a key code should be translated to
---@field ValueShifted string A string value that a key code should be translated to if a shift key is pressed
---@field ValueRightAlted string A string value that a key code should be translated to if a right alt key is pressed
---@field KeyIsModifier boolean
local KeyboardKey = {
    KeyCode="None",
    KeyIsModifier="No"
}
---@return "KeyboardKey"
function KeyboardKey:GetClass() end
---@return "KeyModifier"
function KeyboardKey:GetChildClass() end
---@return KeyboardLayout
function KeyboardKey:Parent() end
---@param index integer
---@return KeyModifier
function KeyboardKey:Ptr(index) end
---@return KeyModifier[]
function KeyboardKey:Children() end
---@return KeyModifier?
function KeyboardKey:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "KeyCode", role: nil): SCVirtualKeyCode
---@overload fun(name: "Value"|"ValueShifted"|"ValueRightAlted", role: nil): string
---@overload fun(name: "KeyIsModifier", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"KeyCode"|"Value"|"ValueShifted"|"ValueRightAlted"|"KeyIsModifier", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyModifier
function KeyboardKey:Get(name, role) end
---@overload fun(index: integer, class: "KeyModifier", undo: Undo?): KeyModifier
---@overload fun(index: integer, class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Create(index, class, undo) end
---@overload fun(class: "KeyModifier", undo: Undo?, count: integer?): KeyModifier
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyModifier
function KeyboardKey:Append(class, undo, count) end
---@overload fun(class: "KeyModifier", undo: Undo?): KeyModifier
---@overload fun(class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Acquire(class, undo) end
---@overload fun(class: "KeyModifier", undo: Undo?): KeyModifier
---@overload fun(class: nil, undo: Undo?): KeyModifier
---@deprecated use "Acquire" instead
function KeyboardKey:Aquire(class, undo) end
---@overload fun(index: integer, class: "KeyModifier", undo: Undo?, count: integer?): KeyModifier
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyModifier
function KeyboardKey:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "KeyModifier"): KeyModifier
---@overload fun(name: string, class: nil): KeyModifier
function KeyboardKey:Find(name, class) end
---@overload fun(name: string, class: "KeyModifier"): KeyModifier
---@overload fun(name: string, class: nil): Object
function KeyboardKey:FindRecursive(name, class) end
