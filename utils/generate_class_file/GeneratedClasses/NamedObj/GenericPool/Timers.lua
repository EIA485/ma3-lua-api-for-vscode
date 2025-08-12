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
---@overload fun(index: integer, class: "Timer", undo: Undo?): Timer
---@overload fun(index: integer, class: nil, undo: Undo?): Timer
function Timers:Create(index, class, undo) end
---@overload fun(class: "Timer", undo: Undo?, count: integer?): Timer
---@overload fun(class: nil, undo: Undo?, count: integer?): Timer
function Timers:Append(class, undo, count) end
---@overload fun(class: "Timer", undo: Undo?): Timer
---@overload fun(class: nil, undo: Undo?): Timer
function Timers:Acquire(class, undo) end
---@overload fun(class: "Timer", undo: Undo?): Timer
---@overload fun(class: nil, undo: Undo?): Timer
---@deprecated use "Acquire" instead
function Timers:Aquire(class, undo) end
---@overload fun(index: integer, class: "Timer", undo: Undo?, count: integer?): Timer
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timer
function Timers:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Timer"): Timer
---@overload fun(name: string, class: nil): Timer
function Timers:Find(name, class) end
---@overload fun(name: string, class: "Timer"): Timer
---@overload fun(name: string, class: nil): Object
function Timers:FindRecursive(name, class) end
