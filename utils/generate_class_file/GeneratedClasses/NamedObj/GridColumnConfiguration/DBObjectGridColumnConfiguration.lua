---@meta

---@class DBObjectGridColumnConfiguration: GridColumnConfiguration
local DBObjectGridColumnConfiguration = {}
---@return "DBObjectGridColumnConfiguration"
function DBObjectGridColumnConfiguration:GetClass() end
---@return "DBObjectGridLine"
function DBObjectGridColumnConfiguration:GetChildClass() end
---@generic T : DBObjectGridColumnConfiguration
---@param class `T`
---@return boolean
function DBObjectGridColumnConfiguration:IsClass(class) end
---@param index integer
---@return DBObjectGridLine
function DBObjectGridColumnConfiguration:Ptr(index) end
---@return DBObjectGridLine[]
function DBObjectGridColumnConfiguration:Children() end
---@return DBObjectGridLine?
function DBObjectGridColumnConfiguration:CurrentChild() end
---@overload fun(name: integer, role: nil): DBObjectGridLine
function DBObjectGridColumnConfiguration:Get(name, role) end
---@generic T : DBObjectGridLine
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Create(index, class, undo) end
---@generic T : DBObjectGridLine
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Append(class, undo, count) end
---@generic T : DBObjectGridLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Acquire(class, undo) end
---@generic T : DBObjectGridLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DBObjectGridLine
---@deprecated use "Acquire" instead
function DBObjectGridColumnConfiguration:Aquire(class, undo) end
---@generic T : DBObjectGridLine
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Insert(index, class, undo, count) end
---@generic T : DBObjectGridLine
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DBObjectGridLine
function DBObjectGridColumnConfiguration:Find(class, undo) end
function DBObjectGridColumnConfiguration:SetChildren(property_name, property_value) end