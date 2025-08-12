---@meta

---@class Interfaces: Object Container for all network interfaces which the local station have.
---@field UpdateInterfaces fun() : boolean
---@field SetInterfaces fun()
local Interfaces = {}
---@return "Interfaces"
function Interfaces:GetClass() end
---@return "Interface"
function Interfaces:GetChildClass() end
---@return Root
function Interfaces:Parent() end
---@param index integer
---@return Interface
function Interfaces:Ptr(index) end
---@return Interface[]
function Interfaces:Children() end
---@return Interface?
function Interfaces:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "UpdateInterfaces", role: nil): fun() : boolean
---@overload fun(name: "SetInterfaces", role: nil): fun()
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UpdateInterfaces"|"SetInterfaces", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Interface
function Interfaces:Get(name, role) end
---@overload fun(index: integer, class: "Interface", undo: Undo?): Interface
---@overload fun(index: integer, class: nil, undo: Undo?): Interface
function Interfaces:Create(index, class, undo) end
---@overload fun(class: "Interface", undo: Undo?, count: integer?): Interface
---@overload fun(class: nil, undo: Undo?, count: integer?): Interface
function Interfaces:Append(class, undo, count) end
---@overload fun(class: "Interface", undo: Undo?): Interface
---@overload fun(class: nil, undo: Undo?): Interface
function Interfaces:Acquire(class, undo) end
---@overload fun(class: "Interface", undo: Undo?): Interface
---@overload fun(class: nil, undo: Undo?): Interface
---@deprecated use "Acquire" instead
function Interfaces:Aquire(class, undo) end
---@overload fun(index: integer, class: "Interface", undo: Undo?, count: integer?): Interface
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Interface
function Interfaces:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Interface"): Interface
---@overload fun(name: string, class: nil): Interface
function Interfaces:Find(name, class) end
---@overload fun(name: string, class: "Interface"): Interface
---@overload fun(name: string, class: nil): Object
function Interfaces:FindRecursive(name, class) end
