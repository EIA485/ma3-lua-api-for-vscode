---@meta

---@class Pages: GenericPool Pool of executor pages.
local Pages = {}
---@return "Pages"
function Pages:GetClass() end
---@return "Page"
function Pages:GetChildClass() end
---@generic T : Pages
---@param class `T`
---@return boolean
function Pages:IsClass(class) end
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
---@overload fun(class: "Page", undo: Undo?): Page
---@overload fun(class: nil, undo: Undo?): Page
function Pages:Find(class, undo) end
function Pages:SetChildren(property_name, property_value) end