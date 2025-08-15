---@meta

---@class Preset: Group A preset is the indirect data source in a light show. Typically*,* it is referenced by a sequence.
---@field InputFilter World
---@field CuePart CuePartMode
---@field Type string
---@field User string
---@field FeatureGroup string
---@field Trigger string
---@field ValuesMode PresetValuesMode
---@field MAgic YesNo|boolean
---@field PresetMode PresetMode
---@field PresetModeInternal PresetMode
---@field StoredData string
---@field SpeedMaster SpeedMaster
---@field SpeedScale SpeedScale
---@field PresetData EncoderLinkPhaser[]
---@field OwnDataPresent YesNo|boolean
---@field OwnNonCookedDataPresent YesNo|boolean
---@field Mode integer
---@field OffFade TimePropertyValue
---@field RecipeTemplate YesNo|boolean
---@field Action PresetActionToken
local Preset = {
    CuePart="Default",
    ValuesMode="Normal",
    MAgic="0",
    PresetMode="Selective",
    PresetModeInternal="Selective",
    SpeedMaster="None",
    SpeedScale="One",
    OwnNonCookedDataPresent="No",
    OffFade="0",
    RecipeTemplate="0"
}
---@return "Preset"
function Preset:GetClass() end
---@return "Recipe"
function Preset:GetChildClass() end
---@generic T : Preset
---@param class `T`
---@return boolean
function Preset:IsClass(class) end
---@return Object
function Preset:Parent() end
---@param index integer
---@return Recipe
function Preset:Ptr(index) end
---@return Recipe[]
function Preset:Children() end
---@return Recipe?
function Preset:CurrentChild() end
---@return 84
function Preset:PropertyCount() end
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
---@overload fun(idx: 16): "Appearance"
---@overload fun(idx: 17): "NameAndApp"
---@overload fun(idx: 18): "Note"
---@overload fun(idx: 19): "Tags"
---@overload fun(idx: 20): "Active"
---@overload fun(idx: 21): "HasAnyMatricksData"
---@overload fun(idx: 22): "ShuffleMode"
---@overload fun(idx: 23): "InitialName"
---@overload fun(idx: 24): "InitialMatricks"
---@overload fun(idx: 25): "X"
---@overload fun(idx: 26): "Y"
---@overload fun(idx: 27): "Z"
---@overload fun(idx: 28): "XBlock"
---@overload fun(idx: 29): "YBlock"
---@overload fun(idx: 30): "ZBlock"
---@overload fun(idx: 31): "XGroup"
---@overload fun(idx: 32): "YGroup"
---@overload fun(idx: 33): "ZGroup"
---@overload fun(idx: 34): "XWings"
---@overload fun(idx: 35): "YWings"
---@overload fun(idx: 36): "ZWings"
---@overload fun(idx: 37): "XWidth"
---@overload fun(idx: 38): "YWidth"
---@overload fun(idx: 39): "ZWidth"
---@overload fun(idx: 40): "XShuffle"
---@overload fun(idx: 41): "YShuffle"
---@overload fun(idx: 42): "ZShuffle"
---@overload fun(idx: 43): "XShift"
---@overload fun(idx: 44): "YShift"
---@overload fun(idx: 45): "ZShift"
---@overload fun(idx: 46): "InvertStyle"
---@overload fun(idx: 47): "InvertX"
---@overload fun(idx: 48): "InvertY"
---@overload fun(idx: 49): "InvertZ"
---@overload fun(idx: 50): "AlignRangeX"
---@overload fun(idx: 51): "AlignRangeY"
---@overload fun(idx: 52): "AlignRangeZ"
---@overload fun(idx: 53): "RelativeFade"
---@overload fun(idx: 54): "RelativeDelay"
---@overload fun(idx: 55): "RelativePhase"
---@overload fun(idx: 56): "RelativeSpeed"
---@overload fun(idx: 57): "Relative"
---@overload fun(idx: 58): "PhaserTransform"
---@overload fun(idx: 59): "DoShuffle"
---@overload fun(idx: 60): "MemoryType"
---@overload fun(idx: 61): "MoveGridCursor"
---@overload fun(idx: 62): "PreserveGridPositions"
---@overload fun(idx: 63): "SelectionData"
---@overload fun(idx: 64): "InputFilter"
---@overload fun(idx: 65): "CuePart"
---@overload fun(idx: 66): "Type"
---@overload fun(idx: 67): "User"
---@overload fun(idx: 68): "FeatureGroup"
---@overload fun(idx: 69): "Trigger"
---@overload fun(idx: 70): "ValuesMode"
---@overload fun(idx: 71): "MAgic"
---@overload fun(idx: 72): "PresetMode"
---@overload fun(idx: 73): "PresetModeInternal"
---@overload fun(idx: 74): "StoredData"
---@overload fun(idx: 75): "SpeedMaster"
---@overload fun(idx: 76): "SpeedScale"
---@overload fun(idx: 77): "PresetData"
---@overload fun(idx: 78): "OwnDataPresent"
---@overload fun(idx: 79): "OwnNonCookedDataPresent"
---@overload fun(idx: 80): "Mode"
---@overload fun(idx: 81): "OffFade"
---@overload fun(idx: 82): "RecipeTemplate"
---@overload fun(idx: 83): "Action"
function Preset:PropertyName(idx) end
---@overload fun(idx: 0|1|2|21|78|79): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11|20|47|48|49|50|51|52|53|54|55|56|57|62|71|82): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|24|66|67|68|69|74): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19|23|63|64|75|77|80|81): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17|59): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 22): {ExportIgnore: False, EnumCollection: ShuffleMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 25|26|27): {ExportIgnore: False, EnumCollection: MatricksIndexNone, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 28|29|30): {ExportIgnore: False, EnumCollection: MatricksBlockNone, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 31|32|33): {ExportIgnore: False, EnumCollection: MatricksGroupNone, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 34|35|36): {ExportIgnore: False, EnumCollection: MatricksWingsNone, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 37|38|39): {ExportIgnore: False, EnumCollection: MatrixWidthAuto, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 40|41|42): {ExportIgnore: False, EnumCollection: MatricksShuffleNone, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 43|44|45): {ExportIgnore: False, EnumCollection: MatricksShiftNone, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 46): {ExportIgnore: False, EnumCollection: MatricksInvertStyle, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 58): {ExportIgnore: False, EnumCollection: PhaserTransformationsShort, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 60): {ExportIgnore: True, EnumCollection: GroupMemoryType, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 61): {ExportIgnore: False, EnumCollection: GridCursorMovementGroup, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 65): {ExportIgnore: False, EnumCollection: CuePartMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 70): {ExportIgnore: False, EnumCollection: PresetValuesMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 72): {ExportIgnore: True, EnumCollection: PresetMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 73): {ExportIgnore: False, EnumCollection: PresetMode, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 76): {ExportIgnore: False, EnumCollection: SpeedScale, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 83): {ExportIgnore: False, EnumCollection: PresetActionToken, ReadOnly: False, ImportIgnore: False}
function Preset:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8|40|41|42|47|48|49|53|54|55|56|58|62|65|70|71|82): "UInt32"
---@overload fun(idx: 7|12|17|18|23|66|67|68|69|74): "String"
---@overload fun(idx: 9|10|21|57|78): "Bool"
---@overload fun(idx: 11|79): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|63|75|77|83): "Custom"
---@overload fun(idx: 15|16|24|64): "Handle"
---@overload fun(idx: 20|22|46|50|51|52|60|61|72|73|80): "UInt8"
---@overload fun(idx: 25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|43|44|45): "Int32"
---@overload fun(idx: 59): "Method"
---@overload fun(idx: 76): "Int8"
---@overload fun(idx: 81): "Int64Time"
function Preset:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "CuePart", role: nil): CuePartMode
---@overload fun(name: "PresetData", role: nil): EncoderLinkPhaser[]
---@overload fun(name: "MoveGridCursor", role: nil): GridCursorMovementGroup
---@overload fun(name: "MemoryType", role: nil): GroupMemoryType
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "InitialMatricks", role: nil): MAtrick
---@overload fun(name: "XBlock"|"YBlock"|"ZBlock", role: nil): MatricksBlockNone
---@overload fun(name: "XGroup"|"YGroup"|"ZGroup", role: nil): MatricksGroupNone
---@overload fun(name: "X"|"Y"|"Z", role: nil): MatricksIndexNone
---@overload fun(name: "InvertStyle", role: nil): MatricksInvertStyle
---@overload fun(name: "XShift"|"YShift"|"ZShift", role: nil): MatricksShiftNone
---@overload fun(name: "XShuffle"|"YShuffle"|"ZShuffle", role: nil): MatricksShuffleNone
---@overload fun(name: "XWings"|"YWings"|"ZWings", role: nil): MatricksWingsNone
---@overload fun(name: "XWidth"|"YWidth"|"ZWidth", role: nil): MatrixWidthAuto
---@overload fun(name: "PhaserTransform", role: nil): PhaserTransformationsShort
---@overload fun(name: "Action", role: nil): PresetActionToken
---@overload fun(name: "PresetMode"|"PresetModeInternal", role: nil): PresetMode
---@overload fun(name: "ValuesMode", role: nil): PresetValuesMode
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "ShuffleMode", role: nil): ShuffleMode
---@overload fun(name: "SpeedMaster", role: nil): SpeedMaster
---@overload fun(name: "SpeedScale", role: nil): SpeedScale
---@overload fun(name: "SelectionData", role: nil): SubfixtureBlock
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "OffFade", role: nil): TimePropertyValue
---@overload fun(name: "InputFilter", role: nil): World
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"Active"|"HasAnyMatricksData"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PreserveGridPositions"|"MAgic"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"RecipeTemplate", role: nil): YesNo|boolean
---@overload fun(name: "DoShuffle", role: nil): fun()
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"Mode", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"InitialName"|"Type"|"User"|"FeatureGroup"|"Trigger"|"StoredData", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"MemoryType"|"MoveGridCursor"|"PreserveGridPositions"|"SelectionData"|"InputFilter"|"CuePart"|"Type"|"User"|"FeatureGroup"|"Trigger"|"ValuesMode"|"MAgic"|"PresetMode"|"PresetModeInternal"|"StoredData"|"SpeedMaster"|"SpeedScale"|"PresetData"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"Mode"|"OffFade"|"RecipeTemplate"|"Action", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Recipe
function Preset:Get(name, role) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Recipe
function Preset:Create(index, class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Recipe
function Preset:Append(class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Recipe
function Preset:Acquire(class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Recipe
---@deprecated use "Acquire" instead
function Preset:Aquire(class, undo) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Recipe
function Preset:Insert(index, class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Recipe
function Preset:Find(class, undo) end
---@generic T : IllegalObject|Recipe
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Preset:FindRecursive(name, class) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|PhysicalPropertiesData|ProgUpdateCollect|CRI|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|PinPatch|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MidiSettings|ColorDefCollect|UdpProtocol|PowerConsumption|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|FTFilter|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|ColorSpaceData|FeatureGroup|GridContentFilterItem|Configurations|Presets|Materials|Quickeys|Patterns|Timers|Tags|Views|RenderQualities|Worlds|Bitmaps|Timecodes|MAtricks|CachedObjectPool|Appearances|Layouts|Cameras|Pages|GelPool|Filters|Generators|Scribbles|Groups|EncoderBarPool|DataPools|Macros|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|OutputStation|RenderQuality|WindowSettings|Stage|EncoderBar|Quickey|Selection|World|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|Gamut|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|PresetPools|Emitter|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|Connector|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|TypedNamedObj|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Connectors|Addons|Measurement|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|PhysicalProperties|AddonVariables|ScreenEncoder|FakeValueSensor|Parameters|WindowSettingsCollect|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|FTFilters|GamutCollect|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|Emitters|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacksCollect|RunningPresets|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|ColorSpaceCollect|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|CRIGroup|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|MouseCollect|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|Device|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|CRIs|Stages|BitmapChannels|RandomChannels|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes
---@param class `T`
---@return T
---@overload fun(class: "Object"): Object
---@overload fun(class: "NamedObj"): NamedObj
---@overload fun(class: "GenericPool"): GenericPool
---@overload fun(class: "GuidObject"): GuidObject
---@overload fun(class: "MAtrick"): MAtrick
---@overload fun(class: "Group"): Group
---@overload fun(class: "Art-Net-Data"): ArtNetData
---@overload fun(class: "Art-Net-Node"): ArtNetNode
---@overload fun(class: "sACN-Node"): sACNNode
---@overload fun(class: "RunningPlaybacks"): RunningPlaybacks
---@overload fun(class: "GeneratorChannels"): GeneratorChannels
---@overload fun(class: "Page-Nr"): PageNr
function Preset:FindParent(class) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "CuePart", property_value: CuePartMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[], override_change_level: ChangeLevel?)
---@overload fun(property_name: "MoveGridCursor", property_value: GridCursorMovementGroup, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MemoryType", property_value: GroupMemoryType, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "InitialMatricks", property_value: MAtrick, override_change_level: ChangeLevel?)
---@overload fun(property_name: "XBlock"|"YBlock"|"ZBlock", property_value: MatricksBlockNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "XGroup"|"YGroup"|"ZGroup", property_value: MatricksGroupNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "X"|"Y"|"Z", property_value: MatricksIndexNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "InvertStyle", property_value: MatricksInvertStyle, override_change_level: ChangeLevel?)
---@overload fun(property_name: "XShift"|"YShift"|"ZShift", property_value: MatricksShiftNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "XShuffle"|"YShuffle"|"ZShuffle", property_value: MatricksShuffleNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "XWings"|"YWings"|"ZWings", property_value: MatricksWingsNone, override_change_level: ChangeLevel?)
---@overload fun(property_name: "XWidth"|"YWidth"|"ZWidth", property_value: MatrixWidthAuto, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PhaserTransform", property_value: PhaserTransformationsShort, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Action", property_value: PresetActionToken, override_change_level: ChangeLevel?)
---@overload fun(property_name: "PresetMode"|"PresetModeInternal", property_value: PresetMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "ShuffleMode", property_value: ShuffleMode, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale, override_change_level: ChangeLevel?)
---@overload fun(property_name: "SelectionData", property_value: SubfixtureBlock, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "InputFilter", property_value: World, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"Active"|"HasAnyMatricksData"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PreserveGridPositions"|"MAgic"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"RecipeTemplate", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"Mode", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"InitialName"|"Type"|"User"|"FeatureGroup"|"Trigger"|"StoredData", property_value: string, override_change_level: ChangeLevel?)
function Preset:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"EmptyLastCooking", property_value: YesNo|boolean)
function Preset:Filter(property_name, property_value) end
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"EmptyLastCooking", property_value: YesNo|boolean)
function Preset:Filter(property_name, property_value) end
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "EmptyLastCooking"|"Enabled", property_value: YesNo|boolean)
function Preset:SetChildrenRecursive(property_name, property_value) end