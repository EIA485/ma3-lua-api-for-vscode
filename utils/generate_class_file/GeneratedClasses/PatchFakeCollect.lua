---@meta

---@class PatchFakeCollect: Object
local PatchFakeCollect = {}
---@return "PatchFakeCollect"
function PatchFakeCollect:GetClass() end
---@return "PatchFakeObject"
function PatchFakeCollect:GetChildClass() end
---@return ConvertTask
function PatchFakeCollect:Parent() end
---@param index integer
---@return PatchFakeObject
function PatchFakeCollect:Ptr(index) end
---@return PatchFakeObject[]
function PatchFakeCollect:Children() end
---@return PatchFakeObject?
function PatchFakeCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PatchFakeObject
function PatchFakeCollect:Get(name, role) end
---@generic T : PatchFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Create(index, class, undo) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PatchFakeObject
function PatchFakeCollect:Append(class, undo, count) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Acquire(class, undo) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
---@deprecated use "Acquire" instead
function PatchFakeCollect:Aquire(class, undo) end
---@generic T : PatchFakeObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PatchFakeObject
function PatchFakeCollect:Insert(index, class, undo, count) end
---@generic T : PatchFakeObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Find(class, undo) end