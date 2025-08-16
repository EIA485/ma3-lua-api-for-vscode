---@meta

---@class Cue: Object A cue in a sequence.
---@field No CueNumber
---@field Release Yes|true
---@field Assert CueAssert
---@field AllowDuplicates Yes|true
---@field TrigType integer
---@field TrigTime TimePropertyValue
---@field TrigSound SoundValues
---@field MIBPreference MibPreferenceLevel
---@field Break Object
local Cue = {
    AllowDuplicates="0",
    TrigType="Go",
    TrigTime="0",
    TrigSound="0",
    MIBPreference="Normal"
}
---@return "Cue"
function Cue:GetClass() end
---@return "Part"
function Cue:GetChildClass() end
---@generic T : Cue
---@param class `T`
---@return boolean
function Cue:IsClass(class) end
---@return Sequence
function Cue:Parent() end
---@param index integer
---@return Part
function Cue:Ptr(index) end
---@return Part[]
function Cue:Children() end
---@return Part?
function Cue:CurrentChild() end
---@return 23
function Cue:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "Name"
---@overload fun(idx: 7): "Note"
---@overload fun(idx: 8): "UserExpanded"
---@overload fun(idx: 9): "FaderEnabled"
---@overload fun(idx: 10): "Owned"
---@overload fun(idx: 11): "Hidden"
---@overload fun(idx: 12): "DependencyExport"
---@overload fun(idx: 13): "MemoryFootprint"
---@overload fun(idx: 14): "No"
---@overload fun(idx: 15): "Release"
---@overload fun(idx: 16): "Assert"
---@overload fun(idx: 17): "AllowDuplicates"
---@overload fun(idx: 18): "TrigType"
---@overload fun(idx: 19): "TrigTime"
---@overload fun(idx: 20): "TrigSound"
---@overload fun(idx: 21): "MIBPreference"
---@overload fun(idx: 22): "Break"
function Cue:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 6|7|12|14|18|19|22): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 15|17): {ExportIgnore: False, EnumCollection: Yes, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 16): {ExportIgnore: False, EnumCollection: CueAssert, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 20): {ExportIgnore: False, EnumCollection: SoundValues, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 21): {ExportIgnore: False, EnumCollection: MibPreferenceLevel, ReadOnly: False, ImportIgnore: False}
function Cue:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|8|15|16|17): "UInt32"
---@overload fun(idx: 6|7|12): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14): "CueNumber"
---@overload fun(idx: 18|20|21): "UInt8"
---@overload fun(idx: 19): "Int64Time"
---@overload fun(idx: 22): "Handle"
function Cue:PropertyType(idx) end
---@overload fun(name: "Assert", role: nil): CueAssert
---@overload fun(name: "No", role: nil): CueNumber
---@overload fun(name: "MIBPreference", role: nil): MibPreferenceLevel
---@overload fun(name: "Break", role: nil): Object
---@overload fun(name: "TrigSound", role: nil): SoundValues
---@overload fun(name: "TrigTime", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Release"|"AllowDuplicates", role: nil): Yes|true
---@overload fun(name: "Index"|"Count"|"MemoryFootprint"|"TrigType", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"No"|"Release"|"Assert"|"AllowDuplicates"|"TrigType"|"TrigTime"|"TrigSound"|"MIBPreference"|"Break", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Part
function Cue:Get(name, role) end
---@generic T : Part
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Part
function Cue:Create(index, class, undo) end
---@generic T : Part
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Part
function Cue:Append(class, undo, count) end
---@generic T : Part
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Part
function Cue:Acquire(class, undo) end
---@generic T : Part
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Part
---@deprecated use "Acquire" instead
function Cue:Aquire(class, undo) end
---@generic T : Part
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Part
function Cue:Insert(index, class, undo, count) end
---@generic T : Part
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Part
function Cue:Find(class, undo) end
---@generic T : IllegalObject|Recipe|Part
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Cue:FindRecursive(name, class) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|PhysicalPropertiesData|ProgUpdateCollect|CRI|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|PinPatch|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MidiSettings|ColorDefCollect|UdpProtocol|PowerConsumption|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|FTFilter|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|ColorSpaceData|FeatureGroup|GridContentFilterItem|Configurations|Sequences|Materials|Quickeys|Patterns|Timers|Tags|Views|RenderQualities|Worlds|Bitmaps|Timecodes|MAtricks|CachedObjectPool|Appearances|Layouts|Cameras|Pages|GelPool|Filters|Generators|Scribbles|Groups|EncoderBarPool|DataPools|Macros|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|OutputStation|RenderQuality|WindowSettings|Stage|Sequence|EncoderBar|Quickey|Selection|World|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|Gamut|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|Emitter|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|Connector|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|TypedNamedObj|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Connectors|Addons|Measurement|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|PhysicalProperties|AddonVariables|ScreenEncoder|FakeValueSensor|Parameters|WindowSettingsCollect|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|FTFilters|GamutCollect|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|Emitters|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacksCollect|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|ColorSpaceCollect|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|CRIGroup|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|MouseCollect|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|Device|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|CRIs|Stages|BitmapChannels|RandomChannels|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes
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
function Cue:FindParent(class) end
---@overload fun(property_name: "Assert", property_value: CueAssert, override_change_level: ChangeLevel?)
---@overload fun(property_name: "No", property_value: CueNumber, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Break", property_value: Object, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TrigSound", property_value: SoundValues, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TrigTime", property_value: TimePropertyValue, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Release"|"AllowDuplicates", property_value: Yes|true, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"TrigType", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport", property_value: string, override_change_level: ChangeLevel?)
function Cue:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "CommandEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Command", property_value: string)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "Part", property_value: integer)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "MIBDelay"|"MIBFade", property_value: MibTiming)
---@overload fun(property_name: "MIBTarget"|"TrackingDistance", property_value: RelCueNumber)
---@overload fun(property_name: "IndivFade"|"Duration"|"IndivDuration"|"IndivDelay", property_value: TimePropertyValue)
---@overload fun(property_name: "CommandEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Sync"|"Morph", property_value: Yes|true)
---@overload fun(property_name: "Part", property_value: integer)
---@overload fun(property_name: "Command", property_value: string)
function Cue:SetChildren(property_name, property_value) end
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Command", property_value: string)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Part", property_value: integer)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "MIBDelay"|"MIBFade", property_value: MibTiming)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MIBTarget"|"TrackingDistance", property_value: RelCueNumber)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "IndivFade"|"Duration"|"IndivDuration"|"IndivDelay", property_value: TimePropertyValue)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"EmptyLastCooking"|"CommandEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Sync"|"Morph", property_value: Yes|true)
---@overload fun(property_name: "Part", property_value: integer)
---@overload fun(property_name: "Command", property_value: string)
function Cue:SetChildrenRecursive(property_name, property_value) end