---@meta

---@class Classes: Object
local Classes = {}
---@return "Classes"
function Classes:GetClass() end
---@return "Class"
function Classes:GetChildClass() end
---@return Patch
function Classes:Parent() end
---@param index integer
---@return Class
function Classes:Ptr(index) end
---@return Class[]
function Classes:Children() end
---@return Class?
function Classes:CurrentChild() end
---@overload fun(name: integer, role: nil): Class
function Classes:Get(name, role) end
---@overload fun(index: integer, class: "Class", undo: Undo?): Class
---@overload fun(index: integer, class: nil, undo: Undo?): Class
function Classes:Create(index, class, undo) end
---@overload fun(class: "Class", undo: Undo?, count: integer?): Class
---@overload fun(class: nil, undo: Undo?, count: integer?): Class
function Classes:Append(class, undo, count) end
---@overload fun(class: "Class", undo: Undo?): Class
---@overload fun(class: nil, undo: Undo?): Class
function Classes:Acquire(class, undo) end
---@overload fun(class: "Class", undo: Undo?): Class
---@overload fun(class: nil, undo: Undo?): Class
---@deprecated use "Acquire" instead
function Classes:Aquire(class, undo) end
---@overload fun(index: integer, class: "Class", undo: Undo?, count: integer?): Class
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Class
function Classes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Class"): Class
---@overload fun(name: string, class: nil): Class
function Classes:Find(name, class) end
---@overload fun(name: string, class: "Class"): Class
---@overload fun(name: string, class: nil): Object
function Classes:FindRecursive(name, class) end
