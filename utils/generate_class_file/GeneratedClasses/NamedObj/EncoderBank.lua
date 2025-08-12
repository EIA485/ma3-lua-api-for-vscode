---@meta

---@class EncoderBank: NamedObj
---@field Command string
---@field SpecialDialog
Tab SpecialWindowTab
local EncoderBank = {
    ["SpecialDialog
Tab"]="None"
}
---@return "EncoderBank"
function EncoderBank:GetClass() end
---@return "EncoderPage"
function EncoderBank:GetChildClass() end
---@return EncoderBar
function EncoderBank:Parent() end
---@param index integer
---@return EncoderPage
function EncoderBank:Ptr(index) end
---@return EncoderPage[]
function EncoderBank:Children() end
---@return EncoderPage?
function EncoderBank:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Command", role: nil): string
---@overload fun(name: "SpecialDialog
Tab", role: nil): SpecialWindowTab
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Command"|"SpecialDialog
Tab", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): EncoderPage
function EncoderBank:Get(name, role) end
---@overload fun(index: integer, class: "EncoderPage", undo: Undo?): EncoderPage
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderPage
function EncoderBank:Create(index, class, undo) end
---@overload fun(class: "EncoderPage", undo: Undo?, count: integer?): EncoderPage
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderPage
function EncoderBank:Append(class, undo, count) end
---@overload fun(class: "EncoderPage", undo: Undo?): EncoderPage
---@overload fun(class: nil, undo: Undo?): EncoderPage
function EncoderBank:Acquire(class, undo) end
---@overload fun(class: "EncoderPage", undo: Undo?): EncoderPage
---@overload fun(class: nil, undo: Undo?): EncoderPage
---@deprecated use "Acquire" instead
function EncoderBank:Aquire(class, undo) end
---@overload fun(index: integer, class: "EncoderPage", undo: Undo?, count: integer?): EncoderPage
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderPage
function EncoderBank:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "EncoderPage"): EncoderPage
---@overload fun(name: string, class: nil): EncoderPage
function EncoderBank:Find(name, class) end
---@overload fun(name: string, class: "EncoderPage"): EncoderPage
---@overload fun(name: string, class: nil): Object
function EncoderBank:FindRecursive(name, class) end
