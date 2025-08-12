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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Running", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Running", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): AgendaEvent
function Agendas:Get(name, role) end
---@overload fun(index: integer, class: "AgendaEvent", undo: Undo?): AgendaEvent
---@overload fun(index: integer, class: nil, undo: Undo?): AgendaEvent
function Agendas:Create(index, class, undo) end
---@overload fun(class: "AgendaEvent", undo: Undo?, count: integer?): AgendaEvent
---@overload fun(class: nil, undo: Undo?, count: integer?): AgendaEvent
function Agendas:Append(class, undo, count) end
---@overload fun(class: "AgendaEvent", undo: Undo?): AgendaEvent
---@overload fun(class: nil, undo: Undo?): AgendaEvent
function Agendas:Acquire(class, undo) end
---@overload fun(class: "AgendaEvent", undo: Undo?): AgendaEvent
---@overload fun(class: nil, undo: Undo?): AgendaEvent
---@deprecated use "Acquire" instead
function Agendas:Aquire(class, undo) end
---@overload fun(index: integer, class: "AgendaEvent", undo: Undo?, count: integer?): AgendaEvent
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): AgendaEvent
function Agendas:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "AgendaEvent"): AgendaEvent
---@overload fun(name: string, class: nil): AgendaEvent
function Agendas:Find(name, class) end
---@overload fun(name: string, class: "AgendaEvent"): AgendaEvent
---@overload fun(name: string, class: nil): Object
function Agendas:FindRecursive(name, class) end
