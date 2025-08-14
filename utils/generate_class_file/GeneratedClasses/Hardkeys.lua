---@meta

---@class Hardkeys: Object
local Hardkeys = {}
---@return "Hardkeys"
function Hardkeys:GetClass() end
---@return "Hardkey"
function Hardkeys:GetChildClass() end
---@return HardwareConfiguration
function Hardkeys:Parent() end
---@param index integer
---@return Hardkey
function Hardkeys:Ptr(index) end
---@return Hardkey[]
function Hardkeys:Children() end
---@return Hardkey?
function Hardkeys:CurrentChild() end
---@overload fun(name: integer, role: nil): Hardkey
function Hardkeys:Get(name, role) end
---@generic T : Hardkey
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Hardkey
function Hardkeys:Create(index, class, undo) end
---@generic T : Hardkey
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Hardkey
function Hardkeys:Append(class, undo, count) end
---@generic T : Hardkey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Hardkey
function Hardkeys:Acquire(class, undo) end
---@generic T : Hardkey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Hardkey
---@deprecated use "Acquire" instead
function Hardkeys:Aquire(class, undo) end
---@generic T : Hardkey
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Hardkey
function Hardkeys:Insert(index, class, undo, count) end
---@generic T : Hardkey
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Hardkey
function Hardkeys:Find(class, undo) end