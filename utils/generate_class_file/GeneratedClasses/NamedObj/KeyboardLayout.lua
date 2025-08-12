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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ShortName", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ShortName", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): KeyboardKey
function KeyboardLayout:Get(name, role) end
---@overload fun(index: integer, class: "KeyboardKey", undo: Undo?): KeyboardKey
---@overload fun(index: integer, class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Create(index, class, undo) end
---@overload fun(class: "KeyboardKey", undo: Undo?, count: integer?): KeyboardKey
---@overload fun(class: nil, undo: Undo?, count: integer?): KeyboardKey
function KeyboardLayout:Append(class, undo, count) end
---@overload fun(class: "KeyboardKey", undo: Undo?): KeyboardKey
---@overload fun(class: nil, undo: Undo?): KeyboardKey
function KeyboardLayout:Acquire(class, undo) end
---@overload fun(class: "KeyboardKey", undo: Undo?): KeyboardKey
---@overload fun(class: nil, undo: Undo?): KeyboardKey
---@deprecated use "Acquire" instead
function KeyboardLayout:Aquire(class, undo) end
---@overload fun(index: integer, class: "KeyboardKey", undo: Undo?, count: integer?): KeyboardKey
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): KeyboardKey
function KeyboardLayout:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "KeyboardKey"): KeyboardKey
---@overload fun(name: string, class: nil): KeyboardKey
function KeyboardLayout:Find(name, class) end
---@overload fun(name: string, class: "KeyboardKey"): KeyboardKey
---@overload fun(name: string, class: nil): Object
function KeyboardLayout:FindRecursive(name, class) end
