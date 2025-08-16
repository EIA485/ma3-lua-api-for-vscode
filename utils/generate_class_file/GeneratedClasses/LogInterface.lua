---@meta

---@class LogInterface: Object
local LogInterface = {}
---@return "LogInterface"
function LogInterface:GetClass() end
---@return "TimeLogBuffer"
function LogInterface:GetChildClass() end
---@generic T : LogInterface
---@param class `T`
---@return boolean
function LogInterface:IsClass(class) end
---@return Temp
function LogInterface:Parent() end
---@param index integer
---@return TimeLogBuffer
function LogInterface:Ptr(index) end
---@return TimeLogBuffer[]
function LogInterface:Children() end
---@return TimeLogBuffer?
function LogInterface:CurrentChild() end
---@overload fun(name: integer, role: nil): TimeLogBuffer
function LogInterface:Get(name, role) end
---@generic T : TimeLogBuffer
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimeLogBuffer
function LogInterface:Create(index, class, undo) end
---@generic T : TimeLogBuffer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimeLogBuffer
function LogInterface:Append(class, undo, count) end
---@generic T : TimeLogBuffer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimeLogBuffer
function LogInterface:Acquire(class, undo) end
---@generic T : TimeLogBuffer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimeLogBuffer
---@deprecated use "Acquire" instead
function LogInterface:Aquire(class, undo) end
---@generic T : TimeLogBuffer
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimeLogBuffer
function LogInterface:Insert(index, class, undo, count) end
---@generic T : TimeLogBuffer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimeLogBuffer
function LogInterface:Find(class, undo) end
function LogInterface:SetChildren(property_name, property_value) end