---@meta

---@class Sounds: CachedObjectPool
local Sounds = {}
---@return "Sounds"
function Sounds:GetClass() end
---@return "Sound"
function Sounds:GetChildClass() end
---@return MediaPools
function Sounds:Parent() end
---@param index integer
---@return Sound
function Sounds:Ptr(index) end
---@return Sound[]
function Sounds:Children() end
---@return Sound?
function Sounds:CurrentChild() end
---@overload fun(name: integer, role: nil): Sound
function Sounds:Get(name, role) end
---@generic T : Sound
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Sound
function Sounds:Create(index, class, undo) end
---@generic T : Sound
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Sound
function Sounds:Append(class, undo, count) end
---@generic T : Sound
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sound
function Sounds:Acquire(class, undo) end
---@generic T : Sound
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sound
---@deprecated use "Acquire" instead
function Sounds:Aquire(class, undo) end
---@generic T : Sound
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Sound
function Sounds:Insert(index, class, undo, count) end
---@generic T : Sound
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sound
function Sounds:Find(class, undo) end