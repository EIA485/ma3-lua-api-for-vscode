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
---@overload fun(name: "KeyCode", role: nil): SCVirtualKeyCode
---@overload fun(name: "KeyIsModifier"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Value"|"ValueShifted"|"ValueRightAlted"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "KeyCode"|"Value"|"ValueShifted"|"ValueRightAlted"|"KeyIsModifier"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyModifier
function KeyboardKey:Get(name, role) end
---@generic T : KeyModifier
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Create(index, class, undo) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyModifier
function KeyboardKey:Append(class, undo, count) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Acquire(class, undo) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyModifier
---@deprecated use "Acquire" instead
function KeyboardKey:Aquire(class, undo) end
---@generic T : KeyModifier
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyModifier
function KeyboardKey:Insert(index, class, undo, count) end
---@generic T : KeyModifier
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyModifier
function KeyboardKey:Find(class, undo) end