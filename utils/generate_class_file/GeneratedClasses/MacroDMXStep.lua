---@meta

---@class MacroDMXStep: Object your description here
---@field Duration TimePropertyValue
local MacroDMXStep = {
    Duration="1"
}
---@return "MacroDMXStep"
function MacroDMXStep:GetClass() end
---@return "MacroDMXValue"
function MacroDMXStep:GetChildClass() end
---@return MacroDMX
function MacroDMXStep:Parent() end
---@param index integer
---@return MacroDMXValue
function MacroDMXStep:Ptr(index) end
---@return MacroDMXValue[]
function MacroDMXStep:Children() end
---@return MacroDMXValue?
function MacroDMXStep:CurrentChild() end
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Duration"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroDMXValue
function MacroDMXStep:Get(name, role) end
---@generic T : MacroDMXValue
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Create(index, class, undo) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMXValue
function MacroDMXStep:Append(class, undo, count) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Acquire(class, undo) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
---@deprecated use "Acquire" instead
function MacroDMXStep:Aquire(class, undo) end
---@generic T : MacroDMXValue
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMXValue
function MacroDMXStep:Insert(index, class, undo, count) end
---@generic T : MacroDMXValue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Find(class, undo) end