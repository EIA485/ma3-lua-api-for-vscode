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
---@overload fun(index: integer, class: "Hardkey", undo: Undo?): Hardkey
---@overload fun(index: integer, class: nil, undo: Undo?): Hardkey
function Hardkeys:Create(index, class, undo) end
---@overload fun(class: "Hardkey", undo: Undo?, count: integer?): Hardkey
---@overload fun(class: nil, undo: Undo?, count: integer?): Hardkey
function Hardkeys:Append(class, undo, count) end
---@overload fun(class: "Hardkey", undo: Undo?): Hardkey
---@overload fun(class: nil, undo: Undo?): Hardkey
function Hardkeys:Acquire(class, undo) end
---@overload fun(class: "Hardkey", undo: Undo?): Hardkey
---@overload fun(class: nil, undo: Undo?): Hardkey
---@deprecated use "Acquire" instead
function Hardkeys:Aquire(class, undo) end
---@overload fun(index: integer, class: "Hardkey", undo: Undo?, count: integer?): Hardkey
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Hardkey
function Hardkeys:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Hardkey"): Hardkey
---@overload fun(name: string, class: nil): Hardkey
function Hardkeys:Find(name, class) end
---@overload fun(name: string, class: "Hardkey"): Hardkey
---@overload fun(name: string, class: nil): Object
function Hardkeys:FindRecursive(name, class) end
