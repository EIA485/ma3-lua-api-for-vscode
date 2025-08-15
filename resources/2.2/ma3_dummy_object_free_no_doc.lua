---@meta
--- Ma3 API version: 2.2

-- Not documented Object free definition
-- ========================================

---@alias AbsoluteAddress integer

---@param queueName string
---@return boolean success
function CloseMessageQueue(queueName) end

---@return integer flag
function ColMeasureDeviceDarkCalibrate() end

---@return table values
function ColMeasureDeviceDoMeasurement() end

---@param sourcePath string
---@param destinationPath string
---@return boolean result
function CopyFile(sourcePath, destinationPath) end

---@param path string
---@return boolean result
function CreateDirectoryRecursive(path) end

---@return string devmode3d
function DevMode3d() end

---@param patch Object
---@param startingAddress integer
---@param footprint integer
---@return AbsoluteAddress absoluteAddress
function FindBestDMXPatchAddr(patch, startingAddress, footprint) end

---@param handle Object? @Optional
function FindBestFocus(handle) end

---@param backwards boolean? @Optional @default: false
---@param reason integer? @Optional @Focus::Reason, default: UserTabKey
function FindNextFocus(backwards, reason) end

---@param handle Attribute|string #either attribute name or an attribute object
---@param attribute Object
---@return integer? columnId
function GetAttributeColumnId(handle, attribute) end

---@param address string
---@return Object handle
function GetObject(address) end

---@param uiChannelIndex integer
---@param phaserOnly boolean
---@return table
function GetProgPhaser(uiChannelIndex, phaserOnly) end

---@param uiChannelIndex integer
---@param step integer
---@return table
function GetProgPhaserValue(uiChannelIndex, step) end

-- weird def is to dodge fake classnames since the real ones contain invalid chars -

---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|Geometries|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|ProgUpdateCollect|ViewButton|Layers|MVRFileCollect|Models|SequenceSelection|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|Fixtures|MidiSettings|ColorDefCollect|UdpProtocol|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|Programmer|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|FeatureGroup|GridContentFilterItem|GenericPool|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|Space|OutputStation|RenderQuality|WindowSettings|Stage|Sequence|EncoderBar|Quickey|MAtrick|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|PresetPools|ProgPart|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|ChannelSet|ChannelFunction|StageElement|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|MonitorCollect|GraphicsRoot|Resolution|Monitor|ShaderProgram|Font|Texture|ShaderProgramCollect|TextureCollect|DisplayCollect|Shader|Textures|SampleTableView|Toolbar|UiFader|NotificationTitle|ProgressBar|DCRemoteInfo|UIGridCellBase|ScrollBar|UILayoutGrid|EncoderBarSlot|Splitter|LinearResizer|UIObjectFake|PropertyControl|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|LogoButton|UIGridButton|DeleteWindowButton|IndicatorButton|WarningInfoButton|EjectButton|DimmerWheelButton|CloseButton|SoundPoolTitleButton|FilterPoolTitleButton|TimecodePoolTitleButton|TimerPoolTitleButton|VideoPoolTitleButton|PluginPoolTitleButton|GelPoolTitleButton|TimecodeSlotPoolTitleButton|SequencePoolTitleButton|MacroPoolTitleButton|AllPoolTitleButton|ShowMoreButton|MouseButton|MessageCenterButton|TreeExpandButton|AgendaDayButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|SelectButton|RevertButton|PlaceHolderBase|LineEdit|ColorView|NotificationIcon|SensorView|DialogContainer|ScrollableItemList|ResizeCorner|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|NotificationText|TimecodeSlotInfo|TextView|TouchConfigurator|InfoNotesLabel|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|MainDialogDummy|EditorSubCategoryButton|CommandLineOutput|InfoNotesLevel|AllExecContent|TreeViewRows|SoundLevelView|PerformanceView|ColorTestView|EditorCategoryButton|InfoNotesGridScroller|TouchTarget|EditorBase|BladeViewButton|OutputTest|BaseSymbol|ColorPickBase|TreeViewRow|SignalView|ShaperTestView|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Addons|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|IllegalObject|AddonVariables|ScreenEncoder|FakeValueSensor|Notifications|Parameters|WindowSettingsCollect|SmartViewPool|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacks|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|Cue|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|GestureManager|Keyboard|Touch|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|Stages|GeneratorChannels|FTPresetChannel|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|PhysicalDescriptions|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|RDMAbsentNotification|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|Spaces|MultiPatchBase|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes
---@param handle Object|`T`|"NamedObj"|"GuidObject"|"Art-Net-Data"|"Art-Net-Node"|"sACN-Node"|"TypedNamedObj"|"GraphicsObject"|"UIObject"|"Button"|"TitleButton"|"PoolTitleButton"|"Measurement"|"Device"|"Page-Nr"
---@param propertyName string
---@return integer? columnId
function GetPropertyColumnId(handle, propertyName) end

