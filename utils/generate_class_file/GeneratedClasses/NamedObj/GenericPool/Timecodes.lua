---@meta

---@class Timecodes: GenericPool
local Timecodes = {}
---@return "Timecodes"
function Timecodes:GetClass() end
---@return "Timecode"
function Timecodes:GetChildClass() end
---@return Pool
function Timecodes:Parent() end
---@param index integer
---@return Timecode
function Timecodes:Ptr(index) end
---@return Timecode[]
function Timecodes:Children() end
---@return Timecode?
function Timecodes:CurrentChild() end
---@overload fun(name: integer, role: nil): Timecode
function Timecodes:Get(name, role) end
---@generic T : Timecode
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Timecode
function Timecodes:Create(index, class, undo) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Timecode
function Timecodes:Append(class, undo, count) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timecode
function Timecodes:Acquire(class, undo) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timecode
---@deprecated use "Acquire" instead
function Timecodes:Aquire(class, undo) end
---@generic T : Timecode
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timecode
function Timecodes:Insert(index, class, undo, count) end
---@generic T : Timecode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Timecode
function Timecodes:Find(class, undo) end