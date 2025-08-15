---@meta

---@class FixtureTypesOverview: Object Artificial container to get an overview of fixture types and all their dmx modes
local FixtureTypesOverview = {}
---@return "FixtureTypesOverview"
function FixtureTypesOverview:GetClass() end
---@return "FixtureTypeFake"
function FixtureTypesOverview:GetChildClass() end
---@generic T : FixtureTypesOverview
---@param class `T`
---@return boolean
function FixtureTypesOverview:IsClass(class) end
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
---@generic T : FixtureTypeFake
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FixtureTypeFake
function FixtureTypesOverview:Create(index, class, undo) end
---@generic T : FixtureTypeFake
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FixtureTypeFake
function FixtureTypesOverview:Append(class, undo, count) end
---@generic T : FixtureTypeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeFake
function FixtureTypesOverview:Acquire(class, undo) end
---@generic T : FixtureTypeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeFake
---@deprecated use "Acquire" instead
function FixtureTypesOverview:Aquire(class, undo) end
---@generic T : FixtureTypeFake
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FixtureTypeFake
function FixtureTypesOverview:Insert(index, class, undo, count) end
---@generic T : FixtureTypeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FixtureTypeFake
function FixtureTypesOverview:Find(class, undo) end
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "FTRef", property_value: Object)
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "FTRef", property_value: Object)
---@overload fun(property_name: "Used", property_value: integer)
---@overload fun(property_name: "Name", property_value: string)
function FixtureTypesOverview:Name(property_name, property_value) end