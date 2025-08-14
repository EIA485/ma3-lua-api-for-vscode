---@meta

---@class RandomChannels: GeneratorChannels
local RandomChannels = {}
---@return "RandomChannels"
function RandomChannels:GetClass() end
---@return "RandomChannel"
function RandomChannels:GetChildClass() end
---@return Random
function RandomChannels:Parent() end
---@param index integer
---@return RandomChannel
function RandomChannels:Ptr(index) end
---@return RandomChannel[]
function RandomChannels:Children() end
---@return RandomChannel?
function RandomChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): RandomChannel
function RandomChannels:Get(name, role) end
---@generic T : RandomChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): RandomChannel
function RandomChannels:Create(index, class, undo) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): RandomChannel
function RandomChannels:Append(class, undo, count) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RandomChannel
function RandomChannels:Acquire(class, undo) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RandomChannel
---@deprecated use "Acquire" instead
function RandomChannels:Aquire(class, undo) end
---@generic T : RandomChannel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RandomChannel
function RandomChannels:Insert(index, class, undo, count) end
---@generic T : RandomChannel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): RandomChannel
function RandomChannels:Find(class, undo) end