---@meta

---@class UserProfiles: Object Container for all user profiles.
local UserProfiles = {}
---@return "UserProfiles"
function UserProfiles:GetClass() end
---@return "UserProfile"
function UserProfiles:GetChildClass() end
---@generic T : UserProfiles
---@param class `T`
---@return boolean
function UserProfiles:IsClass(class) end
---@return ShowData
function UserProfiles:Parent() end
---@param index integer
---@return UserProfile
function UserProfiles:Ptr(index) end
---@return UserProfile[]
function UserProfiles:Children() end
---@return UserProfile?
function UserProfiles:CurrentChild() end
---@overload fun(name: integer, role: nil): UserProfile
function UserProfiles:Get(name, role) end
---@generic T : UserProfile
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): UserProfile
function UserProfiles:Create(index, class, undo) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): UserProfile
function UserProfiles:Append(class, undo, count) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserProfile
function UserProfiles:Acquire(class, undo) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserProfile
---@deprecated use "Acquire" instead
function UserProfiles:Aquire(class, undo) end
---@generic T : UserProfile
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UserProfile
function UserProfiles:Insert(index, class, undo, count) end
---@generic T : UserProfile
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): UserProfile
function UserProfiles:Find(class, undo) end
---@overload fun(property_name: "SelectedDataPool", property_value: Pool)
---@overload fun(property_name: "DmxTesterAddressMode", property_value: DmxTesterAddressMode)
---@overload fun(property_name: "OopsConfirmation", property_value: OopsConfirmation)
---@overload fun(property_name: "EncoderLinkValues", property_value: EncoderLinkValues)
---@overload fun(property_name: "DmxTesterMode", property_value: DmxTesterMode)
---@overload fun(property_name: "EncoderLinkTiming", property_value: EncoderLink)
---@overload fun(property_name: "EncoderLinkPhaser", property_value: EncoderLinkPhaser)
---@overload fun(property_name: "MoveGridCursor", property_value: GridCursorMovement)
---@overload fun(property_name: "Users", property_value: User[])
---@overload fun(property_name: "Cmdlines", property_value: Cmdline[])
---@overload fun(property_name: "ProgUpdateCueFilter", property_value: ProgUpdateCueMode)
---@overload fun(property_name: "TimeKeyTarget", property_value: TimeKeyTarget)
---@overload fun(property_name: "DefaultGroupMasterMode", property_value: GroupMasterMode)
---@overload fun(property_name: "TCSlot", property_value: TimecodeSlotShort)
---@overload fun(property_name: "NotificationType", property_value: NotificationType)
---@overload fun(property_name: "ValueReadout", property_value: ValueReadoutModeNatural)
---@overload fun(property_name: "SpeedReadout", property_value: SpeedReadoutMode)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "Layer", property_value: ProgLayer)
---@overload fun(property_name: "Scribble", property_value: Scribble)
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "DMXReadout", property_value: DMXReadoutMode)
---@overload fun(property_name: "NormalValue", property_value: DMXPropertyValue)
---@overload fun(property_name: "WheelResolution", property_value: DimmerWheelResolution)
---@overload fun(property_name: "ProgrammingLayerGroup", property_value: ProgrammingLayerGroup)
---@overload fun(property_name: "HelpPopupZoomFactor", property_value: ZoomFactor)
---@overload fun(property_name: "WheelMode", property_value: WheelMode)
---@overload fun(property_name: "TimeReadout", property_value: TimeDisplayFormat)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormat)
---@overload fun(property_name: "ColorReadout", property_value: ColorDisplayMode)
---@overload fun(property_name: "ScribbleColor", property_value: UColor)
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Cmdlines", property_value: Cmdline[])
---@overload fun(property_name: "ColorReadout", property_value: ColorDisplayMode)
---@overload fun(property_name: "ExecConfigMacro"|"ExecConfigScreenConfig"|"ExecConfigView"|"ExecConfigTimer"|"ExecConfigWorld"|"ExecConfigMaster"|"ExecConfigGroup"|"ExecConfigSpeedMaster"|"ExecConfigSequence"|"ExecConfigPreset"|"ExecConfigPlaybackMaster"|"ExecConfigPlugin"|"ExecConfigUser"|"ExecConfigSound", property_value: Configuration)
---@overload fun(property_name: "NormalValue", property_value: DMXPropertyValue)
---@overload fun(property_name: "DMXReadout", property_value: DMXReadoutMode)
---@overload fun(property_name: "WheelResolution", property_value: DimmerWheelResolution)
---@overload fun(property_name: "DmxTesterAddressMode", property_value: DmxTesterAddressMode)
---@overload fun(property_name: "DmxTesterMode", property_value: DmxTesterMode)
---@overload fun(property_name: "EncoderLinkTiming", property_value: EncoderLink)
---@overload fun(property_name: "EncoderLinkPhaser", property_value: EncoderLinkPhaser)
---@overload fun(property_name: "EncoderLinkValues", property_value: EncoderLinkValues)
---@overload fun(property_name: "KnobUIStyle"|"EncoderUIStyle", property_value: EncoderUIStyle)
---@overload fun(property_name: "FrameReadout", property_value: FrameFormat)
---@overload fun(property_name: "MoveGridCursor", property_value: GridCursorMovement)
---@overload fun(property_name: "DefaultGroupMasterMode", property_value: GroupMasterMode)
---@overload fun(property_name: "NotificationType", property_value: NotificationType)
---@overload fun(property_name: "OopsConfirmation", property_value: OopsConfirmation)
---@overload fun(property_name: "SelectedDataPool", property_value: Pool)
---@overload fun(property_name: "PresetReadout", property_value: PresetReadoutMode)
---@overload fun(property_name: "Layer", property_value: ProgLayer)
---@overload fun(property_name: "ProgUpdateCueFilter", property_value: ProgUpdateCueMode)
---@overload fun(property_name: "ProgrammingLayer"|"LastPhaserLayer"|"LastValueLayer"|"LastStepLayer", property_value: ProgrammingLayer)
---@overload fun(property_name: "ProgrammingLayerGroup", property_value: ProgrammingLayerGroup)
---@overload fun(property_name: "Scribble", property_value: Scribble)
---@overload fun(property_name: "SpeedReadout", property_value: SpeedReadoutMode)
---@overload fun(property_name: "TextInputSmallScreenTab"|"TextInputAuxEditor", property_value: TextInputEditor)
---@overload fun(property_name: "TimeReadout", property_value: TimeDisplayFormat)
---@overload fun(property_name: "TimeKeyTarget", property_value: TimeKeyTarget)
---@overload fun(property_name: "TCSlot", property_value: TimecodeSlotShort)
---@overload fun(property_name: "ScribbleColor", property_value: UColor)
---@overload fun(property_name: "Users", property_value: User[])
---@overload fun(property_name: "ValueReadout", property_value: ValueReadoutModeNatural)
---@overload fun(property_name: "WheelMode", property_value: WheelMode)
---@overload fun(property_name: "OopsSelection"|"LoadFixtureLibraryShare"|"CreateOops"|"DmxTesterRetainMode"|"MirrorSpecialExecutorPages"|"ShowAppearanceInCueInput"|"ShowSettingsInEditors"|"ActiveOnly"|"MultiStepOnly"|"PreciseEdit"|"ScreenEncoder"|"SingleDigitInput"|"ScreenshotEnabled"|"ResolveExecutorAssignments"|"UpdateMenuPresetOptionsExpanded"|"PreviewVariables"|"UpdateMenuCueOptionsExpanded"|"NotificationsEnabled"|"OopsViews"|"SystemFpsLimit"|"OopsProgrammer"|"VKExpanded"|"SEExpanded"|"NEExpanded"|"ShowConnectors"|"LoadFixtureLibraryMA"|"LoadFixtureLibraryUser", property_value: YesNo|boolean)
---@overload fun(property_name: "HelpPopupZoomFactor", property_value: ZoomFactor)
---@overload fun(property_name: "ScribbleWidthScale"|"LastOpenRemotesTab"|"LastOpenDmxProtocolsTab"|"OverlayFade"|"DefaultToken"|"ShowUserEncoder"|"DmxTesterTestValue"|"SelectedPage", property_value: integer)
function UserProfiles:ScribbleColor(property_name, property_value) end