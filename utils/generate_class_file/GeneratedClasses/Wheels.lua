---@meta

---@class Wheels: Object Container for all wheels in a fixture type.
local Wheels = {}
---@return "Wheels"
function Wheels:GetClass() end
---@return "Wheel"
function Wheels:GetChildClass() end
---@return FixtureType
function Wheels:Parent() end
---@param index integer
---@return Wheel
function Wheels:Ptr(index) end
---@return Wheel[]
function Wheels:Children() end
---@return Wheel?
function Wheels:CurrentChild() end
---@overload fun(name: integer, role: nil): Wheel
function Wheels:Get(name, role) end
---@overload fun(index: integer, class: "Wheel", undo: Undo?): Wheel
---@overload fun(index: integer, class: nil, undo: Undo?): Wheel
function Wheels:Create(index, class, undo) end
---@overload fun(class: "Wheel", undo: Undo?, count: integer?): Wheel
---@overload fun(class: nil, undo: Undo?, count: integer?): Wheel
function Wheels:Append(class, undo, count) end
---@overload fun(class: "Wheel", undo: Undo?): Wheel
---@overload fun(class: nil, undo: Undo?): Wheel
function Wheels:Acquire(class, undo) end
---@overload fun(class: "Wheel", undo: Undo?): Wheel
---@overload fun(class: nil, undo: Undo?): Wheel
---@deprecated use "Acquire" instead
function Wheels:Aquire(class, undo) end
---@overload fun(index: integer, class: "Wheel", undo: Undo?, count: integer?): Wheel
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Wheel
function Wheels:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Wheel"): Wheel
---@overload fun(name: string, class: nil): Wheel
function Wheels:Find(name, class) end
---@overload fun(name: string, class: "Wheel"): Wheel
---@overload fun(name: string, class: nil): Object
function Wheels:FindRecursive(name, class) end
