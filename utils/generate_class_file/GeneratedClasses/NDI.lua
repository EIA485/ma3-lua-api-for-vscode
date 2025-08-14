---@meta

---@class NDI: Object
local NDI = {}
---@return "NDI"
function NDI:GetClass() end
---@return "NDISource"
function NDI:GetChildClass() end
---@return Root
function NDI:Parent() end
---@param index integer
---@return NDISource
function NDI:Ptr(index) end
---@return NDISource[]
function NDI:Children() end
---@return NDISource?
function NDI:CurrentChild() end
---@overload fun(name: integer, role: nil): NDISource
function NDI:Get(name, role) end
---@generic T : NDISource
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): NDISource
function NDI:Create(index, class, undo) end
---@generic T : NDISource
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): NDISource
function NDI:Append(class, undo, count) end
---@generic T : NDISource
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NDISource
function NDI:Acquire(class, undo) end
---@generic T : NDISource
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NDISource
---@deprecated use "Acquire" instead
function NDI:Aquire(class, undo) end
---@generic T : NDISource
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NDISource
function NDI:Insert(index, class, undo, count) end
---@generic T : NDISource
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): NDISource
function NDI:Find(class, undo) end