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
---@overload fun(index: integer, class: "EncoderBar", undo: Undo?): EncoderBar
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderBar
function EncoderBarPool:Create(index, class, undo) end
---@overload fun(class: "EncoderBar", undo: Undo?, count: integer?): EncoderBar
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderBar
function EncoderBarPool:Append(class, undo, count) end
---@overload fun(class: "EncoderBar", undo: Undo?): EncoderBar
---@overload fun(class: nil, undo: Undo?): EncoderBar
function EncoderBarPool:Acquire(class, undo) end
---@overload fun(class: "EncoderBar", undo: Undo?): EncoderBar
---@overload fun(class: nil, undo: Undo?): EncoderBar
---@deprecated use "Acquire" instead
function EncoderBarPool:Aquire(class, undo) end
---@overload fun(index: integer, class: "EncoderBar", undo: Undo?, count: integer?): EncoderBar
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderBar
function EncoderBarPool:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "EncoderBar"): EncoderBar
---@overload fun(name: string, class: nil): EncoderBar
function EncoderBarPool:Find(name, class) end
---@overload fun(name: string, class: "EncoderBar"): EncoderBar
---@overload fun(name: string, class: nil): Object
function EncoderBarPool:FindRecursive(name, class) end
