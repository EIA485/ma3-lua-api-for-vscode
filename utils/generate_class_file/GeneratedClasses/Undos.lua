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
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "UndoIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "UndoIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Undo
function Undos:Get(name, role) end
---@generic T : Undo
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Undo
function Undos:Create(index, class, undo) end
---@generic T : Undo
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Undo
function Undos:Append(class, undo, count) end
---@generic T : Undo
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Undo
function Undos:Acquire(class, undo) end
---@generic T : Undo
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Undo
---@deprecated use "Acquire" instead
function Undos:Aquire(class, undo) end
---@generic T : Undo
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Undo
function Undos:Insert(index, class, undo, count) end
---@generic T : Undo
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Undo
function Undos:Find(class, undo) end