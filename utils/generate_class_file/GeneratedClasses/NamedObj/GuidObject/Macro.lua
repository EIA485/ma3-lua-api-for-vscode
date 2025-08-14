---@meta

---@class Macro: GuidObject
---@field CLI integer
---@field Type string
---@field LineNo string
---@field LineName string
---@field LineCommand string
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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "CLI"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Type"|"LineNo"|"LineName"|"LineCommand"|"User"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "CLI"|"Type"|"LineNo"|"LineName"|"LineCommand"|"User"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroLine
function Macro:Get(name, role) end
---@generic T : MacroLine
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroLine
function Macro:Create(index, class, undo) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroLine
function Macro:Append(class, undo, count) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroLine
function Macro:Acquire(class, undo) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroLine
---@deprecated use "Acquire" instead
function Macro:Aquire(class, undo) end
---@generic T : MacroLine
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroLine
function Macro:Insert(index, class, undo, count) end
---@generic T : MacroLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroLine
function Macro:Find(class, undo) end