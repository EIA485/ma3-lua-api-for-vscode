---@meta

---@class Timers: GenericPool
local Timers = {}
---@return "Timers"
function Timers:GetClass() end
---@return "Timer"
function Timers:GetChildClass() end
---@return Pool
function Timers:Parent() end
---@param index integer
---@return Timer
function Timers:Ptr(index) end
---@return Timer[]
function Timers:Children() end
---@return Timer?
function Timers:CurrentChild() end
---@overload fun(name: integer, role: nil): Timer
function Timers:Get(name, role) end
---@generic T : Timer
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Timer
function Timers:Create(index, class, undo) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Timer
function Timers:Append(class, undo, count) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timer
function Timers:Acquire(class, undo) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timer
---@deprecated use "Acquire" instead
function Timers:Aquire(class, undo) end
---@generic T : Timer
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timer
function Timers:Insert(index, class, undo, count) end
---@generic T : Timer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timer
function Timers:Find(class, undo) end