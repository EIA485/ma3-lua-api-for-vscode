---@meta

---@class MAnetSocket: Object
---@field HostName string
---@field Session string
---@field Location string
---@field Showfile string
---@field PrimaryIp Manet.IP4
---@field MulticastBase Manet.IP4
---@field Interface string
---@field MasterPriority MasterPriority
---@field PUPriority PUPriority
---@field Status integer
---@field Functional boolean
---@field SessionManager boolean
---@field RemoteIP Network.IP8
---@field EnableNetwork integer
---@field EnableRemotes integer
---@field EnableInvite integer
---@field EnablesFTP integer
---@field PlaybackDataMerge integer
---@field DisableTimeouts integer
---@field EnableRemoteHID integer
---@field Version Stream.Version
---@field Branch BuildType
---@field PacketLossSimulation integer
---@field PacketLossRandomized boolean
---@field HostStatusStable boolean
---@field HostType HostType
---@field HostSubType HostSubType
---@field SessionFilter integer
---@field SoftwareFilter integer
---@field ExtraStatusInfo integer
---@field SelectedUpdateFile string
---@field ExtraInitPackets integer
local MAnetSocket = {
    Showfile="NewShow",
    MulticastBase="Default",
    Interface="-1,-1",
    EnableNetwork="1",
    EnableRemotes="1",
    EnableInvite="1",
    EnablesFTP="1",
    PlaybackDataMerge="1",
    DisableTimeouts="0",
    EnableRemoteHID="0",
    Version="0",
    Branch="0",
    PacketLossSimulation="0",
    PacketLossRandomized="Yes",
    HostStatusStable="No",
    SessionFilter="All",
    SoftwareFilter="Wrong Version",
    ExtraStatusInfo="None",
    ExtraInitPackets="0"
}
---@return "MAnetSocket"
function MAnetSocket:GetClass() end
---@return "Object"
function MAnetSocket:GetChildClass() end
---@return Root
function MAnetSocket:Parent() end
---@overload fun(name: "Branch", role: nil): BuildType
---@overload fun(name: "HostSubType", role: nil): HostSubType
---@overload fun(name: "HostType", role: nil): HostType
---@overload fun(name: "PrimaryIp"|"MulticastBase", role: nil): Manet.IP4
---@overload fun(name: "MasterPriority", role: nil): MasterPriority
---@overload fun(name: "RemoteIP", role: nil): Network.IP8
---@overload fun(name: "PUPriority", role: nil): PUPriority
---@overload fun(name: "Version", role: nil): Stream.Version
---@overload fun(name: "Functional"|"SessionManager"|"PacketLossRandomized"|"HostStatusStable"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Status"|"EnableNetwork"|"EnableRemotes"|"EnableInvite"|"EnablesFTP"|"PlaybackDataMerge"|"DisableTimeouts"|"EnableRemoteHID"|"PacketLossSimulation"|"SessionFilter"|"SoftwareFilter"|"ExtraStatusInfo"|"ExtraInitPackets"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "HostName"|"Session"|"Location"|"Showfile"|"Interface"|"SelectedUpdateFile"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "HostName"|"Session"|"Location"|"Showfile"|"PrimaryIp"|"MulticastBase"|"Interface"|"MasterPriority"|"PUPriority"|"Status"|"Functional"|"SessionManager"|"RemoteIP"|"EnableNetwork"|"EnableRemotes"|"EnableInvite"|"EnablesFTP"|"PlaybackDataMerge"|"DisableTimeouts"|"EnableRemoteHID"|"Version"|"Branch"|"PacketLossSimulation"|"PacketLossRandomized"|"HostStatusStable"|"HostType"|"HostSubType"|"SessionFilter"|"SoftwareFilter"|"ExtraStatusInfo"|"SelectedUpdateFile"|"ExtraInitPackets"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MAnetSocket:Get(name, role) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|HostTypes|Sessions|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function MAnetSocket:Create(index, class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|HostTypes|Sessions|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function MAnetSocket:Append(class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|HostTypes|Sessions|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function MAnetSocket:Acquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|HostTypes|Sessions|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function MAnetSocket:Aquire(class, undo) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|HostTypes|Sessions|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function MAnetSocket:Insert(index, class, undo, count) end
---@generic T : GroupPoolSettingsCollect|RdmWindowSettingsCollect|WindowPhaserEditorSettingsCollect|TimecodeWindowSettingsCollect|UnassignedTagGridFilter|NetworkGridFilter|FixtureSheetRowFilter|PhaserSheetRowFilter|RunningPlaybacksGirdContentFilter|GridPatchContentFilter|RunningPlaybacksSettingsCollect|PresetShapersPoolSettingsCollect|FixtureSheetSettingsCollect|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MacroPoolSettingsCollect|MidiInDescriptions|TimecodePoolSettingsCollect|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|ExecConfigPoolSettingsCollect|AttributeDefinitions|Tags|Images|GoboImages|Symbols|MeshImagePool|Scribbles|Variables|RDMFixtureType|RenderQuality|ExecEditorSettings|CommandlineWindowSettings|WindowInfoSettings|CloningWindowSettings|ClockWindowSettings|PoolSettings|SpecialWindowSettings|ModularPlaybackWindowSettings|WindowAgendaSettings|TimecodeWindowSettings|FixtureEditorSettings|PSRPatchSheetSettings|MessageGridSettings|GelGridSettings|SequenceSheetSettings|DMXSheetSettings|FixtureSheetSettings|RdmWindowSettings|RecipeSheetSettings|RunningPlaybacksSheetSettings|ShowCreatorSheetSettings|WindowPhaserEditorSettings|AtFilterSettings|WindowSoundSettings|LayoutViewSettings|CustomMasterSectionWindowSettings|HelpViewerWindowSettings|SysmonWindowSettings|ColorPickerSettings|WindowTrackpadSettings|EncoderBarWindowSettings|ShaperWindowSettings|MatricksWindowSettings|View3DSettings|SelectionViewSettings|SysteminfoWindowSettings|XkeysWindowSettings|CommandWingBarSettings|PlaybackWindowSettings|Camera|ShowData|AudioInDeviceDescription|GridColumnConfiguration|MIDIDeviceDescription|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|ClockWindowSettingsCollect|IllegalObject|AddonVariables|WindowSettingsCollect|NtpMonitor|Timezones|GridColumnConfigurationCollect|Root|MatricksPoolSettingsCollect|TimerPoolSettingsCollect|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|PluginPoolSettingsCollect|PultCollect|MidiOutDescriptions|PresetControlPoolSettingsCollect|KeyboardLayouts|PluginPreferencesCollect|WindowAgendaSettingsCollect|DmxSheetSettingsCollect|PresetAllPoolSettingsCollect|SoundChannels|SysteminfoWindowSettingsCollect|GridBase|AutoCreateSettings|LayoutElementDefaultsCollect|GridColumnFilterCollect|GridContentFilterSettings|DMXRoot|PlaybackWindowSettingsCollect|ShowMetaData|GelPoolSettingsCollect|PresetVideoPoolSettingsCollect|AudioInDescriptions|SequenceSheetSettingsCollect|TabRegistry|SelectionViewSettingsCollect|DriveCollect|ColorTheme|BitmapPoolSettingsCollect|WorldPoolSettingsCollect|EncoderBarWindowSettingsCollect|PresetFocusPoolSettingsCollect|ScribbleEdit|MessageGridSettingsCollect|GeneratorPoolSettingsCollect|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|ExecutorFixation|PresetPositionPoolSettingsCollect|LayoutCameraObject|HostTypes|Sessions|VideoPoolSettingsCollect|View3DSettingsCollect|LayoutPoolSettingsCollect|PresetDynamicPoolSettingsCollect|SoundPoolSettingsCollect|MVRxchange|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|QuickeyPoolSettingsCollect|ModularPlaybackWindowSettingsCollect|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|ColorPickerSettingsCollect|PagePoolSettingsCollect|Recipe|grandMA3Modules|ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
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
function MAnetSocket:Find(class, undo) end