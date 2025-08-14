---@meta

---@class SubFixture: GuidObject Logical functional unit inside a fixture.
---@field OldSubfixtureIndex integer
---@field SubfixtureIndex integer
---@field Appearance Appearance
---@field Fixture Fixture
---@field Stage Stage
---@field OffsetPan ValueTPropertyValue
---@field OffsetTilt ValueTPropertyValue
---@field ParameterCountViolation integer
---@field SubfxitureCountViolation integer
---@field ConflitedPatch integer
local SubFixture = {
    OffsetPan="0",
    OffsetTilt="0",
    ParameterCountViolation="0",
    SubfxitureCountViolation="0",
    ConflitedPatch="0"
}
---@return "SubFixture"
function SubFixture:GetClass() end
---@return "SubFixture"
function SubFixture:GetChildClass() end
---@return SubFixture
function SubFixture:Parent() end
---@param index integer
---@return SubFixture
function SubFixture:Ptr(index) end
---@return SubFixture[]
function SubFixture:Children() end
---@return SubFixture?
function SubFixture:CurrentChild() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Fixture", role: nil): Fixture
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "OffsetPan"|"OffsetTilt", role: nil): ValueTPropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "OldSubfixtureIndex"|"SubfixtureIndex"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "OldSubfixtureIndex"|"SubfixtureIndex"|"Appearance"|"Fixture"|"Stage"|"OffsetPan"|"OffsetTilt"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): SubFixture
function SubFixture:Get(name, role) end
---@generic T : Fixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
function SubFixture:Create(index, class, undo) end
---@generic T : Fixture
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function SubFixture:Append(class, undo, count) end
---@generic T : Fixture
---@param class `T`
---@param undo Undo?
---@return T
function SubFixture:Acquire(class, undo) end
---@generic T : Fixture
---@param class `T`
---@param undo Undo?
---@return T
---@deprecated use "Acquire" instead
function SubFixture:Aquire(class, undo) end
---@generic T : Fixture
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function SubFixture:Insert(index, class, undo, count) end
---@generic T : Fixture
---@param class `T`
---@param undo Undo?
---@return T
function SubFixture:Find(class, undo) end
---@generic T : Fixture
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function SubFixture:FindRecursive(name, class) end
---@generic T : Fixture
---@param class `T`
---@return T
function SubFixture:FindParent(class) end