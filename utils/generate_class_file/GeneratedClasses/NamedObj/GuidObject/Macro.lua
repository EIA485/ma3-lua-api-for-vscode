---@meta

---@class Macro: GuidObject
---@field CLI integer
---@field Type string
---@field Line
No string
---@field Line
Name string
---@field Line
Command string
---@field User string
local Macro = {
    CLI="Yes"
}
---@return "Macro"
function Macro:GetClass() end
---@return "MacroLine"
function Macro:GetChildClass() end
---@return Macros
function Macro:Parent() end
---@param index integer
---@return MacroLine
function Macro:Ptr(index) end
---@return MacroLine[]
function Macro:Children() end
---@return MacroLine?
function Macro:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "CLI", role: nil): integer
---@overload fun(name: "Type"|"Line
No"|"Line
Name"|"Line
Command"|"User", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"CLI"|"Type"|"Line
No"|"Line
Name"|"Line
Command"|"User", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroLine
function Macro:Get(name, role) end
---@overload fun(index: integer, class: "MacroLine", undo: Undo?): MacroLine
---@overload fun(index: integer, class: nil, undo: Undo?): MacroLine
function Macro:Create(index, class, undo) end
---@overload fun(class: "MacroLine", undo: Undo?, count: integer?): MacroLine
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroLine
function Macro:Append(class, undo, count) end
---@overload fun(class: "MacroLine", undo: Undo?): MacroLine
---@overload fun(class: nil, undo: Undo?): MacroLine
function Macro:Acquire(class, undo) end
---@overload fun(class: "MacroLine", undo: Undo?): MacroLine
---@overload fun(class: nil, undo: Undo?): MacroLine
---@deprecated use "Acquire" instead
function Macro:Aquire(class, undo) end
---@overload fun(index: integer, class: "MacroLine", undo: Undo?, count: integer?): MacroLine
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroLine
function Macro:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MacroLine"): MacroLine
---@overload fun(name: string, class: nil): MacroLine
function Macro:Find(name, class) end
---@overload fun(name: string, class: "MacroLine"): MacroLine
---@overload fun(name: string, class: nil): Object
function Macro:FindRecursive(name, class) end
