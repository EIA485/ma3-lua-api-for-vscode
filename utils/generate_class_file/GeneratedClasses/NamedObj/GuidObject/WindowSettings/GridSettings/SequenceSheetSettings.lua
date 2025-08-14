---@meta

---@class SequenceSheetSettings: GridSettings
---@field FixedTarget Object
---@field LinkType integer
---@field ShowSteps boolean
---@field SequencePlaybackStatus boolean
---@field SequenceSettings boolean
---@field CueSettings boolean
---@field CueTiming boolean
---@field MIBSettings boolean
---@field PresetTiming boolean
---@field CompressedTiming boolean
---@field Note boolean
---@field Cmd boolean
---@field Loops boolean
---@field TrackSheet boolean
---@field SelectionOnly boolean
---@field Step integer
---@field LineHeight LineHeights
---@field Readout ValueReadoutMode
---@field Speed SpeedReadoutMode
---@field PresetReadout PresetReadoutMode
---@field ChannelSetReadout ChannelSetReadoutMode
---@field Layer ProgLayer
---@field FeatureSort integer
---@field FixtureSort integer
---@field ShowLayerToolbar integer
---@field ShowFilterToolbar integer
---@field Filter Object
---@field AutoScroll integer
---@field CueOnly integer
---@field Countdown integer
---@field ShowRecipes integer
---@field ShowNotes integer
---@field FeatureGraphic integer
---@field TestCommand integer
---@field CuePartAppearance integer
---@field TimeDisplayFormat integer
---@field FrameReadout integer
---@field ColorMode ColorDisplayMode
---@field SplitSize integer
local SequenceSheetSettings = {
    LinkType="Selected",
    ShowSteps="Yes",
    SequencePlaybackStatus="Yes",
    SequenceSettings="Yes",
    CueSettings="Yes",
    CueTiming="Yes",
    MIBSettings="Yes",
    PresetTiming="Yes",
    CompressedTiming="Yes",
    Note="Yes",
    Cmd="Yes",
    Loops="Yes",
    TrackSheet="No",
    SelectionOnly="No",
    Readout="Auto",
    Speed="Auto",
    PresetReadout="Preset",
    ChannelSetReadout="Name",
    FeatureSort="No",
    FixtureSort="No",
    ShowLayerToolbar="No",
    ShowFilterToolbar="No",
    Filter="Default.Filters.SequenceSheet",
    AutoScroll="Yes",
    CueOnly="No",
    Countdown="Off",
    ShowRecipes="0",
    ShowNotes="No",
    FeatureGraphic="Yes",
    TestCommand="No",
    CuePartAppearance="Num+Name",
    TimeDisplayFormat="0",
    FrameReadout="0",
    ColorMode="0",
    SplitSize="200"
}
---@return "SequenceSheetSettings"
function SequenceSheetSettings:GetClass() end
---@return "Object"
function SequenceSheetSettings:GetChildClass() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "ChannelSetReadout", role: nil): ChannelSetReadoutMode
---@overload fun(name: "ColorMode", role: nil): ColorDisplayMode
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "SelectedColumnConfiguration", role: nil): GridColumnConfiguration
---@overload fun(name: "LineHeight", role: nil): LineHeights
---@overload fun(name: "FixedTarget"|"Filter"|"PreferenceHandle", role: nil): Object
---@overload fun(name: "PresetReadout", role: nil): PresetReadoutMode
---@overload fun(name: "Layer", role: nil): ProgLayer
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Speed", role: nil): SpeedReadoutMode
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Readout", role: nil): ValueReadoutMode
---@overload fun(name: "ShowSteps"|"SequencePlaybackStatus"|"SequenceSettings"|"CueSettings"|"CueTiming"|"MIBSettings"|"PresetTiming"|"CompressedTiming"|"Note"|"Cmd"|"Loops"|"TrackSheet"|"SelectionOnly"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder", role: nil): fun()
---@overload fun(name: "LinkType"|"Step"|"FeatureSort"|"FixtureSort"|"ShowLayerToolbar"|"ShowFilterToolbar"|"AutoScroll"|"CueOnly"|"Countdown"|"ShowRecipes"|"ShowNotes"|"FeatureGraphic"|"TestCommand"|"CuePartAppearance"|"TimeDisplayFormat"|"FrameReadout"|"SplitSize"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"ColumnsCount"|"ShowTitleBar"|"RequestDefaultTitlebuttons"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "RowHeightFactor", role: nil): number
---@overload fun(name: "ContentFilterType"|"GridColumnConfigurationType"|"TitleButtonMask"|"NameAndApp"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "FixedTarget"|"LinkType"|"ShowSteps"|"SequencePlaybackStatus"|"SequenceSettings"|"CueSettings"|"CueTiming"|"MIBSettings"|"PresetTiming"|"CompressedTiming"|"Note"|"Cmd"|"Loops"|"TrackSheet"|"SelectionOnly"|"Step"|"LineHeight"|"Readout"|"Speed"|"PresetReadout"|"ChannelSetReadout"|"Layer"|"FeatureSort"|"FixtureSort"|"ShowLayerToolbar"|"ShowFilterToolbar"|"Filter"|"AutoScroll"|"CueOnly"|"Countdown"|"ShowRecipes"|"ShowNotes"|"FeatureGraphic"|"TestCommand"|"CuePartAppearance"|"TimeDisplayFormat"|"FrameReadout"|"ColorMode"|"SplitSize"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function SequenceSheetSettings:Get(name, role) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|SequenceSheetRowFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetSettings|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function SequenceSheetSettings:Create(index, class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|SequenceSheetRowFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetSettings|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function SequenceSheetSettings:Append(class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|SequenceSheetRowFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetSettings|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
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
function SequenceSheetSettings:Acquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|SequenceSheetRowFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetSettings|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
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
function SequenceSheetSettings:Aquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|SequenceSheetRowFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetSettings|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function SequenceSheetSettings:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|SequenceSheetRowFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetSettings|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Object", undo: Undo?): Object
---@overload fun(class: "GridContentFilterBase", undo: Undo?): GridContentFilterBase
---@overload fun(class: "GridContentFilter", undo: Undo?): GridContentFilter
---@overload fun(class: "GridObjectContentFilter", undo: Undo?): GridObjectContentFilter
---@overload fun(class: "NamedObj", undo: Undo?): NamedObj
---@overload fun(class: "GenericPool", undo: Undo?): GenericPool
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
function SequenceSheetSettings:Find(class, undo) end