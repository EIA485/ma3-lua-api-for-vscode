---@meta

---@class FixtureTypeFake: Object This is NOT a fixture type, but a mere reference to one
---@field Name string
---@field FTRef Object
---@field Used integer
local FixtureTypeFake = {
    Used="0"
}
---@return "FixtureTypeFake"
function FixtureTypeFake:GetClass() end
---@return "DMXModeFake"
function FixtureTypeFake:GetChildClass() end
---@return FixtureTypesOverview
function FixtureTypeFake:Parent() end
---@param index integer
---@return DMXModeFake
function FixtureTypeFake:Ptr(index) end
---@return DMXModeFake[]
function FixtureTypeFake:Children() end
---@return DMXModeFake?
function FixtureTypeFake:CurrentChild() end
---@overload fun(name: "FTRef", role: nil): Object
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Used"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Name"|"FTRef"|"Used"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): DMXModeFake
function FixtureTypeFake:Get(name, role) end
---@generic T : DMXModeFake
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Create(index, class, undo) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DMXModeFake
function FixtureTypeFake:Append(class, undo, count) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Acquire(class, undo) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXModeFake
---@deprecated use "Acquire" instead
function FixtureTypeFake:Aquire(class, undo) end
---@generic T : DMXModeFake
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DMXModeFake
function FixtureTypeFake:Insert(index, class, undo, count) end
---@generic T : DMXModeFake
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DMXModeFake
function FixtureTypeFake:Find(class, undo) end