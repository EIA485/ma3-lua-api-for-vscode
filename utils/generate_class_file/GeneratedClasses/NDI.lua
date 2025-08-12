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
---@overload fun(index: integer, class: "NDISource", undo: Undo?): NDISource
---@overload fun(index: integer, class: nil, undo: Undo?): NDISource
function NDI:Create(index, class, undo) end
---@overload fun(class: "NDISource", undo: Undo?, count: integer?): NDISource
---@overload fun(class: nil, undo: Undo?, count: integer?): NDISource
function NDI:Append(class, undo, count) end
---@overload fun(class: "NDISource", undo: Undo?): NDISource
---@overload fun(class: nil, undo: Undo?): NDISource
function NDI:Acquire(class, undo) end
---@overload fun(class: "NDISource", undo: Undo?): NDISource
---@overload fun(class: nil, undo: Undo?): NDISource
---@deprecated use "Acquire" instead
function NDI:Aquire(class, undo) end
---@overload fun(index: integer, class: "NDISource", undo: Undo?, count: integer?): NDISource
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): NDISource
function NDI:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "NDISource"): NDISource
---@overload fun(name: string, class: nil): NDISource
function NDI:Find(name, class) end
---@overload fun(name: string, class: "NDISource"): NDISource
---@overload fun(name: string, class: nil): Object
function NDI:FindRecursive(name, class) end
