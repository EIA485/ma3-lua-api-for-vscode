---@meta

---@class PsrFakeFixture: Object
---@field MyStage string
---@field MyFixtureType string
---@field MyIDType integer
---@field MyCID integer
---@field MyClass string
---@field MyLayer string
---@field MyPatch DMXPropertyAddress
---@field MyPosX string
---@field MyPosY string
---@field MyPosZ string
---@field MyRotX string
---@field MyRotY string
---@field MyRotZ string
---@field FixtureID integer
---@field Primary integer
---@field OtherIDType integer
---@field OtherCID integer
---@field OtherName string
---@field OtherStage integer
---@field OtherFixtureType integer
---@field OtherClass string
---@field OtherLayer string
---@field OtherPatch DMXPropertyAddress
---@field OtherPosX string
---@field LeftSubfixtureIndex integer
---@field RightSubfixtureIndex integer
---@field RightTopLevelIndex integer
local PsrFakeFixture = {
    MyClass="None",
    MyLayer="None",
    MyPosX="0.000m",
    MyPosY="0.000m",
    MyPosZ="0.000m",
    MyRotX="0",
    MyRotY="0",
    MyRotZ="0",
    Primary="0",
    OtherClass="None",
    OtherLayer="None",
    OtherPosX="0.000m"
}
---@return "PsrFakeFixture"
function PsrFakeFixture:GetClass() end
---@return "Object"
function PsrFakeFixture:GetChildClass() end
---@return PsrFixtures
function PsrFakeFixture:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "MyStage"|"MyFixtureType", role: nil): string
---@overload fun(name: "MyIDType"|"MyCID", role: nil): integer
---@overload fun(name: "MyClass"|"MyLayer", role: nil): string
---@overload fun(name: "MyPatch", role: nil): DMXPropertyAddress
---@overload fun(name: "MyPosX"|"MyPosY"|"MyPosZ"|"MyRotX"|"MyRotY"|"MyRotZ", role: nil): string
---@overload fun(name: "FixtureID"|"Primary"|"OtherIDType"|"OtherCID", role: nil): integer
---@overload fun(name: "OtherName", role: nil): string
---@overload fun(name: "OtherStage"|"OtherFixtureType", role: nil): integer
---@overload fun(name: "OtherClass"|"OtherLayer", role: nil): string
---@overload fun(name: "OtherPatch", role: nil): DMXPropertyAddress
---@overload fun(name: "OtherPosX", role: nil): string
---@overload fun(name: "LeftSubfixtureIndex"|"RightSubfixtureIndex"|"RightTopLevelIndex", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"MyStage"|"MyFixtureType"|"MyIDType"|"MyCID"|"MyClass"|"MyLayer"|"MyPatch"|"MyPosX"|"MyPosY"|"MyPosZ"|"MyRotX"|"MyRotY"|"MyRotZ"|"FixtureID"|"Primary"|"OtherIDType"|"OtherCID"|"OtherName"|"OtherStage"|"OtherFixtureType"|"OtherClass"|"OtherLayer"|"OtherPatch"|"OtherPosX"|"LeftSubfixtureIndex"|"RightSubfixtureIndex"|"RightTopLevelIndex", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function PsrFakeFixture:Get(name, role) end
