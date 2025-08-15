---@meta

---@class SequenceSheetSettingsCollect: Object
local SequenceSheetSettingsCollect = {}
---@return "SequenceSheetSettingsCollect"
function SequenceSheetSettingsCollect:GetClass() end
---@return "SequenceSheetSettings"
function SequenceSheetSettingsCollect:GetChildClass() end
---@generic T : SequenceSheetSettingsCollect
---@param class `T`
---@return boolean
function SequenceSheetSettingsCollect:IsClass(class) end
---@param index integer
---@return SequenceSheetSettings
function SequenceSheetSettingsCollect:Ptr(index) end
---@return SequenceSheetSettings[]
function SequenceSheetSettingsCollect:Children() end
---@return SequenceSheetSettings?
function SequenceSheetSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SequenceSheetSettings
function SequenceSheetSettingsCollect:Get(name, role) end
---@generic T : SequenceSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Create(index, class, undo) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Append(class, undo, count) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Acquire(class, undo) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
---@deprecated use "Acquire" instead
function SequenceSheetSettingsCollect:Aquire(class, undo) end
---@generic T : SequenceSheetSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Insert(index, class, undo, count) end
---@generic T : SequenceSheetSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SequenceSheetSettings
function SequenceSheetSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "SplitSize", property_value: integer)
---@overload fun(property_name: "ContentSheetCueMode", property_value: ContentSheetCueMode)
---@overload fun(property_name: "CuePartAppearanceContent", property_value: CuePartAppearanceContent)
---@overload fun(property_name: "LineHeight", property_value: LineHeights)
---@overload fun(property_name: "LinkType", property_value: SequenceLinkType)
---@overload fun(property_name: "Layer", property_value: TrackLayerAuto)
---@overload fun(property_name: "Countdown", property_value: SequenceCountdown)
---@overload fun(property_name: "Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "CuePartAppearance", property_value: CuePartAppearance)
---@overload fun(property_name: "Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "ChannelSetReadout", property_value: ChannelSetReadoutMode)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "SheetMode", property_value: SheetMode)
---@overload fun(property_name: "ChannelSetReadout", property_value: ChannelSetReadoutMode)
---@overload fun(property_name: "ColorMode", property_value: ColorDisplayModeAuto)
---@overload fun(property_name: "ContentSheetCueMode", property_value: ContentSheetCueMode)
---@overload fun(property_name: "CuePartAppearance", property_value: CuePartAppearance)
---@overload fun(property_name: "CuePartAppearanceContent", property_value: CuePartAppearanceContent)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormatDefault)
---@overload fun(property_name: "LineHeight", property_value: LineHeights)
---@overload fun(property_name: "FixedTarget"|"Filter", property_value: Object)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "Countdown", property_value: SequenceCountdown)
---@overload fun(property_name: "LinkType", property_value: SequenceLinkType)
---@overload fun(property_name: "SheetMode", property_value: SheetMode)
---@overload fun(property_name: "Speed", property_value: SpeedReadoutModeAuto)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "Layer", property_value: TrackLayerAuto)
---@overload fun(property_name: "Readout", property_value: ValueReadoutModeAuto)
---@overload fun(property_name: "ShowNameField"|"ShowIDType"|"FeatureSort"|"FixtureSort"|"ShowLayerToolbar"|"ShowFilterToolbar"|"AutoScroll"|"CueOnly"|"ShowRecipes"|"ShowNotes"|"FeatureGraphic"|"TestCommand"|"ShowSteps"|"SequencePlaybackStatus"|"SequenceSettings"|"CompressedTiming"|"CueSettings"|"CueTiming"|"MIBSettings"|"PresetTiming"|"ShowTracked"|"Note"|"FixtureSelect"|"Cmd"|"ShowParts"|"Loops"|"ShowManualCueSelection"|"TrackSheet"|"SelectionOnly", property_value: YesNo|boolean)
---@overload fun(property_name: "SplitSize", property_value: integer)
function SequenceSheetSettingsCollect:SheetMode(property_name, property_value) end