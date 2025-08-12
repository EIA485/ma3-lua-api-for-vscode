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
---@overload fun(index: integer, class: "EncoderBank", undo: Undo?): EncoderBank
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderBank
function EncoderBar:Create(index, class, undo) end
---@overload fun(class: "EncoderBank", undo: Undo?, count: integer?): EncoderBank
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderBank
function EncoderBar:Append(class, undo, count) end
---@overload fun(class: "EncoderBank", undo: Undo?): EncoderBank
---@overload fun(class: nil, undo: Undo?): EncoderBank
function EncoderBar:Acquire(class, undo) end
---@overload fun(class: "EncoderBank", undo: Undo?): EncoderBank
---@overload fun(class: nil, undo: Undo?): EncoderBank
---@deprecated use "Acquire" instead
function EncoderBar:Aquire(class, undo) end
---@overload fun(index: integer, class: "EncoderBank", undo: Undo?, count: integer?): EncoderBank
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderBank
function EncoderBar:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "EncoderBank"): EncoderBank
---@overload fun(name: string, class: nil): EncoderBank
function EncoderBar:Find(name, class) end
---@overload fun(name: string, class: "EncoderBank"): EncoderBank
---@overload fun(name: string, class: nil): Object
function EncoderBar:FindRecursive(name, class) end
