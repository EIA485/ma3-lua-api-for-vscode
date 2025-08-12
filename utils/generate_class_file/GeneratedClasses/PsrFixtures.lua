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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "PatchLeft"|"PatchRight", role: nil): Patch
---@overload fun(name: "FixtureAmount"|"TopLevelFixtureAmount", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PatchLeft"|"PatchRight"|"FixtureAmount"|"TopLevelFixtureAmount", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PsrFakeFixture
function PsrFixtures:Get(name, role) end
---@overload fun(index: integer, class: "PsrFakeFixture", undo: Undo?): PsrFakeFixture
---@overload fun(index: integer, class: nil, undo: Undo?): PsrFakeFixture
function PsrFixtures:Create(index, class, undo) end
---@overload fun(class: "PsrFakeFixture", undo: Undo?, count: integer?): PsrFakeFixture
---@overload fun(class: nil, undo: Undo?, count: integer?): PsrFakeFixture
function PsrFixtures:Append(class, undo, count) end
---@overload fun(class: "PsrFakeFixture", undo: Undo?): PsrFakeFixture
---@overload fun(class: nil, undo: Undo?): PsrFakeFixture
function PsrFixtures:Acquire(class, undo) end
---@overload fun(class: "PsrFakeFixture", undo: Undo?): PsrFakeFixture
---@overload fun(class: nil, undo: Undo?): PsrFakeFixture
---@deprecated use "Acquire" instead
function PsrFixtures:Aquire(class, undo) end
---@overload fun(index: integer, class: "PsrFakeFixture", undo: Undo?, count: integer?): PsrFakeFixture
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PsrFakeFixture
function PsrFixtures:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PsrFakeFixture"): PsrFakeFixture
---@overload fun(name: string, class: nil): PsrFakeFixture
function PsrFixtures:Find(name, class) end
---@overload fun(name: string, class: "PsrFakeFixture"): PsrFakeFixture
---@overload fun(name: string, class: nil): Object
function PsrFixtures:FindRecursive(name, class) end
