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
---@overload fun(index: integer, class: "FixtureLayer", undo: Undo?): FixtureLayer
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureLayer
function Layers:Create(index, class, undo) end
---@overload fun(class: "FixtureLayer", undo: Undo?, count: integer?): FixtureLayer
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureLayer
function Layers:Append(class, undo, count) end
---@overload fun(class: "FixtureLayer", undo: Undo?): FixtureLayer
---@overload fun(class: nil, undo: Undo?): FixtureLayer
function Layers:Acquire(class, undo) end
---@overload fun(class: "FixtureLayer", undo: Undo?): FixtureLayer
---@overload fun(class: nil, undo: Undo?): FixtureLayer
---@deprecated use "Acquire" instead
function Layers:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureLayer", undo: Undo?, count: integer?): FixtureLayer
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureLayer
function Layers:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureLayer"): FixtureLayer
---@overload fun(name: string, class: nil): FixtureLayer
function Layers:Find(name, class) end
---@overload fun(name: string, class: "FixtureLayer"): FixtureLayer
---@overload fun(name: string, class: nil): Object
function Layers:FindRecursive(name, class) end
