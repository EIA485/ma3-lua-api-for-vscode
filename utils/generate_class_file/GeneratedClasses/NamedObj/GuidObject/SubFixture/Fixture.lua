---@meta

---@class Fixture: SubFixture A fixture represents a real world object on stage that usually can be controlled via DMX.
---@field Name string
---@field FixtureType FixtureType Defines fixture type
---@field Mode DMXMode Defines mode of the fixture type
---@field ModeDirect DMXMode Defines fixture type AND mode.
---@field FID integer Fixture ID
---@field IDType integer Custom ID type
---@field IDTypeDirect integer
---@field CID integer Custom ID
---@field Patch Container.ArrayCount<class DMXPropertyAddress, 8> A list of comma separated patch addresses
---@field Layer FixtureLayer
---@field Class Class
---@field Break1 DMXPropertyAddress
---@field Break2 DMXPropertyAddress
---@field Break3 DMXPropertyAddress
---@field Break4 DMXPropertyAddress
---@field Break5 DMXPropertyAddress
---@field Break6 DMXPropertyAddress
---@field Break7 DMXPropertyAddress
---@field Break8 DMXPropertyAddress
---@field RotDirect Math.TQuaternion<double>
---@field Gel
Color Colors.RGB<float>
---@field Gel Gel
---@field Beam
Angle number
---@field Shaper
POV number
---@field Shadow
Quality integer
---@field Cast
Shadow integer
---@field MeshMirrorX integer
---@field Follow
Target integer
---@field Selectable
3D integer
---@field Visible
3D integer
---@field Target
Space Space
---@field Movement
Space Space
---@field Master
React integer
---@field P1X number
---@field P1Y number
---@field P1Z number
---@field P1Pan integer
---@field P1Tilt integer
---@field P2X number
---@field P2Y number
---@field P2Z number
---@field P2Pan integer
---@field P2Tilt integer
---@field P3X number
---@field P3Y number
---@field ChannelRTCount integer
---@field IsMultipatch boolean
---@field MultipatchMain Fixture
---@field MultipatchCount integer
local Fixture = {
    FID="None",
    IDType="Fixture",
    IDTypeDirect="Fixture",
    CID="None",
    ["Gel
Color"]="1.000000,1.000000,1.000000,1.000000",
    ["Beam
Angle"]="0",
    ["Shaper
POV"]="0",
    ["Shadow
Quality"]="High",
    ["Selectable
3D"]="Yes",
    ["Visible
3D"]="Yes",
    ["Master
React"]="Grand",
    P1X="0",
    P1Y="0",
    P1Z="0",
    P1Pan="0",
    P1Tilt="0",
    P2X="0",
    P2Y="0",
    P2Z="0",
    P2Pan="0",
    P2Tilt="0",
    P3X="0",
    P3Y="0",
    ChannelRTCount="0",
    IsMultipatch="No",
    MultipatchCount="0"
}
---@return "Fixture"
function Fixture:GetClass() end
---@return "SubFixture"
function Fixture:GetChildClass() end
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
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "FixtureType", role: nil): FixtureType
---@overload fun(name: "Mode"|"ModeDirect", role: nil): DMXMode
---@overload fun(name: "FID"|"IDType"|"IDTypeDirect"|"CID", role: nil): integer
---@overload fun(name: "Patch", role: nil): Container.ArrayCount<class DMXPropertyAddress, 8>
---@overload fun(name: "Layer", role: nil): FixtureLayer
---@overload fun(name: "Class", role: nil): Class
---@overload fun(name: "Break1"|"Break2"|"Break3"|"Break4"|"Break5"|"Break6"|"Break7"|"Break8", role: nil): DMXPropertyAddress
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<double>
---@overload fun(name: "Gel
Color", role: nil): Colors.RGB<float>
---@overload fun(name: "Gel", role: nil): Gel
---@overload fun(name: "Beam
Angle"|"Shaper
POV", role: nil): number
---@overload fun(name: "Shadow
Quality"|"Cast
Shadow"|"MeshMirrorX"|"Follow
Target"|"Selectable
3D"|"Visible
3D", role: nil): integer
---@overload fun(name: "Target
Space"|"Movement
Space", role: nil): Space
---@overload fun(name: "Master
React", role: nil): integer
---@overload fun(name: "P1X"|"P1Y"|"P1Z", role: nil): number
---@overload fun(name: "P1Pan"|"P1Tilt", role: nil): integer
---@overload fun(name: "P2X"|"P2Y"|"P2Z", role: nil): number
---@overload fun(name: "P2Pan"|"P2Tilt", role: nil): integer
---@overload fun(name: "P3X"|"P3Y", role: nil): number
---@overload fun(name: "ChannelRTCount", role: nil): integer
---@overload fun(name: "IsMultipatch", role: nil): boolean
---@overload fun(name: "MultipatchMain", role: nil): Fixture
---@overload fun(name: "MultipatchCount", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"OldSubfixtureIndex"|"SubfixtureIndex"|"Appearance"|"Fixture"|"Stage"|"OffsetPan"|"OffsetTilt"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"Name"|"FixtureType"|"Mode"|"ModeDirect"|"FID"|"IDType"|"IDTypeDirect"|"CID"|"Patch"|"Layer"|"Class"|"Break1"|"Break2"|"Break3"|"Break4"|"Break5"|"Break6"|"Break7"|"Break8"|"RotDirect"|"Gel
Color"|"Gel"|"Beam
Angle"|"Shaper
POV"|"Shadow
Quality"|"Cast
Shadow"|"MeshMirrorX"|"Follow
Target"|"Selectable
3D"|"Visible
3D"|"Target
Space"|"Movement
Space"|"Master
React"|"P1X"|"P1Y"|"P1Z"|"P1Pan"|"P1Tilt"|"P2X"|"P2Y"|"P2Z"|"P2Pan"|"P2Tilt"|"P3X"|"P3Y"|"ChannelRTCount"|"IsMultipatch"|"MultipatchMain"|"MultipatchCount", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): SubFixture
function Fixture:Get(name, role) end
