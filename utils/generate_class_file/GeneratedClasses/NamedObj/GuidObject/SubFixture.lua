---@meta

---@class SubFixture: GuidObject Logical functional unit inside a fixture.
---@field OldSubfixtureIndex integer
---@field SubfixtureIndex integer
---@field Appearance Appearance
---@field Fixture Fixture
---@field Stage Stage
---@field OffsetPan ValueTPropertyValue
---@field OffsetTilt ValueTPropertyValue
---@field ParameterCountViolation YesNo|boolean
---@field SubfxitureCountViolation YesNo|boolean
---@field ConflitedPatch YesNo|boolean
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
---@generic T : SubFixture
---@param class `T`
---@return boolean
function SubFixture:IsClass(class) end
---@return SubFixture
function SubFixture:Parent() end
---@param index integer
---@return SubFixture
function SubFixture:Ptr(index) end
---@return SubFixture[]
function SubFixture:Children() end
---@return SubFixture?
function SubFixture:CurrentChild() end
---@return 29
function SubFixture:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "Guid"
---@overload fun(idx: 15): "Scribble"
---@overload fun(idx: 16): "NameAndApp"
---@overload fun(idx: 17): "Note"
---@overload fun(idx: 18): "Tags"
---@overload fun(idx: 19): "OldSubfixtureIndex"
---@overload fun(idx: 20): "SubfixtureIndex"
---@overload fun(idx: 21): "Appearance"
---@overload fun(idx: 22): "Fixture"
---@overload fun(idx: 23): "Stage"
---@overload fun(idx: 24): "OffsetPan"
---@overload fun(idx: 25): "OffsetTilt"
---@overload fun(idx: 26): "ParameterCountViolation"
---@overload fun(idx: 27): "SubfxitureCountViolation"
---@overload fun(idx: 28): "ConflitedPatch"
function SubFixture:PropertyName(idx) end
---@overload fun(idx: 0|1|2|26|27|28): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|20|22): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|17|18|19|21|24|25): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|16): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 23): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
function SubFixture:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|19|20|26|27|28): "UInt32"
---@overload fun(idx: 7|12|16|17): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|18): "Custom"
---@overload fun(idx: 15|21|22|23): "Handle"
---@overload fun(idx: 24|25): "Int32"
function SubFixture:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Fixture", role: nil): Fixture
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Stage", role: nil): Stage
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "OffsetPan"|"OffsetTilt", role: nil): ValueTPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"OldSubfixtureIndex"|"SubfixtureIndex", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"OldSubfixtureIndex"|"SubfixtureIndex"|"Appearance"|"Fixture"|"Stage"|"OffsetPan"|"OffsetTilt"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch", role: Enums.Roles): string
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
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Fixture", property_value: Fixture, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "OffsetPan"|"OffsetTilt", property_value: ValueTPropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"ParameterCountViolation"|"SubfxitureCountViolation"|"ConflitedPatch", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"OldSubfixtureIndex"|"SubfixtureIndex", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note", property_value: string, override_change_level: ChangeLevel?)
function SubFixture:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "MultipatchMain", property_value: Fixture)
---@overload fun(property_name: "MasterReact", property_value: MasterReaction)
---@overload fun(property_name: "ShadowQuality", property_value: ShadowMapQuality)
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "Patch", property_value: Container.ArrayCount<class DMXPropertyAddress, 8>)
---@overload fun(property_name: "Gel", property_value: Gel)
---@overload fun(property_name: "Mode", property_value: DMXMode)
---@overload fun(property_name: "Class", property_value: Class)
---@overload fun(property_name: "GelColor", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
---@overload fun(property_name: "IsMultipatch", property_value: YesNo|boolean)
---@overload fun(property_name: "Class", property_value: Class)
---@overload fun(property_name: "GelColor", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Patch", property_value: Container.ArrayCount<class DMXPropertyAddress, 8>)
---@overload fun(property_name: "Mode", property_value: DMXMode)
---@overload fun(property_name: "MultipatchMain", property_value: Fixture)
---@overload fun(property_name: "FID"|"CID", property_value: FixtureIdEnum)
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
---@overload fun(property_name: "Gel", property_value: Gel)
---@overload fun(property_name: "MasterReact", property_value: MasterReaction)
---@overload fun(property_name: "ShadowQuality", property_value: ShadowMapQuality)
---@overload fun(property_name: "MovementSpace"|"TargetSpace", property_value: Space)
---@overload fun(property_name: "IsMultipatch", property_value: YesNo|boolean)
---@overload fun(property_name: "CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D", property_value: Yes|true)
---@overload fun(property_name: "MultipatchCount"|"P2Pan"|"P1Tilt"|"P2Tilt"|"P1Pan"|"ChannelRTCount"|"IDType", property_value: integer)
---@overload fun(property_name: "ShaperPOV"|"P2Y"|"P2Z"|"P1X"|"P1Y"|"P1Z"|"P3X"|"P3Y"|"BeamAngle"|"P2X", property_value: number)
---@overload fun(property_name: "Name", property_value: string)
function SubFixture:IsMultipatch(property_name, property_value) end
---@overload fun(property_name: "MultipatchMain", property_value: Fixture)
---@overload fun(property_name: "MasterReact", property_value: MasterReaction)
---@overload fun(property_name: "ShadowQuality", property_value: ShadowMapQuality)
---@overload fun(property_name: "Name", property_value: string)
---@overload fun(property_name: "Patch", property_value: Container.ArrayCount<class DMXPropertyAddress, 8>)
---@overload fun(property_name: "Gel", property_value: Gel)
---@overload fun(property_name: "Mode", property_value: DMXMode)
---@overload fun(property_name: "Class", property_value: Class)
---@overload fun(property_name: "GelColor", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
---@overload fun(property_name: "IsMultipatch", property_value: YesNo|boolean)
---@overload fun(property_name: "Class", property_value: Class)
---@overload fun(property_name: "GelColor", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Patch", property_value: Container.ArrayCount<class DMXPropertyAddress, 8>)
---@overload fun(property_name: "Mode", property_value: DMXMode)
---@overload fun(property_name: "MultipatchMain", property_value: Fixture)
---@overload fun(property_name: "FID"|"CID", property_value: FixtureIdEnum)
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
---@overload fun(property_name: "Gel", property_value: Gel)
---@overload fun(property_name: "MasterReact", property_value: MasterReaction)
---@overload fun(property_name: "ShadowQuality", property_value: ShadowMapQuality)
---@overload fun(property_name: "MovementSpace"|"TargetSpace", property_value: Space)
---@overload fun(property_name: "IsMultipatch", property_value: YesNo|boolean)
---@overload fun(property_name: "CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D", property_value: Yes|true)
---@overload fun(property_name: "MultipatchCount"|"P2Pan"|"P1Tilt"|"P2Tilt"|"P1Pan"|"ChannelRTCount"|"IDType", property_value: integer)
---@overload fun(property_name: "ShaperPOV"|"P2Y"|"P2Z"|"P1X"|"P1Y"|"P1Z"|"P3X"|"P3Y"|"BeamAngle"|"P2X", property_value: number)
---@overload fun(property_name: "Name", property_value: string)
function SubFixture:IsMultipatch(property_name, property_value) end
---@overload fun(property_name: "Class", property_value: Class)
---@overload fun(property_name: "GelColor", property_value: Colors.RGB<float>)
---@overload fun(property_name: "Patch", property_value: Container.ArrayCount<class DMXPropertyAddress, 8>)
---@overload fun(property_name: "Mode", property_value: DMXMode)
---@overload fun(property_name: "MultipatchMain", property_value: Fixture)
---@overload fun(property_name: "FID"|"CID", property_value: FixtureIdEnum)
---@overload fun(property_name: "Layer", property_value: FixtureLayer)
---@overload fun(property_name: "Gel", property_value: Gel)
---@overload fun(property_name: "MasterReact", property_value: MasterReaction)
---@overload fun(property_name: "ShadowQuality", property_value: ShadowMapQuality)
---@overload fun(property_name: "TargetSpace"|"MovementSpace", property_value: Space)
---@overload fun(property_name: "IsMultipatch", property_value: YesNo|boolean)
---@overload fun(property_name: "CastShadow"|"MeshMirrorX"|"FollowTarget"|"Selectable3D"|"Visible3D", property_value: Yes|true)
---@overload fun(property_name: "IDType"|"P1Pan"|"P1Tilt"|"P2Pan"|"P2Tilt"|"ChannelRTCount"|"MultipatchCount", property_value: integer)
---@overload fun(property_name: "BeamAngle"|"ShaperPOV"|"P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y", property_value: number)
---@overload fun(property_name: "Name", property_value: string)
function SubFixture:SetChildrenRecursive(property_name, property_value) end