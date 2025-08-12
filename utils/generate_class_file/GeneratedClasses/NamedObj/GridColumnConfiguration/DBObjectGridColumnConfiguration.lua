---@meta

---@class DBObjectGridColumnConfiguration: GridColumnConfiguration
local DBObjectGridColumnConfiguration = {}
---@return "DBObjectGridColumnConfiguration"
function DBObjectGridColumnConfiguration:GetClass() end
---@return "DBObjectGridLine"
function DBObjectGridColumnConfiguration:GetChildClass() end
---@param index integer
---@return DBObjectGridLine
function DBObjectGridColumnConfiguration:Ptr(index) end
---@return DBObjectGridLine[]
function DBObjectGridColumnConfiguration:Children() end
---@return DBObjectGridLine?
function DBObjectGridColumnConfiguration:CurrentChild() end
---@overload fun(name: integer, role: nil): DBObjectGridLine
function DBObjectGridColumnConfiguration:Get(name, role) end
---@overload fun(index: integer, class: "DBObjectGridLine", undo: Undo?): DBObjectGridLine
---@overload fun(index: integer, class: nil, undo: Undo?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Create(index, class, undo) end
---@overload fun(class: "DBObjectGridLine", undo: Undo?, count: integer?): DBObjectGridLine
---@overload fun(class: nil, undo: Undo?, count: integer?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Append(class, undo, count) end
---@overload fun(class: "DBObjectGridLine", undo: Undo?): DBObjectGridLine
---@overload fun(class: nil, undo: Undo?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Acquire(class, undo) end
---@overload fun(class: "DBObjectGridLine", undo: Undo?): DBObjectGridLine
---@overload fun(class: nil, undo: Undo?): DBObjectGridLine
---@deprecated use "Acquire" instead
function DBObjectGridColumnConfiguration:Aquire(class, undo) end
---@overload fun(index: integer, class: "DBObjectGridLine", undo: Undo?, count: integer?): DBObjectGridLine
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DBObjectGridLine"): DBObjectGridLine
---@overload fun(name: string, class: nil): DBObjectGridLine
function DBObjectGridColumnConfiguration:Find(name, class) end
---@overload fun(name: string, class: "DBObjectGridLine"): DBObjectGridLine
---@overload fun(name: string, class: nil): Object
function DBObjectGridColumnConfiguration:FindRecursive(name, class) end
