---@meta

---@class Parameters: Object Ask Andrii
local Parameters = {}
---@return "Parameters"
function Parameters:GetClass() end
---@return "Parameter"
function Parameters:GetChildClass() end
---@return RDMFixtureType
function Parameters:Parent() end
---@param index integer
---@return Parameter
function Parameters:Ptr(index) end
---@return Parameter[]
function Parameters:Children() end
---@return Parameter?
function Parameters:CurrentChild() end
---@overload fun(name: integer, role: nil): Parameter
function Parameters:Get(name, role) end
---@overload fun(index: integer, class: "Parameter", undo: Undo?): Parameter
---@overload fun(index: integer, class: nil, undo: Undo?): Parameter
function Parameters:Create(index, class, undo) end
---@overload fun(class: "Parameter", undo: Undo?, count: integer?): Parameter
---@overload fun(class: nil, undo: Undo?, count: integer?): Parameter
function Parameters:Append(class, undo, count) end
---@overload fun(class: "Parameter", undo: Undo?): Parameter
---@overload fun(class: nil, undo: Undo?): Parameter
function Parameters:Acquire(class, undo) end
---@overload fun(class: "Parameter", undo: Undo?): Parameter
---@overload fun(class: nil, undo: Undo?): Parameter
---@deprecated use "Acquire" instead
function Parameters:Aquire(class, undo) end
---@overload fun(index: integer, class: "Parameter", undo: Undo?, count: integer?): Parameter
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Parameter
function Parameters:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Parameter"): Parameter
---@overload fun(name: string, class: nil): Parameter
function Parameters:Find(name, class) end
---@overload fun(name: string, class: "Parameter"): Parameter
---@overload fun(name: string, class: nil): Object
function Parameters:FindRecursive(name, class) end
