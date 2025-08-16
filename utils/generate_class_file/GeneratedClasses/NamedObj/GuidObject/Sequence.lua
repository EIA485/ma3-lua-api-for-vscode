---@meta

---@class Sequence: GuidObject A sequence is a collection of cues and prests.
---@field CurrentCue Cue
---@field LoadedCue Cue
---@field Type string
---@field CueNo string
---@field CueName string
---@field User string
---@field Action SequenceActionToken
---@field TimingGoto TimeDefault
---@field TimingGoBack TimeDefault
---@field TimingGoFast TimeDefault
---@field TimingGoBackFast TimeDefault
local Sequence = {
    TimingGoto="Default",
    TimingGoBack="Default",
    TimingGoFast="Default",
    TimingGoBackFast="Default"
}
---@return "Sequence"
function Sequence:GetClass() end
---@return "Cue"
function Sequence:GetChildClass() end
---@generic T : Sequence
---@param class `T`
---@return boolean
function Sequence:IsClass(class) end
---@return Sequences
function Sequence:Parent() end
---@param index integer
---@return Cue
function Sequence:Ptr(index) end
---@return Cue[]
function Sequence:Children() end
---@return Cue?
function Sequence:CurrentChild() end
---@return 31
function Sequence:PropertyCount() end
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
---@overload fun(idx: 20): "CurrentCue"
---@overload fun(idx: 21): "LoadedCue"
---@overload fun(idx: 22): "Type"
---@overload fun(idx: 23): "CueNo"
---@overload fun(idx: 24): "CueName"
---@overload fun(idx: 25): "User"
---@overload fun(idx: 26): "Action"
---@overload fun(idx: 27): "TimingGoto"
---@overload fun(idx: 28): "TimingGoBack"
---@overload fun(idx: 29): "TimingGoFast"
---@overload fun(idx: 30): "TimingGoBackFast"
function Sequence:PropertyName(idx) end
---@overload fun(idx: 0|1|2): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|11): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|22|23|24|25): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|12|14|15|16|18|19): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 8): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 9|10): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 13|17): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 20|21): {ExportIgnore: True, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 26): {ExportIgnore: False, EnumCollection: SequenceActionToken, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 27|28|29|30): {ExportIgnore: False, EnumCollection: TimeDefault, ReadOnly: False, ImportIgnore: False}
function Sequence:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|8): "UInt32"
---@overload fun(idx: 7|12|17|18|22|23|24|25): "String"
---@overload fun(idx: 9|10): "Bool"
---@overload fun(idx: 11): "UInt64"
---@overload fun(idx: 13): "Int64"
---@overload fun(idx: 14|19|26): "Custom"
---@overload fun(idx: 15|16|20|21): "Handle"
---@overload fun(idx: 27|28|29|30): "Int64Time"
function Sequence:PropertyType(idx) end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "CurrentCue"|"LoadedCue", role: nil): Cue
---@overload fun(name: "Guid", role: nil): Key128
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Action", role: nil): SequenceActionToken
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", role: nil): TimeDefault
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden", role: nil): YesNo|boolean
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"DependencyExport"|"NameAndApp"|"Note"|"Type"|"CueNo"|"CueName"|"User", role: nil): string
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"CurrentCue"|"LoadedCue"|"Type"|"CueNo"|"CueName"|"User"|"Action"|"TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Cue
function Sequence:Get(name, role) end
---@generic T : Cue
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Cue
function Sequence:Create(index, class, undo) end
---@generic T : Cue
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Cue
function Sequence:Append(class, undo, count) end
---@generic T : Cue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Cue
function Sequence:Acquire(class, undo) end
---@generic T : Cue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Cue
---@deprecated use "Acquire" instead
function Sequence:Aquire(class, undo) end
---@generic T : Cue
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Cue
function Sequence:Insert(index, class, undo, count) end
---@generic T : Cue
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Cue
function Sequence:Find(class, undo) end
---@generic T : IllegalObject|Cue|Recipe|Part
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Sequence:FindRecursive(name, class) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|PhysicalPropertiesData|ProgUpdateCollect|CRI|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|PinPatch|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MidiSettings|ColorDefCollect|UdpProtocol|PowerConsumption|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|FTFilter|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|ColorSpaceData|FeatureGroup|GridContentFilterItem|Configurations|Sequences|Materials|Quickeys|Patterns|Timers|Tags|Views|RenderQualities|Worlds|Bitmaps|Timecodes|MAtricks|CachedObjectPool|Appearances|Layouts|Cameras|Pages|GelPool|Filters|Generators|Scribbles|Groups|EncoderBarPool|DataPools|Macros|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|OutputStation|RenderQuality|WindowSettings|Stage|EncoderBar|Quickey|Selection|World|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|Gamut|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|Emitter|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|Connector|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|TypedNamedObj|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Connectors|Addons|Measurement|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|PhysicalProperties|AddonVariables|ScreenEncoder|FakeValueSensor|Parameters|WindowSettingsCollect|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|FTFilters|GamutCollect|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|Emitters|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacksCollect|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|ColorSpaceCollect|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|CRIGroup|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|MouseCollect|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|Device|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|CRIs|Stages|BitmapChannels|RandomChannels|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes
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
function Sequence:FindParent(class) end
---@overload fun(property_name: "Appearance", property_value: Appearance, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Guid", property_value: Key128, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Scribble", property_value: Scribble, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Action", property_value: SequenceActionToken, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Tags", property_value: TagMap, override_change_level: ChangeLevel?)
---@overload fun(property_name: "TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", property_value: TimeDefault, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"DependencyExport"|"Note"|"Type"|"CueNo"|"CueName"|"User", property_value: string, override_change_level: ChangeLevel?)
function Sequence:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "No", property_value: CueNumber)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel)
---@overload fun(property_name: "Break", property_value: Object)
---@overload fun(property_name: "Assert", property_value: CueAssert)
---@overload fun(property_name: "TrigType", property_value: integer)
---@overload fun(property_name: "TrigTime", property_value: TimePropertyValue)
---@overload fun(property_name: "TrigSound", property_value: SoundValues)
---@overload fun(property_name: "Assert", property_value: CueAssert)
---@overload fun(property_name: "No", property_value: CueNumber)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel)
---@overload fun(property_name: "Break", property_value: Object)
---@overload fun(property_name: "TrigSound", property_value: SoundValues)
---@overload fun(property_name: "TrigTime", property_value: TimePropertyValue)
---@overload fun(property_name: "Release"|"AllowDuplicates", property_value: Yes|true)
---@overload fun(property_name: "TrigType", property_value: integer)
function Sequence:SetChildren(property_name, property_value) end
---@overload fun(property_name: "No", property_value: CueNumber)
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Assert", property_value: CueAssert)
---@overload fun(property_name: "Command", property_value: string)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "TrigSound", property_value: SoundValues)
---@overload fun(property_name: "Assert", property_value: CueAssert)
---@overload fun(property_name: "No", property_value: CueNumber)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel)
---@overload fun(property_name: "MIBDelay"|"MIBFade", property_value: MibTiming)
---@overload fun(property_name: "Values"|"Break", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MIBTarget"|"TrackingDistance", property_value: RelCueNumber)
---@overload fun(property_name: "TrigSound", property_value: SoundValues)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "IndivDelay"|"IndivDuration"|"Duration"|"TrigTime"|"IndivFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"EmptyLastCooking"|"CommandEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Sync"|"Morph"|"AllowDuplicates"|"Release", property_value: Yes|true)
---@overload fun(property_name: "TrigType"|"Part", property_value: integer)
---@overload fun(property_name: "Command", property_value: string)
function Sequence:SetChildrenRecursive(property_name, property_value) end