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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Duration", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): MacroDMXValue
function MacroDMXStep:Get(name, role) end
---@overload fun(index: integer, class: "MacroDMXValue", undo: Undo?): MacroDMXValue
---@overload fun(index: integer, class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Create(index, class, undo) end
---@overload fun(class: "MacroDMXValue", undo: Undo?, count: integer?): MacroDMXValue
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroDMXValue
function MacroDMXStep:Append(class, undo, count) end
---@overload fun(class: "MacroDMXValue", undo: Undo?): MacroDMXValue
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
function MacroDMXStep:Acquire(class, undo) end
---@overload fun(class: "MacroDMXValue", undo: Undo?): MacroDMXValue
---@overload fun(class: nil, undo: Undo?): MacroDMXValue
---@deprecated use "Acquire" instead
function MacroDMXStep:Aquire(class, undo) end
---@overload fun(index: integer, class: "MacroDMXValue", undo: Undo?, count: integer?): MacroDMXValue
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroDMXValue
function MacroDMXStep:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MacroDMXValue"): MacroDMXValue
---@overload fun(name: string, class: nil): MacroDMXValue
function MacroDMXStep:Find(name, class) end
---@overload fun(name: string, class: "MacroDMXValue"): MacroDMXValue
---@overload fun(name: string, class: nil): Object
function MacroDMXStep:FindRecursive(name, class) end
