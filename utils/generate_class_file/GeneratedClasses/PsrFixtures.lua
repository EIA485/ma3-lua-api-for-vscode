---@meta

---@class PsrFixtures: Object
---@field PatchLeft Patch
---@field PatchRight Patch
---@field FixtureAmount integer
---@field TopLevelFixtureAmount integer
local PsrFixtures = {}
---@return "PsrFixtures"
function PsrFixtures:GetClass() end
---@return "PsrFakeFixture"
function PsrFixtures:GetChildClass() end
---@return Temp
function PsrFixtures:Parent() end
---@param index integer
---@return PsrFakeFixture
function PsrFixtures:Ptr(index) end
---@return PsrFakeFixture[]
function PsrFixtures:Children() end
---@return PsrFakeFixture?
function PsrFixtures:CurrentChild() end
---@overload fun(name: "PatchLeft"|"PatchRight", role: nil): Patch
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FixtureAmount"|"TopLevelFixtureAmount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "PatchLeft"|"PatchRight"|"FixtureAmount"|"TopLevelFixtureAmount"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PsrFakeFixture
function PsrFixtures:Get(name, role) end
---@generic T : PsrFakeFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PsrFakeFixture
function PsrFixtures:Create(index, class, undo) end
---@generic T : PsrFakeFixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PsrFakeFixture
function PsrFixtures:Append(class, undo, count) end
---@generic T : PsrFakeFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PsrFakeFixture
function PsrFixtures:Acquire(class, undo) end
---@generic T : PsrFakeFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PsrFakeFixture
---@deprecated use "Acquire" instead
function PsrFixtures:Aquire(class, undo) end
---@generic T : PsrFakeFixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PsrFakeFixture
function PsrFixtures:Insert(index, class, undo, count) end
---@generic T : PsrFakeFixture
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PsrFakeFixture
function PsrFixtures:Find(class, undo) end