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
---@overload fun(index: integer, class: "PatchFakeObject", undo: Undo?): PatchFakeObject
---@overload fun(index: integer, class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Create(index, class, undo) end
---@overload fun(class: "PatchFakeObject", undo: Undo?, count: integer?): PatchFakeObject
---@overload fun(class: nil, undo: Undo?, count: integer?): PatchFakeObject
function PatchFakeCollect:Append(class, undo, count) end
---@overload fun(class: "PatchFakeObject", undo: Undo?): PatchFakeObject
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
function PatchFakeCollect:Acquire(class, undo) end
---@overload fun(class: "PatchFakeObject", undo: Undo?): PatchFakeObject
---@overload fun(class: nil, undo: Undo?): PatchFakeObject
---@deprecated use "Acquire" instead
function PatchFakeCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "PatchFakeObject", undo: Undo?, count: integer?): PatchFakeObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PatchFakeObject
function PatchFakeCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PatchFakeObject"): PatchFakeObject
---@overload fun(name: string, class: nil): PatchFakeObject
function PatchFakeCollect:Find(name, class) end
---@overload fun(name: string, class: "PatchFakeObject"): PatchFakeObject
---@overload fun(name: string, class: nil): Object
function PatchFakeCollect:FindRecursive(name, class) end
