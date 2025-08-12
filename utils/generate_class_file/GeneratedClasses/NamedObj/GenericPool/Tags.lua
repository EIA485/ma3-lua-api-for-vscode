---@meta

---@class Tags: GenericPool
local Tags = {}
---@return "Tags"
function Tags:GetClass() end
---@return "Tag"
function Tags:GetChildClass() end
---@param index integer
---@return Tag
function Tags:Ptr(index) end
---@return Tag[]
function Tags:Children() end
---@return Tag?
function Tags:CurrentChild() end
---@overload fun(name: integer, role: nil): Tag
function Tags:Get(name, role) end
---@overload fun(index: integer, class: "Tag", undo: Undo?): Tag
---@overload fun(index: integer, class: nil, undo: Undo?): Tag
function Tags:Create(index, class, undo) end
---@overload fun(class: "Tag", undo: Undo?, count: integer?): Tag
---@overload fun(class: nil, undo: Undo?, count: integer?): Tag
function Tags:Append(class, undo, count) end
---@overload fun(class: "Tag", undo: Undo?): Tag
---@overload fun(class: nil, undo: Undo?): Tag
function Tags:Acquire(class, undo) end
---@overload fun(class: "Tag", undo: Undo?): Tag
---@overload fun(class: nil, undo: Undo?): Tag
---@deprecated use "Acquire" instead
function Tags:Aquire(class, undo) end
---@overload fun(index: integer, class: "Tag", undo: Undo?, count: integer?): Tag
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Tag
function Tags:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Tag"): Tag
---@overload fun(name: string, class: nil): Tag
function Tags:Find(name, class) end
---@overload fun(name: string, class: "Tag"): Tag
---@overload fun(name: string, class: nil): Object
function Tags:FindRecursive(name, class) end
