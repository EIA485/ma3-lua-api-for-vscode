---@meta

---@class LogInterface: Object
local LogInterface = {}
---@return "LogInterface"
function LogInterface:GetClass() end
---@return "TimeLogBuffer"
function LogInterface:GetChildClass() end
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
---@overload fun(index: integer, class: "TimeLogBuffer", undo: Undo?): TimeLogBuffer
---@overload fun(index: integer, class: nil, undo: Undo?): TimeLogBuffer
function LogInterface:Create(index, class, undo) end
---@overload fun(class: "TimeLogBuffer", undo: Undo?, count: integer?): TimeLogBuffer
---@overload fun(class: nil, undo: Undo?, count: integer?): TimeLogBuffer
function LogInterface:Append(class, undo, count) end
---@overload fun(class: "TimeLogBuffer", undo: Undo?): TimeLogBuffer
---@overload fun(class: nil, undo: Undo?): TimeLogBuffer
function LogInterface:Acquire(class, undo) end
---@overload fun(class: "TimeLogBuffer", undo: Undo?): TimeLogBuffer
---@overload fun(class: nil, undo: Undo?): TimeLogBuffer
---@deprecated use "Acquire" instead
function LogInterface:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimeLogBuffer", undo: Undo?, count: integer?): TimeLogBuffer
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimeLogBuffer
function LogInterface:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimeLogBuffer"): TimeLogBuffer
---@overload fun(name: string, class: nil): TimeLogBuffer
function LogInterface:Find(name, class) end
---@overload fun(name: string, class: "TimeLogBuffer"): TimeLogBuffer
---@overload fun(name: string, class: nil): Object
function LogInterface:FindRecursive(name, class) end
