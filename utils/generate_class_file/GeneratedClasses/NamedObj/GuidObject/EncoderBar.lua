---@meta

---@class EncoderBar: GuidObject
local EncoderBar = {}
---@return "EncoderBar"
function EncoderBar:GetClass() end
---@return "EncoderBank"
function EncoderBar:GetChildClass() end
---@return EncoderBarPool
function EncoderBar:Parent() end
---@param index integer
---@return EncoderBank
function EncoderBar:Ptr(index) end
---@return EncoderBank[]
function EncoderBar:Children() end
---@return EncoderBank?
function EncoderBar:CurrentChild() end
---@overload fun(name: integer, role: nil): EncoderBank
function EncoderBar:Get(name, role) end
---@generic T : EncoderBank
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderBank
function EncoderBar:Create(index, class, undo) end
---@generic T : EncoderBank
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderBank
function EncoderBar:Append(class, undo, count) end
---@generic T : EncoderBank
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBank
function EncoderBar:Acquire(class, undo) end
---@generic T : EncoderBank
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBank
---@deprecated use "Acquire" instead
function EncoderBar:Aquire(class, undo) end
---@generic T : EncoderBank
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderBank
function EncoderBar:Insert(index, class, undo, count) end
---@generic T : EncoderBank
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderBank
function EncoderBar:Find(class, undo) end