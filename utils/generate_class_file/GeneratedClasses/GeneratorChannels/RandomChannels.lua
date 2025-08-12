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
---@overload fun(index: integer, class: "RandomChannel", undo: Undo?): RandomChannel
---@overload fun(index: integer, class: nil, undo: Undo?): RandomChannel
function RandomChannels:Create(index, class, undo) end
---@overload fun(class: "RandomChannel", undo: Undo?, count: integer?): RandomChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): RandomChannel
function RandomChannels:Append(class, undo, count) end
---@overload fun(class: "RandomChannel", undo: Undo?): RandomChannel
---@overload fun(class: nil, undo: Undo?): RandomChannel
function RandomChannels:Acquire(class, undo) end
---@overload fun(class: "RandomChannel", undo: Undo?): RandomChannel
---@overload fun(class: nil, undo: Undo?): RandomChannel
---@deprecated use "Acquire" instead
function RandomChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "RandomChannel", undo: Undo?, count: integer?): RandomChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RandomChannel
function RandomChannels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RandomChannel"): RandomChannel
---@overload fun(name: string, class: nil): RandomChannel
function RandomChannels:Find(name, class) end
---@overload fun(name: string, class: "RandomChannel"): RandomChannel
---@overload fun(name: string, class: nil): Object
function RandomChannels:FindRecursive(name, class) end
