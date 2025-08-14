---@meta

---@class Texture: GraphicsObject Describes an image that is loaded into a texture atlas (parent object of type TextureContainer)
---@field Filename string
---@field TextureRect {left: number, right: number, top: number, bottom: number}
---@field TextureIndex integer
local Texture = {}
---@return "Texture"
function Texture:GetClass() end
---@return "GraphicsObject"
function Texture:GetChildClass() end
---@return Textures
function Texture:Parent() end
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "TextureIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Filename"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "TextureRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "Filename"|"TextureRect"|"TextureIndex"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Texture:Get(name, role) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?): GraphicsObject
function Texture:Create(index, class, undo) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?, count: integer?): GraphicsObject
function Texture:Append(class, undo, count) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
function Texture:Acquire(class, undo) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
---@deprecated use "Acquire" instead
function Texture:Aquire(class, undo) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GraphicsObject
function Texture:Insert(index, class, undo, count) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
function Texture:Find(class, undo) end
---@generic T : SampleTableView|Toolbar|UiFader|NotificationTitle|ProgressBar|DCRemoteInfo|UIGridCellBase|ScrollBar|UIGridFilterBlock|ScrollContainer|NotificationsWrapper|NotificationsGridScroller|Dialog|AutoLayout|SplitView|ScrollContainerPageBase|FrameBufferObject|Navigator|TitleBar|DialogFrame|PropertyBox|Overlay|TextEdit|ObjectProperties|VirtualKeyboard|Bar|GlWindowBase|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|AllExecDisplay|DialogTrackpad|PoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|ExecutorSection|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|UiScreen|BladeView|MainDialogContent|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|InfoNotesWrapper|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|LinearResizer|UIObjectFake|PropertyControl|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|LogoButton|UIGridButton|DeleteWindowButton|IndicatorButton|WarningInfoButton|EjectButton|DimmerWheelButton|CloseButton|SoundPoolTitleButton|FilterPoolTitleButton|TimecodePoolTitleButton|TimerPoolTitleButton|VideoPoolTitleButton|PluginPoolTitleButton|GelPoolTitleButton|TimecodeSlotPoolTitleButton|SequencePoolTitleButton|MacroPoolTitleButton|AllPoolTitleButton|ShowMoreButton|MouseButton|MessageCenterButton|TreeExpandButton|AgendaDayButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|SelectButton|RevertButton|PlaceHolderBase|LineEdit|ColorView|NotificationIcon|SensorView|DialogContainer|ScrollableItemList|ResizeCorner|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|NotificationText|TimecodeSlotInfo|TextView|TouchConfigurator|InfoNotesLabel|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|MainDialogDummy|EditorSubCategoryButton|CommandLineOutput|InfoNotesLevel|AllExecContent|TreeViewRows|SoundLevelView|PerformanceView|ColorTestView|EditorCategoryButton|InfoNotesGridScroller|TouchTarget|EditorBase|BladeViewButton|OutputTest|BaseSymbol|ColorPickBase|TreeViewRow|SignalView|ShaperTestView
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "UIObject"): UIObject
---@overload fun(name: string, class: "UILayoutGrid"): UILayoutGrid
---@overload fun(name: string, class: "Drawable"): Drawable
---@overload fun(name: string, class: "Button"): Button
---@overload fun(name: string, class: "TitleButton"): TitleButton
---@overload fun(name: string, class: "PoolTitleButton"): PoolTitleButton
---@overload fun(name: string, class: nil): Object
function Texture:FindRecursive(name, class) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|PhysicalPropertiesData|ProgUpdateCollect|CRI|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|PinPatch|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MidiSettings|ColorDefCollect|UdpProtocol|PowerConsumption|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|FTFilter|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|ColorSpaceData|FeatureGroup|GridContentFilterItem|Configurations|Materials|Quickeys|Patterns|Timers|Tags|Views|RenderQualities|Worlds|Bitmaps|Timecodes|MAtricks|CachedObjectPool|Appearances|Layouts|Cameras|Pages|GelPool|Filters|Generators|Scribbles|Groups|EncoderBarPool|DataPools|Macros|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|OutputStation|RenderQuality|WindowSettings|Stage|EncoderBar|Quickey|Selection|World|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|Gamut|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|Emitter|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|Connector|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|TypedNamedObj|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Connectors|Addons|Measurement|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|PhysicalProperties|AddonVariables|ScreenEncoder|FakeValueSensor|Parameters|WindowSettingsCollect|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|FTFilters|GamutCollect|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|Emitters|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacksCollect|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|ColorSpaceCollect|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|CRIGroup|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|MouseCollect|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|Device|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|CRIs|Stages|BitmapChannels|RandomChannels|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes|GraphicsRoot|TextureCollect|ContentManager|Textures
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
---@overload fun(class: "Textures"): Textures
function Texture:FindParent(class) end