---@meta

---@class Agendas: Object
---@field Running boolean
local Agendas = {
    Running="Yes"
}
---@return "Agendas"
function Agendas:GetClass() end
---@return "AgendaEvent"
function Agendas:GetChildClass() end
---@return ShowData
function Agendas:Parent() end
---@param index integer
---@return AgendaEvent
function Agendas:Ptr(index) end
---@return AgendaEvent[]
function Agendas:Children() end
---@return AgendaEvent?
function Agendas:CurrentChild() end
---@overload fun(name: "Running"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Running"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): AgendaEvent
function Agendas:Get(name, role) end
---@generic T : AgendaEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): AgendaEvent
function Agendas:Create(index, class, undo) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): AgendaEvent
function Agendas:Append(class, undo, count) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AgendaEvent
function Agendas:Acquire(class, undo) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AgendaEvent
---@deprecated use "Acquire" instead
function Agendas:Aquire(class, undo) end
---@generic T : AgendaEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AgendaEvent
function Agendas:Insert(index, class, undo, count) end
---@generic T : AgendaEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): AgendaEvent
function Agendas:Find(class, undo) end