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
---@overload fun(index: integer, class: "DmxUniverse", undo: Undo?): DmxUniverse
---@overload fun(index: integer, class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Create(index, class, undo) end
---@overload fun(class: "DmxUniverse", undo: Undo?, count: integer?): DmxUniverse
---@overload fun(class: nil, undo: Undo?, count: integer?): DmxUniverse
function DmxUniverses:Append(class, undo, count) end
---@overload fun(class: "DmxUniverse", undo: Undo?): DmxUniverse
---@overload fun(class: nil, undo: Undo?): DmxUniverse
function DmxUniverses:Acquire(class, undo) end
---@overload fun(class: "DmxUniverse", undo: Undo?): DmxUniverse
---@overload fun(class: nil, undo: Undo?): DmxUniverse
---@deprecated use "Acquire" instead
function DmxUniverses:Aquire(class, undo) end
---@overload fun(index: integer, class: "DmxUniverse", undo: Undo?, count: integer?): DmxUniverse
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DmxUniverse
function DmxUniverses:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DmxUniverse"): DmxUniverse
---@overload fun(name: string, class: nil): DmxUniverse
function DmxUniverses:Find(name, class) end
---@overload fun(name: string, class: "DmxUniverse"): DmxUniverse
---@overload fun(name: string, class: nil): Object
function DmxUniverses:FindRecursive(name, class) end
