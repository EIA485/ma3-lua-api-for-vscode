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
---@generic T : PsrFixtures
---@param class `T`
---@return boolean
function PsrFixtures:IsClass(class) end
---@return Temp
function PsrFixtures:Parent() end
---@param index integer
---@return PsrFakeFixture
function PsrFixtures:Ptr(index) end
---@return PsrFakeFixture[]
function PsrFixtures:Children() end
---@return PsrFakeFixture?
function PsrFixtures:CurrentChild() end
---@return 19
function PsrFixtures:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "PatchLeft"
---@overload fun(idx: 16): "PatchRight"
---@overload fun(idx: 17): "FixtureAmount"
---@overload fun(idx: 18): "TopLevelFixtureAmount"
function PsrFixtures:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|17|18): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
function PsrFixtures:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13): "String"
---@overload fun(idx: 10|11): "Bool"
---@overload fun(idx: 12|17|18): "UInt64"
---@overload fun(idx: 14): "Int64"
---@overload fun(idx: 15|16): "Handle"
function PsrFixtures:PropertyType(idx) end
---@overload fun(name: "PatchLeft"|"PatchRight", role: nil): Patch
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FixtureAmount"|"TopLevelFixtureAmount", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"PatchLeft"|"PatchRight"|"FixtureAmount"|"TopLevelFixtureAmount", role: Enums.Roles): string
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
---@overload fun(property_name: "PatchLeft"|"PatchRight", property_value: Patch, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FixtureAmount"|"TopLevelFixtureAmount", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function PsrFixtures:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Primary", property_value: UseLeftOrRight)
---@overload fun(property_name: "MyPatch"|"OtherPatch", property_value: DMXPropertyAddress)
---@overload fun(property_name: "Primary", property_value: UseLeftOrRight)
---@overload fun(property_name: "RightSubfixtureIndex"|"RightTopLevelIndex"|"OtherStage"|"MyIDType"|"OtherCID"|"MyCID"|"OtherFixtureType"|"FixtureID"|"OtherIDType"|"LeftSubfixtureIndex", property_value: integer)
---@overload fun(property_name: "MyFixtureType"|"MyPosY"|"OtherName"|"MyRotX"|"MyPosX"|"MyRotY"|"MyClass"|"MyRotZ"|"OtherClass"|"MyPosZ"|"OtherLayer"|"MyLayer"|"OtherPosX"|"MyStage", property_value: string)
function PsrFixtures:SetChildren(property_name, property_value) end