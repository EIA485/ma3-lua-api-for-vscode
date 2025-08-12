---@meta

---@class UIChannels: Object
local UIChannels = {}
---@return "UIChannels"
function UIChannels:GetClass() end
---@return "UIChannel"
function UIChannels:GetChildClass() end
---@return Patch
function UIChannels:Parent() end
---@param index integer
---@return UIChannel
function UIChannels:Ptr(index) end
---@return UIChannel[]
function UIChannels:Children() end
---@return UIChannel?
function UIChannels:CurrentChild() end
---@overload fun(name: integer, role: nil): UIChannel
function UIChannels:Get(name, role) end
---@overload fun(index: integer, class: "UIChannel", undo: Undo?): UIChannel
---@overload fun(index: integer, class: nil, undo: Undo?): UIChannel
function UIChannels:Create(index, class, undo) end
---@overload fun(class: "UIChannel", undo: Undo?, count: integer?): UIChannel
---@overload fun(class: nil, undo: Undo?, count: integer?): UIChannel
function UIChannels:Append(class, undo, count) end
---@overload fun(class: "UIChannel", undo: Undo?): UIChannel
---@overload fun(class: nil, undo: Undo?): UIChannel
function UIChannels:Acquire(class, undo) end
---@overload fun(class: "UIChannel", undo: Undo?): UIChannel
---@overload fun(class: nil, undo: Undo?): UIChannel
---@deprecated use "Acquire" instead
function UIChannels:Aquire(class, undo) end
---@overload fun(index: integer, class: "UIChannel", undo: Undo?, count: integer?): UIChannel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIChannel
function UIChannels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "UIChannel"): UIChannel
---@overload fun(name: string, class: nil): UIChannel
function UIChannels:Find(name, class) end
---@overload fun(name: string, class: "UIChannel"): UIChannel
---@overload fun(name: string, class: nil): Object
function UIChannels:FindRecursive(name, class) end
