---@meta

---@class Fixture: SubFixture A fixture represents a real world object on stage that usually can be controlled via DMX.
---@field Name string
---@field FixtureType FixtureType Defines fixture type
---@field Mode DMXMode Defines mode of the fixture type
---@field ModeDirect DMXMode Defines fixture type AND mode.
---@field FID FixtureIdEnum Fixture ID
---@field IDType integer Custom ID type
---@field IDTypeDirect integer
---@field CID FixtureIdEnum Custom ID
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
---@field ShadowQuality ShadowMapQuality
---@field CastShadow Yes|true
---@field MeshMirrorX Yes|true
---@field FollowTarget Yes|true
---@field Selectable3D Yes|true
---@field Visible3D Yes|true
---@field TargetSpace Space
---@field MovementSpace Space
---@field MasterReact MasterReaction
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
---@field IsMultipatch YesNo|boolean
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
---@generic T : Fixture
---@param class `T`
---@return boolean
function Fixture:IsClass(class) end
---@return 77
function Fixture:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "UserExpanded"
---@overload fun(idx: 8): "FaderEnabled"
---@overload fun(idx: 9): "Owned"
---@overload fun(idx: 10): "Hidden"
---@overload fun(idx: 11): "DependencyExport"
---@overload fun(idx: 12): "MemoryFootprint"
---@overload fun(idx: 13): "Guid"
---@overload fun(idx: 14): "Scribble"
---@overload fun(idx: 15): "NameAndApp"
---@overload fun(idx: 16): "Note"
---@overload fun(idx: 17): "Tags"
---@overload fun(idx: 18): "OldSubfixtureIndex"
---@overload fun(idx: 19): "SubfixtureIndex"
---@overload fun(idx: 20): "Appearance"
---@overload fun(idx: 21): "Fixture"
---@overload fun(idx: 22): "Stage"
---@overload fun(idx: 23): "OffsetPan"
---@overload fun(idx: 24): "OffsetTilt"
---@overload fun(idx: 25): "ParameterCountViolation"
---@overload fun(idx: 26): "SubfxitureCountViolation"
---@overload fun(idx: 27): "ConflitedPatch"
---@overload fun(idx: 28): "Name"
---@overload fun(idx: 29): "FixtureType"
---@overload fun(idx: 30): "Mode"
---@overload fun(idx: 31): "ModeDirect"
---@overload fun(idx: 32): "FID"
---@overload fun(idx: 33): "IDType"
---@overload fun(idx: 34): "IDTypeDirect"
---@overload fun(idx: 35): "CID"
---@overload fun(idx: 36): "Patch"
---@overload fun(idx: 37): "Layer"
---@overload fun(idx: 38): "Class"
---@overload fun(idx: 39): "Break1"
---@overload fun(idx: 40): "Break2"
---@overload fun(idx: 41): "Break3"
---@overload fun(idx: 42): "Break4"
---@overload fun(idx: 43): "Break5"
---@overload fun(idx: 44): "Break6"
---@overload fun(idx: 45): "Break7"
---@overload fun(idx: 46): "Break8"
---@overload fun(idx: 47): "RotDirect"
---@overload fun(idx: 48): "GelColor"
---@overload fun(idx: 49): "Gel"
---@overload fun(idx: 50): "BeamAngle"
---@overload fun(idx: 51): "ShaperPOV"
---@overload fun(idx: 52): "ShadowQuality"
---@overload fun(idx: 53): "CastShadow"
---@overload fun(idx: 54): "MeshMirrorX"
---@overload fun(idx: 55): "FollowTarget"
---@overload fun(idx: 56): "Selectable3D"
---@overload fun(idx: 57): "Visible3D"
---@overload fun(idx: 58): "TargetSpace"
---@overload fun(idx: 59): "MovementSpace"
---@overload fun(idx: 60): "MasterReact"
---@overload fun(idx: 61): "P1X"
---@overload fun(idx: 62): "P1Y"
---@overload fun(idx: 63): "P1Z"
---@overload fun(idx: 64): "P1Pan"
---@overload fun(idx: 65): "P1Tilt"
---@overload fun(idx: 66): "P2X"
---@overload fun(idx: 67): "P2Y"
---@overload fun(idx: 68): "P2Z"
---@overload fun(idx: 69): "P2Pan"
---@overload fun(idx: 70): "P2Tilt"
---@overload fun(idx: 71): "P3X"
---@overload fun(idx: 72): "P3Y"
---@overload fun(idx: 73): "ChannelRTCount"
---@overload fun(idx: 74): "IsMultipatch"
---@overload fun(idx: 75): "MultipatchMain"
---@overload fun(idx: 76): "MultipatchCount"
function Fixture:PropertyName(idx) end
---@overload fun(idx: 0|1|2|25|26|27|74): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|10): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|19|21|73|75|76): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 8|9): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 11|13|14|16|17|18|20|23|24|28|30|33|36|37|38|48|49|50|51|58|59|61|62|63|64|65|66|67|68|69|70|71|72): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 12|15|29|31|34|39|40|41|42|43|44|45|46|47): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 22): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 32|35): {ExportIgnore: False, EnumCollection: FixtureIdEnum, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 52): {ExportIgnore: False, EnumCollection: ShadowMapQuality, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 53|54|55|56|57): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 60): {ExportIgnore: False, EnumCollection: MasterReaction, ReadOnly: False, ImportIgnore: False}
function Fixture:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|7|18|19|25|26|27|32|33|34|35|52|53|54|55|56|57|73|76): "UInt32"
---@overload fun(idx: 8|9|74): "Bool"
---@overload fun(idx: 10): "UInt64"
---@overload fun(idx: 11|15|16|28): "String"
---@overload fun(idx: 12): "Int64"
---@overload fun(idx: 13|17|36|39|40|41|42|43|44|45|46|47|48|75): "Custom"
---@overload fun(idx: 14|20|21|22|29|30|31|37|38|49|58|59): "Handle"
---@overload fun(idx: 23|24|64|65|69|70): "Int32"
---@overload fun(idx: 50|51|61|62|63|66|67|68|71|72): "Float"
---@overload fun(idx: 60): "UInt8"
function Fixture:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Class", role: nil): Class
---@overload fun(name: "GelColor", role: nil): Colors.RGB<float>
---@overload fun(name: "Patch", role: nil): Container.ArrayCount<class DMXPropertyAddress, 8>
---@overload fun(name: "Mode"|"ModeDirect", role: nil): DMXMode
---@overload fun(name: "Break1"|"Break2"|"Break3"|"Break4"|"Break5"|"Break6"|"Break7"|"Break8", role: nil): DMXPropertyAddress
---@overload fun(name: "Fixture"|"MultipatchMain", role: nil): Fixture
---@overload fun(name: "FID"|"CID", role: nil): FixtureIdEnum
---@overload fun(name: "Layer", role: nil): FixtureLayer
---@overload fun(name: "FixtureType", role: nil): FixtureType
---@overload fun(name: "Gel", role: nil): Gel
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "MasterReact", role: nil): MasterReaction
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<double>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "ShadowQuality", role: nil): ShadowMapQuality
---@overload fun(name: "TargetSpace"|"MovementSpace", role: nil): Space
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "OffsetPan"|"OffsetTilt", role: nil): ValueTPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"IsMultipatch", role: nil): YesNo|boolean
---@overload fun(name: "CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"OldSubfixtureIndex"|"SubfixtureIndex"|"IDType"|"IDTypeDirect"|"P1Pan"|"P1Tilt"|"P2Pan"|"P2Tilt"|"ChannelRTCount"|"MultipatchCount", role: nil): integer
---@overload fun(name: "BeamAngle"|"ShaperPOV"|"P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y", role: nil): number
---@overload fun(name: "DependencyExport"|"NameAndApp"|"Note"|"Name", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"OldSubfixtureIndex"|"SubfixtureIndex"|"Appearance"|"Fixture"|"Stage"|"OffsetPan"|"OffsetTilt"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"Name"|"FixtureType"|"Mode"|"ModeDirect"|"FID"|"IDType"|"IDTypeDirect"|"CID"|"Patch"|"Layer"|"Class"|"Break1"|"Break2"|"Break3"|"Break4"|"Break5"|"Break6"|"Break7"|"Break8"|"RotDirect"|"GelColor"|"Gel"|"BeamAngle"|"ShaperPOV"|"ShadowQuality"|"CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D"|"TargetSpace"|"MovementSpace"|"MasterReact"|"P1X"|"P1Y"|"P1Z"|"P1Pan"|"P1Tilt"|"P2X"|"P2Y"|"P2Z"|"P2Pan"|"P2Tilt"|"P3X"|"P3Y"|"ChannelRTCount"|"IsMultipatch"|"MultipatchMain"|"MultipatchCount", role: Enums.Roles): string
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
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Class", property_value: Class, override_change_level: ChangeLevel?)
---@overload fun(property_name: "GelColor", property_value: Colors.RGB<float>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Patch", property_value: Container.ArrayCount<class DMXPropertyAddress, 8>, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Mode", property_value: DMXMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Fixture"|"MultipatchMain", property_value: Fixture, override_change_level: ChangeLevel?)
---@overload fun(property_name: "FID"|"CID", property_value: FixtureIdEnum, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Layer", property_value: FixtureLayer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Gel", property_value: Gel, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MasterReact", property_value: MasterReaction, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ShadowQuality", property_value: ShadowMapQuality, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TargetSpace"|"MovementSpace", property_value: Space, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "OffsetPan"|"OffsetTilt", property_value: ValueTPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch"|"IsMultipatch", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"OldSubfixtureIndex"|"SubfixtureIndex"|"IDType"|"P1Pan"|"P1Tilt"|"P2Pan"|"P2Tilt"|"ChannelRTCount"|"MultipatchCount", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "BeamAngle"|"ShaperPOV"|"P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y", property_value: number, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DependencyExport"|"Note"|"Name", property_value: string, override_change_level: ChangeLevel?)
function Fixture:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Fixture", property_value: Fixture)
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Fixture", property_value: Fixture)
---@overload fun(property_name: "OffsetPan"|"OffsetTilt", property_value: ValueTPropertyValue)
---@overload fun(property_name: "ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch", property_value: YesNo|boolean)
---@overload fun(property_name: "OldSubfixtureIndex"|"SubfixtureIndex", property_value: integer)
function Fixture:Fixture(property_name, property_value) end