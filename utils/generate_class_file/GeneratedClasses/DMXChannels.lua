---@meta

---@class DMXChannels: Object A container for all dmx channels of one dmx mode.
local DMXChannels = {}
---@return "DMXChannels"
function DMXChannels:GetClass() end
---@return "DMXChannel"
function DMXChannels:GetChildClass() end
---@return DMXMode
function DMXChannels:Parent() end
---@param index integer
---@return DMXChannel
function DMXChannels:Ptr(index) end
---@return DMXChannel[]
function DMXChannels:Children() end
---@return DMXChannel?
function DMXChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXChannel
function DMXChannels:Get(name, role) end
---@overload fun(index: integer, class: "DMXChannel", undo: Undo?): DMXChannel
---@overload fun(index: integer, class: nil, undo: Undo?): DMXChannel
function DMXChannels:Create(index, class, undo) end
---@overload fun(class: "DMXChannel", undo: Undo?, count: integer?): DMXChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXChannel
function DMXChannels:Append(class, undo, count) end
---@overload fun(class: "DMXChannel", undo: Undo?): DMXChannel
---@overload fun(class: nil, undo: Undo?): DMXChannel
function DMXChannels:Acquire(class, undo) end
---@overload fun(class: "DMXChannel", undo: Undo?): DMXChannel
---@overload fun(class: nil, undo: Undo?): DMXChannel
---@deprecated use "Acquire" instead
function DMXChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "DMXChannel", undo: Undo?, count: integer?): DMXChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXChannel
function DMXChannels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DMXChannel"): DMXChannel
---@overload fun(name: string, class: nil): DMXChannel
function DMXChannels:Find(name, class) end
---@overload fun(name: string, class: "DMXChannel"): DMXChannel
---@overload fun(name: string, class: nil): Object
function DMXChannels:FindRecursive(name, class) end
