---@meta

---@class Macros: GenericPool A pool of macros.
local Macros = {}
---@return "Macros"
function Macros:GetClass() end
---@return "Macro"
function Macros:GetChildClass() end
---@generic T : Macros
---@param class `T`
---@return boolean
function Macros:IsClass(class) end
---@return Pool
function Macros:Parent() end
---@param index integer
---@return Macro
function Macros:Ptr(index) end
---@return Macro[]
function Macros:Children() end
---@return Macro?
function Macros:CurrentChild() end
---@overload fun(name: integer, role: nil): Macro
function Macros:Get(name, role) end
---@generic T : Macro
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Macro
function Macros:Create(index, class, undo) end
---@generic T : Macro
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Macro
function Macros:Append(class, undo, count) end
---@generic T : Macro
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Macro
function Macros:Acquire(class, undo) end
---@generic T : Macro
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Macro
---@deprecated use "Acquire" instead
function Macros:Aquire(class, undo) end
---@generic T : Macro
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Macro
function Macros:Insert(index, class, undo, count) end
---@generic T : Macro
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Macro
function Macros:Find(class, undo) end
---@overload fun(property_name: "CLI", property_value: YesNo|boolean)
---@overload fun(property_name: "CLI", property_value: YesNo|boolean)
---@overload fun(property_name: "LineCommand"|"User"|"Type"|"LineNo"|"LineName", property_value: string)
function Macros:CLI(property_name, property_value) end