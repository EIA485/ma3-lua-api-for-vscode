---@meta

---@class Layers: Object
local Layers = {}
---@return "Layers"
function Layers:GetClass() end
---@return "FixtureLayer"
function Layers:GetChildClass() end
---@return Patch
function Layers:Parent() end
---@param index integer
---@return FixtureLayer
function Layers:Ptr(index) end
---@return FixtureLayer[]
function Layers:Children() end
---@return FixtureLayer?
function Layers:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureLayer
function Layers:Get(name, role) end
---@generic T : FixtureLayer
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureLayer
function Layers:Create(index, class, undo) end
---@generic T : FixtureLayer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureLayer
function Layers:Append(class, undo, count) end
---@generic T : FixtureLayer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureLayer
function Layers:Acquire(class, undo) end
---@generic T : FixtureLayer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureLayer
---@deprecated use "Acquire" instead
function Layers:Aquire(class, undo) end
---@generic T : FixtureLayer
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureLayer
function Layers:Insert(index, class, undo, count) end
---@generic T : FixtureLayer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureLayer
function Layers:Find(class, undo) end