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
---@overload fun(index: integer, class: "Sound", undo: Undo?): Sound
---@overload fun(index: integer, class: nil, undo: Undo?): Sound
function Sounds:Create(index, class, undo) end
---@overload fun(class: "Sound", undo: Undo?, count: integer?): Sound
---@overload fun(class: nil, undo: Undo?, count: integer?): Sound
function Sounds:Append(class, undo, count) end
---@overload fun(class: "Sound", undo: Undo?): Sound
---@overload fun(class: nil, undo: Undo?): Sound
function Sounds:Acquire(class, undo) end
---@overload fun(class: "Sound", undo: Undo?): Sound
---@overload fun(class: nil, undo: Undo?): Sound
---@deprecated use "Acquire" instead
function Sounds:Aquire(class, undo) end
---@overload fun(index: integer, class: "Sound", undo: Undo?, count: integer?): Sound
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Sound
function Sounds:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Sound"): Sound
---@overload fun(name: string, class: nil): Sound
function Sounds:Find(name, class) end
---@overload fun(name: string, class: "Sound"): Sound
---@overload fun(name: string, class: nil): Object
function Sounds:FindRecursive(name, class) end
