---@meta

---@class FixtureTypesOverview: Object Artificial container to get an overview of fixture types and all their dmx modes
local FixtureTypesOverview = {}
---@return "FixtureTypesOverview"
function FixtureTypesOverview:GetClass() end
---@return "FixtureTypeFake"
function FixtureTypesOverview:GetChildClass() end
---@return Patch
function FixtureTypesOverview:Parent() end
---@param index integer
---@return FixtureTypeFake
function FixtureTypesOverview:Ptr(index) end
---@return FixtureTypeFake[]
function FixtureTypesOverview:Children() end
---@return FixtureTypeFake?
function FixtureTypesOverview:CurrentChild() end
---@overload fun(name: integer, role: nil): FixtureTypeFake
function FixtureTypesOverview:Get(name, role) end
---@overload fun(index: integer, class: "FixtureTypeFake", undo: Undo?): FixtureTypeFake
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureTypeFake
function FixtureTypesOverview:Create(index, class, undo) end
---@overload fun(class: "FixtureTypeFake", undo: Undo?, count: integer?): FixtureTypeFake
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureTypeFake
function FixtureTypesOverview:Append(class, undo, count) end
---@overload fun(class: "FixtureTypeFake", undo: Undo?): FixtureTypeFake
---@overload fun(class: nil, undo: Undo?): FixtureTypeFake
function FixtureTypesOverview:Acquire(class, undo) end
---@overload fun(class: "FixtureTypeFake", undo: Undo?): FixtureTypeFake
---@overload fun(class: nil, undo: Undo?): FixtureTypeFake
---@deprecated use "Acquire" instead
function FixtureTypesOverview:Aquire(class, undo) end
---@overload fun(index: integer, class: "FixtureTypeFake", undo: Undo?, count: integer?): FixtureTypeFake
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureTypeFake
function FixtureTypesOverview:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "FixtureTypeFake"): FixtureTypeFake
---@overload fun(name: string, class: nil): FixtureTypeFake
function FixtureTypesOverview:Find(name, class) end
---@overload fun(name: string, class: "FixtureTypeFake"): FixtureTypeFake
---@overload fun(name: string, class: nil): Object
function FixtureTypesOverview:FindRecursive(name, class) end
