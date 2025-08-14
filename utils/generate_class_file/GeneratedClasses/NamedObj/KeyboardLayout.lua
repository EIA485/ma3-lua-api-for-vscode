---@meta

---@class KeyboardLayout: NamedObj
---@field ShortName string A short name for the keyboard translation (layout) table (e.g. 'en', 'de', 'ua', 'ru'...)
local KeyboardLayout = {}
---@return "KeyboardLayout"
function KeyboardLayout:GetClass() end
---@return "KeyboardKey"
function KeyboardLayout:GetChildClass() end
---@return KeyboardLayouts
function KeyboardLayout:Parent() end
---@param index integer
---@return KeyboardKey
function KeyboardLayout:Ptr(index) end
---@return KeyboardKey[]
function KeyboardLayout:Children() end
---@return KeyboardKey?
function KeyboardLayout:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "ShortName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "ShortName"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyboardKey
function KeyboardLayout:Get(name, role) end
---@generic T : KeyboardKey
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Create(index, class, undo) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardKey
function KeyboardLayout:Append(class, undo, count) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Acquire(class, undo) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardKey
---@deprecated use "Acquire" instead
function KeyboardLayout:Aquire(class, undo) end
---@generic T : KeyboardKey
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardKey
function KeyboardLayout:Insert(index, class, undo, count) end
---@generic T : KeyboardKey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Find(class, undo) end