---@return integer wingID, boolean isExtension
function GetRemoteVideoInfo() end

---@return integer internalLineNumber
function GetTextScreenLine() end

---@param startingInternalLineNumber integer? @Optional
---@return integer lineCount
function GetTextScreenLineCount(startingInternalLineNumber) end

---@param uiChannelIndex integer|Fixture
---@param attributeIndex integer|string
---@return {special_index:number, special:number, flags:{is_dimmer:number, master_reaction:number, snap:number, encoder_invert:number, universal:number, dmx_invert:number, use_special_conversion:number}, ui_index: number, logical_channel:LogicalChannel, sf_index:number, rt_index:number, attr_index:number} uiChannelDescriptor
function GetUIChannel(uiChannelIndex, attributeIndex) end

---@param displayIndex integer
---@param type string @'press', 'char', 'release'
---@param charOrKeycode string? @Optional
---@param shift boolean? @Optional
---@param ctrl boolean? @Optional
---@param alt boolean? @Optional
---@param numlock boolean? @Optional
function Keyboard(displayIndex, type, charOrKeycode, shift, ctrl, alt, numlock) end

---@param executor Exec
function LoadExecConfig(executor) end

---@param displayIndex integer
---@param type string @'press', 'move', 'release'
---@param buttonOrAbsX string|integer @'Left', 'Middle', 'Right' for 'press'/'release' or absolute X coordinate
---@param absY integer? @Optional
function Mouse(displayIndex, type, buttonOrAbsX, absY) end

---@param queueName string
---@return boolean success
function OpenMessageQueue(queueName) end

---@return Object handle
function OverallDeviceCertificate() end

---@param pluginName string? @Optional
---@return Variables? pluginPreferences
function PluginVars(pluginName) end

---@param options table
---@return integer selectedIndex, string selectedValue
function PopupInput(options) end

---@param handle Object
---@param changeLevelThreshold integer? @Optional
---@return boolean
function PrepareWaitObjectChange(handle, changeLevelThreshold) end

---@param handle Object
function RefreshLibrary(handle) end

---@param ip string
---@param command string
---@return boolean success
function RemoteCommand(ip, command) end

---@param samplingPoints table
---@return table|boolean result, string? resultText @Optional
function SampleOutput(samplingPoints) end

---@param executor Exec
function SaveExecConfig(executor) end

---@return Drive handle
function SelectedDrive() end

---@return integer min, integer max, integer index, integer block, integer group
function SelectionComponentX() end

---@return integer min, integer max, integer index, integer block, integer group
function SelectionComponentY() end

---@return integer min, integer max, integer index, integer block, integer group
function SelectionComponentZ() end

---@param context Object
function SelectionNotifyBegin(context) end

---@param context Object
function SelectionNotifyEnd(context) end

---@param objectToNotify Object
function SelectionNotifyObject(objectToNotify) end

---@param ipOrStation string
---@param channelName string
---@param data table
---@return boolean success
function SendLuaMessage(ipOrStation, channelName, data) end

---@param colorModel string @'RGB', 'xyY', 'Lab', 'XYZ', 'HSB'
---@param tripel1 number
---@param tripel2 number
---@param tripel3 number
---@param brightness number
---@param quality number
---@param constBrightness boolean
---@return integer flag
function SetColor(colorModel, tripel1, tripel2, tripel3, brightness, quality, constBrightness) end

---@param uiChannelIndex integer
---@param options table
function SetProgPhaser(uiChannelIndex, options) end

---@param uiChannelIndex integer
---@param step integer
---@param options table
function SetProgPhaserValue(uiChannelIndex, step, options) end

function SyncFS() end

---@param expectations table
---@return boolean success, string resultText
function TestPlaybackOutput(expectations) end

---@param expectations table
---@return boolean success, string resultText
function TestPlaybackOutputSteps(expectations) end

---@param displayIndex integer
---@param type string @'press', 'move', 'release'
---@param touchId integer
---@param absX integer
---@param absY integer
function Touch(displayIndex, type, touchId, absX, absY) end

---@param secondsToWait number? @Optional
---@return UIObject? modalHandle
function WaitModal(secondsToWait) end

---@param handle UIObject @handle to UIObject
---@param secondsToWait number? @Optional
---@return true? @true on success, nil on timeout
function WaitObjectDelete(handle, secondsToWait) end

---@param fixture Fixture
---@return Fixture
function NextDmxModeFixture(fixture) end