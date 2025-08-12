---@meta

---@class RTChannels: Object
local RTChannels = {}
---@return "RTChannels"
function RTChannels:GetClass() end
---@return "RTChannel"
function RTChannels:GetChildClass() end
---@return Patch
function RTChannels:Parent() end
---@param index integer
---@return RTChannel
function RTChannels:Ptr(index) end
---@return RTChannel[]
function RTChannels:Children() end
---@return RTChannel?
function RTChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): RTChannel
function RTChannels:Get(name, role) end
---@overload fun(index: integer, class: "RTChannel", undo: Undo?): RTChannel
---@overload fun(index: integer, class: nil, undo: Undo?): RTChannel
function RTChannels:Create(index, class, undo) end
---@overload fun(class: "RTChannel", undo: Undo?, count: integer?): RTChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): RTChannel
function RTChannels:Append(class, undo, count) end
---@overload fun(class: "RTChannel", undo: Undo?): RTChannel
---@overload fun(class: nil, undo: Undo?): RTChannel
function RTChannels:Acquire(class, undo) end
---@overload fun(class: "RTChannel", undo: Undo?): RTChannel
---@overload fun(class: nil, undo: Undo?): RTChannel
---@deprecated use "Acquire" instead
function RTChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "RTChannel", undo: Undo?, count: integer?): RTChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): RTChannel
function RTChannels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "RTChannel"): RTChannel
---@overload fun(name: string, class: nil): RTChannel
function RTChannels:Find(name, class) end
---@overload fun(name: string, class: "RTChannel"): RTChannel
---@overload fun(name: string, class: nil): Object
function RTChannels:FindRecursive(name, class) end
