---@meta

---@class LocalSettings: Object Mixed settings which relate only to the local station.
---@field DefaultLanguage string
---@field RememberedUser string
---@field SelectedDrive string
---@field SelectedDriveObject Drive
---@field EULAAccepted integer
---@field ForceLogin integer
---@field ShowReleaseNotes integer
---@field SystemGuid Crypto.Guid<128>
---@field ForceSetOnPCSystemTime integer
---@field OnPCSystemTimeOffset integer
---@field ResolutionLimit integer
---@field ConnectionLimit integer
---@field OnPCMidiOutDeviceName string
---@field OnPCMidiInDeviceName string
---@field OnPCAudioInDeviceName string
---@field AudioOutDeviceName string
---@field OnPCMidiFromWing integer
---@field OnPCMidiTimecodeSlot integer
---@field OnPCMidiOffset integer
---@field OnPCUseVizKey integer
---@field StartupShowfileName string
---@field StartupBrowserFilter StartupBrowserFilter
---@field StartupShowfileFilter integer
local LocalSettings = {
    DefaultLanguage="en",
    RememberedUser="Guest",
    EULAAccepted="No",
    ForceLogin="No",
    ShowReleaseNotes="Yes",
    SystemGuid="0",
    ForceSetOnPCSystemTime="No",
    OnPCSystemTimeOffset="0",
    ResolutionLimit="1080p",
    ConnectionLimit="2",
    OnPCMidiFromWing="Yes",
    OnPCMidiTimecodeSlot="Slot1",
    OnPCMidiOffset="0",
    OnPCUseVizKey="Yes",
    StartupBrowserFilter="Shows",
    StartupShowfileFilter="15"
}
---@return "LocalSettings"
function LocalSettings:GetClass() end
---@return "Object"
function LocalSettings:GetChildClass() end
---@return StationSettings
function LocalSettings:Parent() end
---@overload fun(name: "SystemGuid", role: nil): Crypto.Guid<128>
---@overload fun(name: "SelectedDriveObject", role: nil): Drive
---@overload fun(name: "StartupBrowserFilter", role: nil): StartupBrowserFilter
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "EULAAccepted"|"ForceLogin"|"ShowReleaseNotes"|"ForceSetOnPCSystemTime"|"OnPCSystemTimeOffset"|"ResolutionLimit"|"ConnectionLimit"|"OnPCMidiFromWing"|"OnPCMidiTimecodeSlot"|"OnPCMidiOffset"|"OnPCUseVizKey"|"StartupShowfileFilter"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "DefaultLanguage"|"RememberedUser"|"SelectedDrive"|"OnPCMidiOutDeviceName"|"OnPCMidiInDeviceName"|"OnPCAudioInDeviceName"|"AudioOutDeviceName"|"StartupShowfileName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "DefaultLanguage"|"RememberedUser"|"SelectedDrive"|"SelectedDriveObject"|"EULAAccepted"|"ForceLogin"|"ShowReleaseNotes"|"SystemGuid"|"ForceSetOnPCSystemTime"|"OnPCSystemTimeOffset"|"ResolutionLimit"|"ConnectionLimit"|"OnPCMidiOutDeviceName"|"OnPCMidiInDeviceName"|"OnPCAudioInDeviceName"|"AudioOutDeviceName"|"OnPCMidiFromWing"|"OnPCMidiTimecodeSlot"|"OnPCMidiOffset"|"OnPCUseVizKey"|"StartupShowfileName"|"StartupBrowserFilter"|"StartupShowfileFilter"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function LocalSettings:Get(name, role) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function LocalSettings:Create(index, class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function LocalSettings:Append(class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function LocalSettings:Acquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function LocalSettings:Aquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function LocalSettings:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function LocalSettings:Find(class, undo) end