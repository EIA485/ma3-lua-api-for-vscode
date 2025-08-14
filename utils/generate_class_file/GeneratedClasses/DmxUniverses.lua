---@meta

---@class DmxUniverses: Object
local DmxUniverses = {}
---@return "DmxUniverses"
function DmxUniverses:GetClass() end
---@return "DmxUniverse"
function DmxUniverses:GetChildClass() end
---@return Patch
function DmxUniverses:Parent() end
---@param index integer
---@return DmxUniverse
function DmxUniverses:Ptr(index) end
---@return DmxUniverse[]
function DmxUniverses:Children() end
---@return DmxUniverse?
function DmxUniverses:CurrentChild() end
---@overload fun(name: integer, role: nil): DmxUniverse
function DmxUniverses:Get(name, role) end
---@generic T : DmxUniverse
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Create(index, class, undo) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxUniverse
function DmxUniverses:Append(class, undo, count) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Acquire(class, undo) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxUniverse
---@deprecated use "Acquire" instead
function DmxUniverses:Aquire(class, undo) end
---@generic T : DmxUniverse
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxUniverse
function DmxUniverses:Insert(index, class, undo, count) end
---@generic T : DmxUniverse
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Find(class, undo) end