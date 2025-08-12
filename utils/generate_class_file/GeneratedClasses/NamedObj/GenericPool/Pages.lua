---@meta

---@class Pages: GenericPool Pool of executor pages.
local Pages = {}
---@return "Pages"
function Pages:GetClass() end
---@return "Page"
function Pages:GetChildClass() end
---@return Pool
function Pages:Parent() end
---@param index integer
---@return Page
function Pages:Ptr(index) end
---@return Page[]
function Pages:Children() end
---@return Page?
function Pages:CurrentChild() end
---@overload fun(name: integer, role: nil): Page
function Pages:Get(name, role) end
---@overload fun(index: integer, class: "Page", undo: Undo?): Page
---@overload fun(index: integer, class: nil, undo: Undo?): Page
function Pages:Create(index, class, undo) end
---@overload fun(class: "Page", undo: Undo?, count: integer?): Page
---@overload fun(class: nil, undo: Undo?, count: integer?): Page
function Pages:Append(class, undo, count) end
---@overload fun(class: "Page", undo: Undo?): Page
---@overload fun(class: nil, undo: Undo?): Page
function Pages:Acquire(class, undo) end
---@overload fun(class: "Page", undo: Undo?): Page
---@overload fun(class: nil, undo: Undo?): Page
---@deprecated use "Acquire" instead
function Pages:Aquire(class, undo) end
---@overload fun(index: integer, class: "Page", undo: Undo?, count: integer?): Page
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Page
function Pages:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Page"): Page
---@overload fun(name: string, class: nil): Page
function Pages:Find(name, class) end
---@overload fun(name: string, class: "Page"): Page
---@overload fun(name: string, class: nil): Object
function Pages:FindRecursive(name, class) end
