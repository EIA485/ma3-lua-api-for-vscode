---@meta

---@class Geometry: TypedNamedObj A base class for all geometry types.
---@field Model Model
---@field PosX LengthPropertyValue
---@field PosY LengthPropertyValue
---@field PosZ LengthPropertyValue
---@field RotX number
---@field RotY number
---@field RotZ number
---@field RotDirect Math.TQuaternion<float>
---@field GridAuto integer
---@field GridSwapXY integer
---@field GridInvX integer
---@field GridInvY integer
---@field GridInvZ integer
---@field GridX integer
---@field GridY integer
---@field GridZ integer
---@field MergeGeometries integer
local Geometry = {
    PosX="0.000000",
    PosY="0.000000",
    PosZ="0.000000",
    RotX="0",
    RotY="0",
    RotZ="0",
    GridAuto="Yes",
    GridSwapXY="No",
    GridInvX="No",
    GridInvY="No",
    GridInvZ="No",
    MergeGeometries="Yes"
}
---@return "Geometry"
function Geometry:GetClass() end
---@return "Geometry"
function Geometry:GetChildClass() end
---@return Geometry
function Geometry:Parent() end
---@param index integer
---@return Geometry
function Geometry:Ptr(index) end
---@return Geometry[]
function Geometry:Children() end
---@return Geometry?
function Geometry:CurrentChild() end
---@overload fun(name: "PosX"|"PosY"|"PosZ", role: nil): LengthPropertyValue
---@overload fun(name: "RotDirect", role: nil): Math.TQuaternion<float>
---@overload fun(name: "Model", role: nil): Model
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "Type"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Model"|"PosX"|"PosY"|"PosZ"|"RotX"|"RotY"|"RotZ"|"RotDirect"|"GridAuto"|"GridSwapXY"|"GridInvX"|"GridInvY"|"GridInvZ"|"GridX"|"GridY"|"GridZ"|"MergeGeometries"|"Type"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Geometry
function Geometry:Get(name, role) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
function Geometry:Create(index, class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function Geometry:Append(class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
function Geometry:Acquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
---@deprecated use "Acquire" instead
function Geometry:Aquire(class, undo) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
function Geometry:Insert(index, class, undo, count) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@param undo Undo?
---@return T
function Geometry:Find(class, undo) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|Geometries|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|ProgUpdateCollect|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|Fixtures|MidiSettings|ColorDefCollect|UdpProtocol|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|Programmer|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|FeatureGroup|GridContentFilterItem|GenericPool|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|Space|OutputStation|RenderQuality|WindowSettings|Stage|Sequence|EncoderBar|Quickey|MAtrick|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|PresetPools|ProgPart|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|ChannelSet|ChannelFunction|StageElement|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|MonitorCollect|GraphicsRoot|Resolution|Monitor|ShaderProgram|Font|Texture|ShaderProgramCollect|TextureCollect|DisplayCollect|Shader|Textures|SampleTableView|Toolbar|UiFader|NotificationTitle|ProgressBar|DCRemoteInfo|UIGridCellBase|ScrollBar|UILayoutGrid|EncoderBarSlot|Splitter|LinearResizer|UIObjectFake|PropertyControl|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|LogoButton|UIGridButton|DeleteWindowButton|IndicatorButton|WarningInfoButton|EjectButton|DimmerWheelButton|CloseButton|SoundPoolTitleButton|FilterPoolTitleButton|TimecodePoolTitleButton|TimerPoolTitleButton|VideoPoolTitleButton|PluginPoolTitleButton|GelPoolTitleButton|TimecodeSlotPoolTitleButton|SequencePoolTitleButton|MacroPoolTitleButton|AllPoolTitleButton|ShowMoreButton|MouseButton|MessageCenterButton|TreeExpandButton|AgendaDayButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|SelectButton|RevertButton|PlaceHolderBase|LineEdit|ColorView|NotificationIcon|SensorView|DialogContainer|ScrollableItemList|ResizeCorner|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|NotificationText|TimecodeSlotInfo|TextView|TouchConfigurator|InfoNotesLabel|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|MainDialogDummy|EditorSubCategoryButton|CommandLineOutput|InfoNotesLevel|AllExecContent|TreeViewRows|SoundLevelView|PerformanceView|ColorTestView|EditorCategoryButton|InfoNotesGridScroller|TouchTarget|EditorBase|BladeViewButton|OutputTest|BaseSymbol|ColorPickBase|TreeViewRow|SignalView|ShaperTestView|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Addons|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|IllegalObject|AddonVariables|ScreenEncoder|FakeValueSensor|Notifications|Parameters|WindowSettingsCollect|SmartViewPool|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacks|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|Cue|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|GestureManager|Keyboard|Touch|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|Stages|GeneratorChannels|FTPresetChannel|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|PhysicalDescriptions|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|RDMAbsentNotification|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|Spaces|MultiPatchBase|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes|MediaServerCamera|GeometryDisplay|MediaServerMaster|GeometryReference|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "Object"): Object
---@overload fun(name: string, class: "NamedObj"): NamedObj
---@overload fun(name: string, class: "GuidObject"): GuidObject
---@overload fun(name: string, class: "Art-Net-Data"): ArtNetData
---@overload fun(name: string, class: "Art-Net-Node"): ArtNetNode
---@overload fun(name: string, class: "sACN-Node"): sACNNode
---@overload fun(name: string, class: "TypedNamedObj"): TypedNamedObj
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "UIObject"): UIObject
---@overload fun(name: string, class: "Button"): Button
---@overload fun(name: string, class: "TitleButton"): TitleButton
---@overload fun(name: string, class: "PoolTitleButton"): PoolTitleButton
---@overload fun(name: string, class: "Measurement"): Measurement
---@overload fun(name: string, class: "Device"): Device
---@overload fun(name: string, class: "Page-Nr"): PageNr
---@overload fun(name: string, class: nil): Object
function Geometry:FindRecursive(name, class) end
---@generic T : MediaServerCamera|GeometryDisplay|MediaServerMaster|Beam|FilterGobo|Laser|Inventory|FilterShaper|FilterColor|FilterBeam|Support|Axis|MediaServerLayer|Magnet|Structure|WiringObject
---@param class `T`
---@return T
function Geometry:FindParent(class) end