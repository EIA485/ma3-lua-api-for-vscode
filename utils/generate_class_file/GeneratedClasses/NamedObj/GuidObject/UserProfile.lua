---@meta

---@class UserProfile: GuidObject Contains all user related data and settings.
---@field Scribble Scribble
---@field Appearance Appearance
---@field DMXReadout DMXReadoutMode
---@field NormalValue DMXPropertyValue
---@field WheelResolution DimmerWheelResolution
---@field WheelMode WheelMode
---@field VKExpanded integer Defines if virtual keyboard is expanded
---@field SEExpanded integer Defines if scribble editor is expanded
---@field NEExpanded integer Defines if notes editor is expanded
---@field TextInputAuxEditor TextInputEditor
---@field TextInputSmallScreenTab TextInputEditor
---@field ScribbleColor UColor
---@field ScribbleWidthScale integer
---@field SelectedDataPool Pool
---@field DefaultToken integer
---@field EncoderLinkValues EncoderLink
---@field EncoderLinkTiming EncoderLink
---@field EncoderLinkPhaser EncoderLink
---@field KnobUIStyle integer
---@field EncoderUIStyle integer
---@field ActiveOnly integer
---@field MultiStepOnly integer
---@field PreciseEdit integer
---@field ScreenEncoder integer
---@field TimeKeyTarget integer
---@field ShowUserEncoder integer
---@field TCSlot integer
---@field SelectedPage integer
---@field ValueReadout ValueReadoutMode
---@field SpeedReadout SpeedReadoutMode
---@field PresetReadout PresetReadoutMode
---@field Layer ProgLayer
---@field ProgrammingLayer ProgLayer
---@field LastValueLayer ProgLayer
---@field LastPhaserLayer ProgLayer
---@field LastStepLayer ProgLayer
---@field ProgrammingLayerGroup ProgLayer
---@field HelpPopupZoomFactor integer
---@field OverlayFade integer
---@field TimeReadout TimeDisplayFormat
---@field FrameReadout integer
---@field ColorReadout ColorDisplayMode
---@field OopsViews integer
---@field OopsProgrammer integer
---@field OopsSelection integer
---@field CreateOops integer
---@field OopsConfirmation integer
---@field MirrorSpecialExecutorPages integer
---@field ShowAppearanceInCueInput integer
---@field ShowSettingsInEditors integer
---@field Users User[]
---@field Cmdlines Cmdline[]
---@field LastOpenRemotesTab integer
---@field LastOpenDmxProtocolsTab integer
---@field ProgUpdateCueFilter ProgUpdateCueMode
---@field SingleDigitInput integer
---@field ResolveExecutorAssignments integer
---@field PreviewVariables integer
---@field DefaultGroupMasterMode integer
---@field ExecConfigSequence Configuration
---@field ExecConfigMacro Configuration
---@field ExecConfigView Configuration
---@field ExecConfigWorld Configuration
---@field ExecConfigGroup Configuration
---@field ExecConfigPreset Configuration
---@field ExecConfigPlugin Configuration
---@field ExecConfigUser Configuration
---@field ExecConfigSound Configuration
---@field ExecConfigScreenConfig Configuration
---@field ExecConfigTimer Configuration
---@field ExecConfigMaster Configuration
---@field ExecConfigSpeedMaster Configuration
---@field ExecConfigPlaybackMaster Configuration
---@field ShowConnectors integer
---@field LoadFixtureLibraryMA integer
---@field LoadFixtureLibraryUser integer
---@field LoadFixtureLibraryShare integer
---@field DmxTesterAddressMode integer
---@field DmxTesterRetainMode integer
---@field DmxTesterMode DmxTesterMode
---@field DmxTesterTestValue integer
---@field MoveGridCursor GridCursorMovement
---@field EncoderLinkStatusValues EncoderLink
---@field EncoderLinkStatusTiming EncoderLink
---@field EncoderLinkStatusPhaser EncoderLink
---@field EncoderLinkStatusPhaserBar EncoderLink
---@field ScreenshotEnabled integer
---@field UpdateMenuPresetOptionsExpanded integer
---@field UpdateMenuCueOptionsExpanded integer
---@field NotificationsEnabled integer
---@field NotificationType NotificationType
---@field SystemFpsLimit integer
local UserProfile = {
    DMXReadout="Dec8",
    NormalValue="000000",
    WheelResolution="Normal",
    WheelMode="Additive",
    VKExpanded="0",
    SEExpanded="0",
    NEExpanded="0",
    TextInputAuxEditor="None",
    TextInputSmallScreenTab="None",
    ScribbleColor="0xFFFFFFFF",
    ScribbleWidthScale="0",
    EncoderLinkValues="Single",
    EncoderLinkTiming="Single",
    EncoderLinkPhaser="Single",
    KnobUIStyle="Rotation",
    EncoderUIStyle="Rotation",
    ActiveOnly="0",
    MultiStepOnly="0",
    PreciseEdit="1",
    ScreenEncoder="0",
    TimeKeyTarget="Cue",
    ShowUserEncoder="Default",
    TCSlot="1",
    SelectedPage="0",
    ValueReadout="Percent",
    SpeedReadout="BPM",
    PresetReadout="Preset",
    Layer="Absolute",
    OverlayFade="250",
    TimeReadout="Dec8",
    FrameReadout="0",
    ColorReadout="RGB",
    OopsViews="1",
    OopsProgrammer="1",
    OopsSelection="1",
    CreateOops="1",
    OopsConfirmation="Never",
    MirrorSpecialExecutorPages="Yes",
    ShowAppearanceInCueInput="No",
    ShowSettingsInEditors="No",
    LastOpenRemotesTab="0",
    LastOpenDmxProtocolsTab="0",
    ProgUpdateCueFilter="All",
    SingleDigitInput="0",
    ResolveExecutorAssignments="0",
    PreviewVariables="0",
    DefaultGroupMasterMode="1",
    ExecConfigSequence="Default.Configurations.DefaultSequence",
    ExecConfigMacro="Default.Configurations.DefaultMacro",
    ExecConfigView="Default.Configurations.DefaultView",
    ExecConfigWorld="Default.Configurations.DefaultWorld",
    ExecConfigGroup="Default.Configurations.DefaultGroup",
    ExecConfigPreset="Default.Configurations.DefaultPreset",
    ExecConfigPlugin="Default.Configurations.DefaultPlugin",
    ExecConfigUser="Default.Configurations.DefaultUser",
    ExecConfigSound="Default.Configurations.DefaultSound",
    ExecConfigScreenConfig="Default.Configurations.DefaultScreenConfig",
    ExecConfigTimer="Default.Configurations.DefaultTimer",
    ExecConfigMaster="Default.Configurations.DefaultMaster",
    ExecConfigSpeedMaster="Default.Configurations.DefaultSpeedMaster",
    ExecConfigPlaybackMaster="Default.Configurations.DefaultPlaybackMaster",
    ShowConnectors="Yes",
    LoadFixtureLibraryMA="Yes",
    LoadFixtureLibraryUser="Yes",
    LoadFixtureLibraryShare="No",
    DmxTesterAddressMode="Universe",
    DmxTesterRetainMode="Release",
    DmxTesterMode="All",
    DmxTesterTestValue="-1",
    UpdateMenuPresetOptionsExpanded="No",
    UpdateMenuCueOptionsExpanded="No",
    NotificationsEnabled="Yes",
    SystemFpsLimit="Yes"
}
---@return "UserProfile"
function UserProfile:GetClass() end
---@return "Object"
function UserProfile:GetChildClass() end
---@return UserProfiles
function UserProfile:Parent() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Cmdlines", role: nil): Cmdline[]
---@overload fun(name: "ColorReadout", role: nil): ColorDisplayMode
---@overload fun(name: "ExecConfigSequence"|"ExecConfigMacro"|"ExecConfigView"|"ExecConfigWorld"|"ExecConfigGroup"|"ExecConfigPreset"|"ExecConfigPlugin"|"ExecConfigUser"|"ExecConfigSound"|"ExecConfigScreenConfig"|"ExecConfigTimer"|"ExecConfigMaster"|"ExecConfigSpeedMaster"|"ExecConfigPlaybackMaster", role: nil): Configuration
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "NormalValue", role: nil): DMXPropertyValue
---@overload fun(name: "DMXReadout", role: nil): DMXReadoutMode
---@overload fun(name: "WheelResolution", role: nil): DimmerWheelResolution
---@overload fun(name: "DmxTesterMode", role: nil): DmxTesterMode
---@overload fun(name: "EncoderLinkValues"|"EncoderLinkTiming"|"EncoderLinkPhaser"|"EncoderLinkStatusValues"|"EncoderLinkStatusTiming"|"EncoderLinkStatusPhaser"|"EncoderLinkStatusPhaserBar", role: nil): EncoderLink
---@overload fun(name: "MoveGridCursor", role: nil): GridCursorMovement
---@overload fun(name: "NotificationType", role: nil): NotificationType
---@overload fun(name: "SelectedDataPool", role: nil): Pool
---@overload fun(name: "PresetReadout", role: nil): PresetReadoutMode
---@overload fun(name: "Layer"|"ProgrammingLayer"|"LastValueLayer"|"LastPhaserLayer"|"LastStepLayer"|"ProgrammingLayerGroup", role: nil): ProgLayer
---@overload fun(name: "ProgUpdateCueFilter", role: nil): ProgUpdateCueMode
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "SpeedReadout", role: nil): SpeedReadoutMode
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "TextInputAuxEditor"|"TextInputSmallScreenTab", role: nil): TextInputEditor
---@overload fun(name: "TimeReadout", role: nil): TimeDisplayFormat
---@overload fun(name: "ScribbleColor", role: nil): UColor
---@overload fun(name: "Users", role: nil): User[]
---@overload fun(name: "ValueReadout", role: nil): ValueReadoutMode
---@overload fun(name: "WheelMode", role: nil): WheelMode
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "VKExpanded"|"SEExpanded"|"NEExpanded"|"ScribbleWidthScale"|"DefaultToken"|"KnobUIStyle"|"EncoderUIStyle"|"ActiveOnly"|"MultiStepOnly"|"PreciseEdit"|"ScreenEncoder"|"TimeKeyTarget"|"ShowUserEncoder"|"TCSlot"|"SelectedPage"|"HelpPopupZoomFactor"|"OverlayFade"|"FrameReadout"|"OopsViews"|"OopsProgrammer"|"OopsSelection"|"CreateOops"|"OopsConfirmation"|"MirrorSpecialExecutorPages"|"ShowAppearanceInCueInput"|"ShowSettingsInEditors"|"LastOpenRemotesTab"|"LastOpenDmxProtocolsTab"|"SingleDigitInput"|"ResolveExecutorAssignments"|"PreviewVariables"|"DefaultGroupMasterMode"|"ShowConnectors"|"LoadFixtureLibraryMA"|"LoadFixtureLibraryUser"|"LoadFixtureLibraryShare"|"DmxTesterAddressMode"|"DmxTesterRetainMode"|"DmxTesterTestValue"|"ScreenshotEnabled"|"UpdateMenuPresetOptionsExpanded"|"UpdateMenuCueOptionsExpanded"|"NotificationsEnabled"|"SystemFpsLimit"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Scribble"|"Appearance"|"DMXReadout"|"NormalValue"|"WheelResolution"|"WheelMode"|"VKExpanded"|"SEExpanded"|"NEExpanded"|"TextInputAuxEditor"|"TextInputSmallScreenTab"|"ScribbleColor"|"ScribbleWidthScale"|"SelectedDataPool"|"DefaultToken"|"EncoderLinkValues"|"EncoderLinkTiming"|"EncoderLinkPhaser"|"KnobUIStyle"|"EncoderUIStyle"|"ActiveOnly"|"MultiStepOnly"|"PreciseEdit"|"ScreenEncoder"|"TimeKeyTarget"|"ShowUserEncoder"|"TCSlot"|"SelectedPage"|"ValueReadout"|"SpeedReadout"|"PresetReadout"|"Layer"|"ProgrammingLayer"|"LastValueLayer"|"LastPhaserLayer"|"LastStepLayer"|"ProgrammingLayerGroup"|"HelpPopupZoomFactor"|"OverlayFade"|"TimeReadout"|"FrameReadout"|"ColorReadout"|"OopsViews"|"OopsProgrammer"|"OopsSelection"|"CreateOops"|"OopsConfirmation"|"MirrorSpecialExecutorPages"|"ShowAppearanceInCueInput"|"ShowSettingsInEditors"|"Users"|"Cmdlines"|"LastOpenRemotesTab"|"LastOpenDmxProtocolsTab"|"ProgUpdateCueFilter"|"SingleDigitInput"|"ResolveExecutorAssignments"|"PreviewVariables"|"DefaultGroupMasterMode"|"ExecConfigSequence"|"ExecConfigMacro"|"ExecConfigView"|"ExecConfigWorld"|"ExecConfigGroup"|"ExecConfigPreset"|"ExecConfigPlugin"|"ExecConfigUser"|"ExecConfigSound"|"ExecConfigScreenConfig"|"ExecConfigTimer"|"ExecConfigMaster"|"ExecConfigSpeedMaster"|"ExecConfigPlaybackMaster"|"ShowConnectors"|"LoadFixtureLibraryMA"|"LoadFixtureLibraryUser"|"LoadFixtureLibraryShare"|"DmxTesterAddressMode"|"DmxTesterRetainMode"|"DmxTesterMode"|"DmxTesterTestValue"|"MoveGridCursor"|"EncoderLinkStatusValues"|"EncoderLinkStatusTiming"|"EncoderLinkStatusPhaser"|"EncoderLinkStatusPhaserBar"|"ScreenshotEnabled"|"UpdateMenuPresetOptionsExpanded"|"UpdateMenuCueOptionsExpanded"|"NotificationsEnabled"|"NotificationType"|"SystemFpsLimit"|"Guid"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function UserProfile:Get(name, role) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|SpecialExecutorPages|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|SequenceSelection|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Materials|Tags|RenderQualities|Images|GoboImages|Symbols|MeshImagePool|Cameras|Scribbles|EncoderBarPool|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|StorePreferencesPreset|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|SmartViewPool|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|WindowTypes|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|Collection|ViewButtonScreens|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|Environments|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|ScreenConfigurations|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|TemporaryWindowSettings|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Object", undo: Undo?): Object
---@overload fun(index: integer, class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(index: integer, class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(index: integer, class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(index: integer, class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(index: integer, class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(index: integer, class: "Views", undo: Undo?): Views
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(index: integer, class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(index: integer, class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(index: integer, class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(index: integer, class: "Plugin", undo: Undo?): Plugin
---@overload fun(index: integer, class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(index: integer, class: "Material", undo: Undo?): Material
---@overload fun(index: integer, class: "Image", undo: Undo?): Image
---@overload fun(index: integer, class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(index: integer, class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(index: integer, class: "Measurement", undo: Undo?): Measurement
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(index: integer, class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?): Object
function UserProfile:Create(index, class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|SpecialExecutorPages|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|SequenceSelection|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Materials|Tags|RenderQualities|Images|GoboImages|Symbols|MeshImagePool|Cameras|Scribbles|EncoderBarPool|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|StorePreferencesPreset|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|SmartViewPool|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|WindowTypes|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|Collection|ViewButtonScreens|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|Environments|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|ScreenConfigurations|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|TemporaryWindowSettings|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Object", undo: Undo?, count: integer?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?, count: integer?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?, count: integer?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?, count: integer?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?, count: integer?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(class: "Views", undo: Undo?, count: integer?): Views
---@overload fun(class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?, count: integer?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?, count: integer?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?, count: integer?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?, count: integer?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?, count: integer?): CachedObj
---@overload fun(class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(class: "Image", undo: Undo?, count: integer?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?, count: integer?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?, count: integer?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?, count: integer?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?, count: integer?): TypedObject
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?, count: integer?): Object
function UserProfile:Append(class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|SpecialExecutorPages|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|SequenceSelection|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Materials|Tags|RenderQualities|Images|GoboImages|Symbols|MeshImagePool|Cameras|Scribbles|EncoderBarPool|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|StorePreferencesPreset|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|SmartViewPool|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|WindowTypes|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|Collection|ViewButtonScreens|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|Environments|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|ScreenConfigurations|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|TemporaryWindowSettings|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "Views", undo: Undo?): Views
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): Object
function UserProfile:Acquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|SpecialExecutorPages|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|SequenceSelection|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Materials|Tags|RenderQualities|Images|GoboImages|Symbols|MeshImagePool|Cameras|Scribbles|EncoderBarPool|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|StorePreferencesPreset|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|SmartViewPool|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|WindowTypes|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|Collection|ViewButtonScreens|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|Environments|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|ScreenConfigurations|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|TemporaryWindowSettings|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "Views", undo: Undo?): Views
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): Object
---@deprecated use "Acquire" instead
function UserProfile:Aquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|SpecialExecutorPages|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|SequenceSelection|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Materials|Tags|RenderQualities|Images|GoboImages|Symbols|MeshImagePool|Cameras|Scribbles|EncoderBarPool|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|StorePreferencesPreset|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|SmartViewPool|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|WindowTypes|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|Collection|ViewButtonScreens|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|Environments|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|ScreenConfigurations|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|TemporaryWindowSettings|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Object", undo: Undo?, count: integer?): Object
---@overload fun(index: integer, class: "GridContentFilterBase", undo: Undo?, count: integer?): GridContentFilterBase
---@overload fun(index: integer, class: "GridContentFilter", undo: Undo?, count: integer?): GridContentFilter
---@overload fun(index: integer, class: "GridObjectContentFilter", undo: Undo?, count: integer?): GridObjectContentFilter
---@overload fun(index: integer, class: "NamedObj", undo: Undo?, count: integer?): NamedObj
---@overload fun(index: integer, class: "GenericPool", undo: Undo?, count: integer?): GenericPool
---@overload fun(index: integer, class: "Views", undo: Undo?, count: integer?): Views
---@overload fun(index: integer, class: "CachedObjectPool", undo: Undo?, count: integer?): CachedObjectPool
---@overload fun(index: integer, class: "ImagePool", undo: Undo?, count: integer?): ImagePool
---@overload fun(index: integer, class: "GuidObject", undo: Undo?, count: integer?): GuidObject
---@overload fun(index: integer, class: "WindowSettings", undo: Undo?, count: integer?): WindowSettings
---@overload fun(index: integer, class: "GridSettings", undo: Undo?, count: integer?): GridSettings
---@overload fun(index: integer, class: "Plugin", undo: Undo?, count: integer?): Plugin
---@overload fun(index: integer, class: "CachedObj", undo: Undo?, count: integer?): CachedObj
---@overload fun(index: integer, class: "Material", undo: Undo?, count: integer?): Material
---@overload fun(index: integer, class: "Image", undo: Undo?, count: integer?): Image
---@overload fun(index: integer, class: "ColorThemeContent", undo: Undo?, count: integer?): ColorThemeContent
---@overload fun(index: integer, class: "MVRLocalFile", undo: Undo?, count: integer?): MVRLocalFile
---@overload fun(index: integer, class: "TypedNamedObj", undo: Undo?, count: integer?): TypedNamedObj
---@overload fun(index: integer, class: "Measurement", undo: Undo?, count: integer?): Measurement
---@overload fun(index: integer, class: "RunningPlaybacks", undo: Undo?, count: integer?): RunningPlaybacks
---@overload fun(index: integer, class: "TypedObject", undo: Undo?, count: integer?): TypedObject
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Object
function UserProfile:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|SpecialExecutorPages|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|SequenceSelection|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Materials|Tags|RenderQualities|Images|GoboImages|Symbols|MeshImagePool|Cameras|Scribbles|EncoderBarPool|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|StorePreferencesPreset|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|SmartViewPool|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|WindowTypes|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|Collection|ViewButtonScreens|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|UserAttributePreferences|Environments|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|ScreenConfigurations|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|TemporaryWindowSettings|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
---@overload fun(class: "Views", undo: Undo?): Views
---@overload fun(class: "CachedObjectPool", undo: Undo?): CachedObjectPool
---@overload fun(class: "ImagePool", undo: Undo?): ImagePool
---@overload fun(class: "GuidObject", undo: Undo?): GuidObject
---@overload fun(class: "WindowSettings", undo: Undo?): WindowSettings
---@overload fun(class: "GridSettings", undo: Undo?): GridSettings
---@overload fun(class: "Plugin", undo: Undo?): Plugin
---@overload fun(class: "CachedObj", undo: Undo?): CachedObj
---@overload fun(class: "Material", undo: Undo?): Material
---@overload fun(class: "Image", undo: Undo?): Image
---@overload fun(class: "ColorThemeContent", undo: Undo?): ColorThemeContent
---@overload fun(class: "MVRLocalFile", undo: Undo?): MVRLocalFile
---@overload fun(class: "TypedNamedObj", undo: Undo?): TypedNamedObj
---@overload fun(class: "Measurement", undo: Undo?): Measurement
---@overload fun(class: "RunningPlaybacks", undo: Undo?): RunningPlaybacks
---@overload fun(class: "TypedObject", undo: Undo?): TypedObject
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): Object
function UserProfile:Find(class, undo) end