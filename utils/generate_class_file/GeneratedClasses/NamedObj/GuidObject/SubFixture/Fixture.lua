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
---@field GelColor Colors.RGB<float>
---@field Gel Gel
---@field BeamAngle number
---@field ShaperPOV number
---@field ShadowQuality integer
---@field CastShadow integer
---@field MeshMirrorX integer
---@field FollowTarget integer
---@field Selectable3D integer
---@field Visible3D integer
---@field TargetSpace Space
---@field MovementSpace Space
---@field MasterReact integer
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
    GelColor="1.000000,1.000000,1.000000,1.000000",
    BeamAngle="0",
    ShaperPOV="0",
    ShadowQuality="High",
    Selectable3D="Yes",
    Visible3D="Yes",
    MasterReact="Grand",
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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Class", role: nil): Class
---@overload fun(name: "GelColor", role: nil): Colors.RGB<float>
---@overload fun(name: "Patch", role: nil): Container.ArrayCount<class DMXPropertyAddress, 8>
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Mode"|"ModeDirect", role: nil): DMXMode
---@overload fun(name: "Break1"|"Break2"|"Break3"|"Break4"|"Break5"|"Break6"|"Break7"|"Break8", role: nil): DMXPropertyAddress
---@overload fun(name: "MultipatchMain"|"Fixture", role: nil): Fixture
---@overload fun(name: "Layer", role: nil): FixtureLayer
---@overload fun(name: "FixtureType", role: nil): FixtureType
---@overload fun(name: "Gel", role: nil): Gel
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<double>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "TargetSpace"|"MovementSpace", role: nil): Space
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "OffsetPan"|"OffsetTilt", role: nil): ValueTPropertyValue
---@overload fun(name: "IsMultipatch"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FID"|"IDType"|"IDTypeDirect"|"CID"|"ShadowQuality"|"CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D"|"MasterReact"|"P1Pan"|"P1Tilt"|"P2Pan"|"P2Tilt"|"ChannelRTCount"|"MultipatchCount"|"OldSubfixtureIndex"|"SubfixtureIndex"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "BeamAngle"|"ShaperPOV"|"P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y", role: nil): number
---@overload fun(name: "Name"|"NameAndApp"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Name"|"FixtureType"|"Mode"|"ModeDirect"|"FID"|"IDType"|"IDTypeDirect"|"CID"|"Patch"|"Layer"|"Class"|"Break1"|"Break2"|"Break3"|"Break4"|"Break5"|"Break6"|"Break7"|"Break8"|"RotDirect"|"GelColor"|"Gel"|"BeamAngle"|"ShaperPOV"|"ShadowQuality"|"CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D"|"TargetSpace"|"MovementSpace"|"MasterReact"|"P1X"|"P1Y"|"P1Z"|"P1Pan"|"P1Tilt"|"P2X"|"P2Y"|"P2Z"|"P2Pan"|"P2Tilt"|"P3X"|"P3Y"|"ChannelRTCount"|"IsMultipatch"|"MultipatchMain"|"MultipatchCount"|"OldSubfixtureIndex"|"SubfixtureIndex"|"Appearance"|"Fixture"|"Stage"|"OffsetPan"|"OffsetTilt"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): SubFixture
function Fixture:Get(name, role) end
---@overload fun(index: integer, class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(index: integer, class: nil, undo: Undo?): SubFixture
function Fixture:Create(index, class, undo) end
---@overload fun(class: "SubFixture", undo: Undo?, count: integer?): SubFixture
---@overload fun(class: nil, undo: Undo?, count: integer?): SubFixture
function Fixture:Append(class, undo, count) end
---@overload fun(class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(class: nil, undo: Undo?): SubFixture
function Fixture:Acquire(class, undo) end
---@overload fun(class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(class: nil, undo: Undo?): SubFixture
---@deprecated use "Acquire" instead
function Fixture:Aquire(class, undo) end
---@overload fun(index: integer, class: "SubFixture", undo: Undo?, count: integer?): SubFixture
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SubFixture
function Fixture:Insert(index, class, undo, count) end
---@overload fun(class: "SubFixture", undo: Undo?): SubFixture
---@overload fun(class: nil, undo: Undo?): SubFixture
function Fixture:Find(class, undo) end