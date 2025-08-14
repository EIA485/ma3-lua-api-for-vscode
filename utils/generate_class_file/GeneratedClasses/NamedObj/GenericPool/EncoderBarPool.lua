---@meta

---@class EncoderBarPool: GenericPool
local EncoderBarPool = {}
---@return "EncoderBarPool"
function EncoderBarPool:GetClass() end
---@return "EncoderBar"
function EncoderBarPool:GetChildClass() end
---@return UserProfile
function EncoderBarPool:Parent() end
---@param index integer
---@return EncoderBar
function EncoderBarPool:Ptr(index) end
---@return EncoderBar[]
function EncoderBarPool:Children() end
---@return EncoderBar?
function EncoderBarPool:CurrentChild() end
---@overload fun(name: integer, role: nil): EncoderBar
function EncoderBarPool:Get(name, role) end
---@generic T : EncoderBar
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderBar
function EncoderBarPool:Create(index, class, undo) end
---@generic T : EncoderBar
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderBar
function EncoderBarPool:Append(class, undo, count) end
---@generic T : EncoderBar
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBar
function EncoderBarPool:Acquire(class, undo) end
---@generic T : EncoderBar
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBar
---@deprecated use "Acquire" instead
function EncoderBarPool:Aquire(class, undo) end
---@generic T : EncoderBar
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderBar
function EncoderBarPool:Insert(index, class, undo, count) end
---@generic T : EncoderBar
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBar
function EncoderBarPool:Find(class, undo) end