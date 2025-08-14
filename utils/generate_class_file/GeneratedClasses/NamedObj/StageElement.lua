---@meta

---@class StageElement: NamedObj
---@field FollowStageDimensions integer
---@field P1X number
---@field P1Y number
---@field P1Z number
---@field P2X number
---@field P2Y number
---@field P2Z number
---@field P3X number
---@field P3Y number
---@field P3Z number
---@field P4X number
---@field P4Y number
---@field P4Z number
local StageElement = {
    FollowStageDimensions="1",
    P1X="0",
    P1Y="0",
    P1Z="0",
    P2X="0",
    P2Y="0",
    P2Z="0",
    P3X="0",
    P3Y="0",
    P3Z="0",
    P4X="0",
    P4Y="0",
    P4Z="0"
}
---@return "StageElement"
function StageElement:GetClass() end
---@return "IllegalObject"
function StageElement:GetChildClass() end
---@return Space
function StageElement:Parent() end
---@param index integer
---@return IllegalObject
function StageElement:Ptr(index) end
---@return IllegalObject[]
function StageElement:Children() end
---@return IllegalObject?
function StageElement:CurrentChild() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "FollowStageDimensions"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y"|"P3Z"|"P4X"|"P4Y"|"P4Z", role: nil): number
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "FollowStageDimensions"|"P1X"|"P1Y"|"P1Z"|"P2X"|"P2Y"|"P2Z"|"P3X"|"P3Y"|"P3Z"|"P4X"|"P4Y"|"P4Z"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): IllegalObject
function StageElement:Get(name, role) end
---@generic T : IllegalObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): IllegalObject
function StageElement:Create(index, class, undo) end
---@generic T : IllegalObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): IllegalObject
function StageElement:Append(class, undo, count) end
---@generic T : IllegalObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IllegalObject
function StageElement:Acquire(class, undo) end
---@generic T : IllegalObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IllegalObject
---@deprecated use "Acquire" instead
function StageElement:Aquire(class, undo) end
---@generic T : IllegalObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IllegalObject
function StageElement:Insert(index, class, undo, count) end
---@generic T : IllegalObject
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): IllegalObject
function StageElement:Find(class, undo) end
---@generic T : IllegalObject
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function StageElement:FindRecursive(name, class) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|PhysicalPropertiesData|ProgUpdateCollect|CRI|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|PinPatch|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MidiSettings|ColorDefCollect|UdpProtocol|PowerConsumption|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|FTFilter|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|ColorSpaceData|FeatureGroup|GridContentFilterItem|Configurations|Materials|Quickeys|Patterns|Timers|Tags|Views|RenderQualities|Worlds|Bitmaps|Timecodes|MAtricks|CachedObjectPool|Appearances|Layouts|Cameras|Pages|GelPool|Filters|Generators|Scribbles|Groups|EncoderBarPool|DataPools|Macros|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|Space|OutputStation|RenderQuality|WindowSettings|Stage|EncoderBar|Quickey|Selection|World|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|Gamut|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|Emitter|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|Connector|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|TypedNamedObj|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Connectors|Addons|Measurement|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|PhysicalProperties|AddonVariables|ScreenEncoder|FakeValueSensor|Parameters|WindowSettingsCollect|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|FTFilters|GamutCollect|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|Emitters|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacksCollect|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|ColorSpaceCollect|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|CRIGroup|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|MouseCollect|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|Device|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|CRIs|Stages|BitmapChannels|RandomChannels|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|Spaces|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes
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
function StageElement:FindParent(class) end