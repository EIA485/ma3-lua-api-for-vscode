---@meta

---@class WindowPhaserEditorSettings: GridSettings
---@field EditTools PhaserEditTool
---@field ShowBeams integer
---@field Absolute integer
---@field Relative integer
---@field AbsRelMode integer
---@field Mode1D integer
---@field LayerSheet integer
---@field AttributeSheet integer
---@field ShowEmptyLines integer
---@field StepBar integer
---@field LayerBar integer
---@field LineHeight integer
---@field ViewMode integer
---@field Readout ValueReadoutMode
---@field Speed SpeedReadoutMode
---@field PresetReadout PresetReadoutMode
---@field Attributes integer
---@field EncoderBar PhaserBars
---@field ColorMode ColorDisplayMode
local WindowPhaserEditorSettings = {
    ShowBeams="1",
    Absolute="1",
    Relative="1",
    AbsRelMode="AbsRel",
    Mode1D="Value",
    LayerSheet="Yes",
    AttributeSheet="No",
    ShowEmptyLines="No",
    StepBar="No",
    LayerBar="No",
    LineHeight="Auto",
    ViewMode="Auto",
    Readout="Auto",
    Speed="Auto",
    PresetReadout="Preset",
    Attributes="PanTilt",
    ColorMode="0"
}
---@return "WindowPhaserEditorSettings"
function WindowPhaserEditorSettings:GetClass() end
---@return "Object"
function WindowPhaserEditorSettings:GetChildClass() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "ColorMode", role: nil): ColorDisplayMode
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "SelectedColumnConfiguration", role: nil): GridColumnConfiguration
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "EncoderBar", role: nil): PhaserBars
---@overload fun(name: "EditTools", role: nil): PhaserEditTool
---@overload fun(name: "PresetReadout", role: nil): PresetReadoutMode
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Speed", role: nil): SpeedReadoutMode
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Readout", role: nil): ValueReadoutMode
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder", role: nil): fun()
---@overload fun(name: "ShowBeams"|"Absolute"|"Relative"|"AbsRelMode"|"Mode1D"|"LayerSheet"|"AttributeSheet"|"ShowEmptyLines"|"StepBar"|"LayerBar"|"LineHeight"|"ViewMode"|"Attributes"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"ColumnsCount"|"ShowTitleBar"|"RequestDefaultTitlebuttons"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "RowHeightFactor", role: nil): number
---@overload fun(name: "ContentFilterType"|"GridColumnConfigurationType"|"TitleButtonMask"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "EditTools"|"ShowBeams"|"Absolute"|"Relative"|"AbsRelMode"|"Mode1D"|"LayerSheet"|"AttributeSheet"|"ShowEmptyLines"|"StepBar"|"LayerBar"|"LineHeight"|"ViewMode"|"Readout"|"Speed"|"PresetReadout"|"Attributes"|"EncoderBar"|"ColorMode"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowPhaserEditorSettings:Get(name, role) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function WindowPhaserEditorSettings:Create(index, class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function WindowPhaserEditorSettings:Append(class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function WindowPhaserEditorSettings:Acquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function WindowPhaserEditorSettings:Aquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function WindowPhaserEditorSettings:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function WindowPhaserEditorSettings:Find(class, undo) end