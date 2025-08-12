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
---@overload fun(index: integer, class: "Timecode", undo: Undo?): Timecode
---@overload fun(index: integer, class: nil, undo: Undo?): Timecode
function Timecodes:Create(index, class, undo) end
---@overload fun(class: "Timecode", undo: Undo?, count: integer?): Timecode
---@overload fun(class: nil, undo: Undo?, count: integer?): Timecode
function Timecodes:Append(class, undo, count) end
---@overload fun(class: "Timecode", undo: Undo?): Timecode
---@overload fun(class: nil, undo: Undo?): Timecode
function Timecodes:Acquire(class, undo) end
---@overload fun(class: "Timecode", undo: Undo?): Timecode
---@overload fun(class: nil, undo: Undo?): Timecode
---@deprecated use "Acquire" instead
function Timecodes:Aquire(class, undo) end
---@overload fun(index: integer, class: "Timecode", undo: Undo?, count: integer?): Timecode
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Timecode
function Timecodes:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Timecode"): Timecode
---@overload fun(name: string, class: nil): Timecode
function Timecodes:Find(name, class) end
---@overload fun(name: string, class: "Timecode"): Timecode
---@overload fun(name: string, class: nil): Object
function Timecodes:FindRecursive(name, class) end
