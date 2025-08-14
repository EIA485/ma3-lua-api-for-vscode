---@meta

---@class EncoderBank: NamedObj
---@field Command string
---@field SpecialDialogTab SpecialWindowTab
local EncoderBank = {
    SpecialDialogTab="None"
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
---@overload fun(name: "SpecialDialogTab", role: nil): SpecialWindowTab
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Command"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Command"|"SpecialDialogTab"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): EncoderPage
function EncoderBank:Get(name, role) end
---@generic T : EncoderPage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderPage
function EncoderBank:Create(index, class, undo) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderPage
function EncoderBank:Append(class, undo, count) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderPage
function EncoderBank:Acquire(class, undo) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderPage
---@deprecated use "Acquire" instead
function EncoderBank:Aquire(class, undo) end
---@generic T : EncoderPage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderPage
function EncoderBank:Insert(index, class, undo, count) end
---@generic T : EncoderPage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderPage
function EncoderBank:Find(class, undo) end