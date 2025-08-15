---@meta

---@class Wheels: Object Container for all wheels in a fixture type.
local Wheels = {}
---@return "Wheels"
function Wheels:GetClass() end
---@return "Wheel"
function Wheels:GetChildClass() end
---@generic T : Wheels
---@param class `T`
---@return boolean
function Wheels:IsClass(class) end
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
---@generic T : Wheel
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Wheel
function Wheels:Create(index, class, undo) end
---@generic T : Wheel
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Wheel
function Wheels:Append(class, undo, count) end
---@generic T : Wheel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Wheel
function Wheels:Acquire(class, undo) end
---@generic T : Wheel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Wheel
---@deprecated use "Acquire" instead
function Wheels:Aquire(class, undo) end
---@generic T : Wheel
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Wheel
function Wheels:Insert(index, class, undo, count) end
---@generic T : Wheel
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Wheel
function Wheels:Find(class, undo) end
---@overload fun(property_name: "AllowShortcut", property_value: YesNo|boolean)
---@overload fun(property_name: "AllowShortcut", property_value: YesNo|boolean)
function Wheels:AllowShortcut(property_name, property_value) end