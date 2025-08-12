---@meta

---@class Undos: Object
---@field UndoIndex integer
local Undos = {}
---@return "Undos"
function Undos:GetClass() end
---@return "Undo"
function Undos:GetChildClass() end
---@return Cmdline
function Undos:Parent() end
---@param index integer
---@return Undo
function Undos:Ptr(index) end
---@return Undo[]
function Undos:Children() end
---@return Undo?
function Undos:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"UndoIndex", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UndoIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Undo
function Undos:Get(name, role) end
---@overload fun(index: integer, class: "Undo", undo: Undo?): Undo
---@overload fun(index: integer, class: nil, undo: Undo?): Undo
function Undos:Create(index, class, undo) end
---@overload fun(class: "Undo", undo: Undo?, count: integer?): Undo
---@overload fun(class: nil, undo: Undo?, count: integer?): Undo
function Undos:Append(class, undo, count) end
---@overload fun(class: "Undo", undo: Undo?): Undo
---@overload fun(class: nil, undo: Undo?): Undo
function Undos:Acquire(class, undo) end
---@overload fun(class: "Undo", undo: Undo?): Undo
---@overload fun(class: nil, undo: Undo?): Undo
---@deprecated use "Acquire" instead
function Undos:Aquire(class, undo) end
---@overload fun(index: integer, class: "Undo", undo: Undo?, count: integer?): Undo
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Undo
function Undos:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Undo"): Undo
---@overload fun(name: string, class: nil): Undo
function Undos:Find(name, class) end
---@overload fun(name: string, class: "Undo"): Undo
---@overload fun(name: string, class: nil): Object
function Undos:FindRecursive(name, class) end
