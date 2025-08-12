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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "OldSubfixtureIndex"|"SubfixtureIndex", role: nil): integer
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Fixture", role: nil): Fixture
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "OffsetPan"|"OffsetTilt", role: nil): ValueTPropertyValue
---@overload fun(name: "ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"OldSubfixtureIndex"|"SubfixtureIndex"|"Appearance"|"Fixture"|"Stage"|"OffsetPan"|"OffsetTilt"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): SubFixture
function SubFixture:Get(name, role) end
---@overload fun(index: integer, class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(index: integer, class: "Fixture", undo: Undo?): Fixture
---@overload fun(index: integer, class: nil, undo: Undo?): SubFixture
function SubFixture:Create(index, class, undo) end
---@overload fun(class: "SubFixture", undo: Undo?, count: integer?): SubFixture
---@overload fun(class: "Fixture", undo: Undo?, count: integer?): Fixture
---@overload fun(class: nil, undo: Undo?, count: integer?): SubFixture
function SubFixture:Append(class, undo, count) end
---@overload fun(class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(class: "Fixture", undo: Undo?): Fixture
---@overload fun(class: nil, undo: Undo?): SubFixture
function SubFixture:Acquire(class, undo) end
---@overload fun(class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(class: "Fixture", undo: Undo?): Fixture
---@overload fun(class: nil, undo: Undo?): SubFixture
---@deprecated use "Acquire" instead
function SubFixture:Aquire(class, undo) end
---@overload fun(index: integer, class: "SubFixture", undo: Undo?, count: integer?): SubFixture
---@overload fun(index: integer, class: "Fixture", undo: Undo?, count: integer?): Fixture
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SubFixture
function SubFixture:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SubFixture"): SubFixture
---@overload fun(name: string, class: "Fixture"): Fixture
---@overload fun(name: string, class: nil): SubFixture
function SubFixture:Find(name, class) end
---@overload fun(name: string, class: "SubFixture"): SubFixture
---@overload fun(name: string, class: "Fixture"): Fixture
---@overload fun(name: string, class: nil): Object
function SubFixture:FindRecursive(name, class) end
