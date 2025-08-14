---@meta

---@class DMXModes: Object Container for all modes of a fixture type.
local DMXModes = {}
---@return "DMXModes"
function DMXModes:GetClass() end
---@return "DMXMode"
function DMXModes:GetChildClass() end
---@return FixtureType
function DMXModes:Parent() end
---@param index integer
---@return DMXMode
function DMXModes:Ptr(index) end
---@return DMXMode[]
function DMXModes:Children() end
---@return DMXMode?
function DMXModes:CurrentChild() end
---@overload fun(name: integer, role: nil): DMXMode
function DMXModes:Get(name, role) end
---@generic T : DMXMode
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXMode
function DMXModes:Create(index, class, undo) end
---@generic T : DMXMode
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXMode
function DMXModes:Append(class, undo, count) end
---@generic T : DMXMode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXMode
function DMXModes:Acquire(class, undo) end
---@generic T : DMXMode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXMode
---@deprecated use "Acquire" instead
function DMXModes:Aquire(class, undo) end
---@generic T : DMXMode
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXMode
function DMXModes:Insert(index, class, undo, count) end
---@generic T : DMXMode
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXMode
function DMXModes:Find(class, undo) end