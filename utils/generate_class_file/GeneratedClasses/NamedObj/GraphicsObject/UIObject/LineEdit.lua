---@meta

---@class LineEdit: UIObject A UI control used to view/edit single-lined UTF8 text
---@field CursorTexture Texture
---@field ArrowRight Texture
---@field ArrowLeft Texture
---@field SelectionColor Color
---@field MessageColor Color
---@field SelectionBackgroundTexture Texture
---@field ScrollBarHeight Graphics.SizeDescriptor
---@field Property string
---@field VKPluginName string
---@field VKTitleHint string
---@field PolicyOnEnter PolicyOnEnter
---@field TextChangeOnEnter boolean
---@field Prompt string
---@field Filter string
---@field EmptyText string
---@field Message string
---@field Content string
---@field ContentBeforeCursor string
---@field SelectedContent string
---@field ForceCursor boolean
---@field LongPressVK boolean
---@field Target Object
---@field HistoryProvider Object
---@field Execute fun(str: string) your description here
---@field TextChanged fun(str: string) your description here
---@field OnWrongChar fun(str: string) your description here
---@field SetText fun(text: string) : boolean 0:text
---@field AddText fun(text: string) : boolean 0:text
---@field InsertText fun(text: string) : boolean 0:text
---@field Clear fun(dummyString: string) : boolean 0:dummy string
---@field SetPrompt fun(prompt: string) : boolean 0:prompt
---@field ShowMessage fun(message: string) : boolean 0:message
---@field HideMessage fun(message: string) : boolean 0:message
---@field OpenVK fun(str: string) : boolean
---@field SelectAll fun(str: string) : boolean
---@field SelectRange fun(str: string, int1: integer, int2: integer) : boolean
---@field DeSelect fun(str: string) : boolean
---@field SetCursorToEnd fun(str: string) : boolean
---@field ReadOnly boolean
---@field KeyRepeatEnabled boolean
---@field Icon Texture A name reference of the texture that should be used for the icon. Defined in the 'graphics.textures.xml' file
---@field IconColor Color A name reference of the color that should be used for the icon. Defined in the 'theme.xml' file
---@field IconAlignmentH AlignmentH Specifies the horizontal alingment of the icon inside the object.
---@field IconAlignmentV AlignmentV Specifies the vertical alingment of the icon inside the object.
---@field KeyboardIconAlignmentH AlignmentH Specifies the horizontal alingment of the keyboard icon inside the object.
---@field KeyboardIconAlignmentV AlignmentV Specifies the vertical alingment of the keyboard icon inside the object.
---@field MaxTextLength integer
---@field ShowKeyboardButton boolean
---@field Secret boolean
---@field SetPropertyOnlyOnTextChange boolean
---@field SetSendTab fun()
local LineEdit = {
    CursorTexture="text_cursor",
    SelectionColor="LineEdit.TextSelectionBackground",
    MessageColor="LineEdit.TextMessage",
    SelectionBackgroundTexture="white",
    ScrollBarHeight="5",
    VKPluginName="TextInput",
    PolicyOnEnter="Nothing",
    TextChangeOnEnter="No",
    ForceCursor="No",
    LongPressVK="Yes",
    Execute="out:(s;)",
    TextChanged="out:(s;)",
    OnWrongChar="out:(s;)",
    SetText="in:(s;)",
    AddText="in:(s;)",
    InsertText="in:(s;)",
    Clear="in:(s;)",
    SetPrompt="in:(s;)",
    ShowMessage="in:(s;)",
    HideMessage="in:(s;)",
    OpenVK="in:(s;)",
    SelectAll="in:(s;)",
    SelectRange="in:(s;u4;u4;)",
    DeSelect="in:(s;)",
    SetCursorToEnd="in:(s;)",
    ReadOnly="No",
    KeyRepeatEnabled="Yes",
    IconColor="Button.Icon",
    IconAlignmentH="Right",
    IconAlignmentV="Top",
    KeyboardIconAlignmentH="Left",
    KeyboardIconAlignmentV="Center",
    MaxTextLength="0",
    Secret="No",
    SetPropertyOnlyOnTextChange="Yes"
}
---@return "LineEdit"
function LineEdit:GetClass() end
---@return "UIObject"
function LineEdit:GetChildClass() end
---@overload fun(name: "IconAlignmentH"|"KeyboardIconAlignmentH"|"AlignmentH"|"TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "IconAlignmentV"|"KeyboardIconAlignmentV"|"AlignmentV"|"TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "SelectionColor"|"MessageColor"|"IconColor"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "CloseAction", role: nil): GestureResult
---@overload fun(name: "ScrollBarHeight"|"X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "Target"|"HistoryProvider", role: nil): Object
---@overload fun(name: "PolicyOnEnter", role: nil): PolicyOnEnter
---@overload fun(name: "CursorTexture"|"ArrowRight"|"ArrowLeft"|"SelectionBackgroundTexture"|"Icon"|"Texture", role: nil): Texture
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "TextChangeOnEnter"|"ForceCursor"|"LongPressVK"|"ReadOnly"|"KeyRepeatEnabled"|"ShowKeyboardButton"|"Secret"|"SetPropertyOnlyOnTextChange"|"HasFocus"|"HideFocusFrame"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SetSendTab", role: nil): fun()
---@overload fun(name: "Clear", role: nil): fun(dummyString: string) : boolean
---@overload fun(name: "ShowMessage"|"HideMessage", role: nil): fun(message: string) : boolean
---@overload fun(name: "SetPrompt", role: nil): fun(prompt: string) : boolean
---@overload fun(name: "Execute"|"TextChanged"|"OnWrongChar"|"DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "OpenVK"|"SelectAll"|"DeSelect"|"SetCursorToEnd", role: nil): fun(str: string) : boolean
---@overload fun(name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "SelectRange", role: nil): fun(str: string, int1: integer, int2: integer) : boolean
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "SetText"|"AddText"|"InsertText", role: nil): fun(text: string) : boolean
---@overload fun(name: "MaxTextLength"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"AutoCloseValue"|"UiGroupId"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Property"|"VKPluginName"|"VKTitleHint"|"Prompt"|"Filter"|"EmptyText"|"Message"|"Content"|"ContentBeforeCursor"|"SelectedContent"|"Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Padding"|"Anchors"|"Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "CursorTexture"|"ArrowRight"|"ArrowLeft"|"SelectionColor"|"MessageColor"|"SelectionBackgroundTexture"|"ScrollBarHeight"|"Property"|"VKPluginName"|"VKTitleHint"|"PolicyOnEnter"|"TextChangeOnEnter"|"Prompt"|"Filter"|"EmptyText"|"Message"|"Content"|"ContentBeforeCursor"|"SelectedContent"|"ForceCursor"|"LongPressVK"|"Target"|"HistoryProvider"|"Execute"|"TextChanged"|"OnWrongChar"|"SetText"|"AddText"|"InsertText"|"Clear"|"SetPrompt"|"ShowMessage"|"HideMessage"|"OpenVK"|"SelectAll"|"SelectRange"|"DeSelect"|"SetCursorToEnd"|"ReadOnly"|"KeyRepeatEnabled"|"Icon"|"IconColor"|"IconAlignmentH"|"IconAlignmentV"|"KeyboardIconAlignmentH"|"KeyboardIconAlignmentV"|"MaxTextLength"|"ShowKeyboardButton"|"Secret"|"SetPropertyOnlyOnTextChange"|"SetSendTab"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function LineEdit:Get(name, role) end
---@generic T : LineEditExt|SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView|KeybSCEdit|MacrolineEdit|NumInputEdit|CmdlineEdit
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "UIObject", undo: Undo?): UIObject
---@overload fun(index: integer, class: "UiFader", undo: Undo?): UiFader
---@overload fun(index: integer, class: "UIGridCellBase", undo: Undo?): UIGridCellBase
---@overload fun(index: integer, class: "UILayoutGrid", undo: Undo?): UILayoutGrid
---@overload fun(index: integer, class: "AutoLayout", undo: Undo?): AutoLayout
---@overload fun(index: integer, class: "Drawable", undo: Undo?): Drawable
---@overload fun(index: integer, class: "Overlay", undo: Undo?): Overlay
---@overload fun(index: integer, class: "ShadedOverlay", undo: Undo?): ShadedOverlay
---@overload fun(index: integer, class: "BaseInput", undo: Undo?): BaseInput
---@overload fun(index: integer, class: "GenericImport", undo: Undo?): GenericImport
---@overload fun(index: integer, class: "TextEdit", undo: Undo?): TextEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: "Bar", undo: Undo?): Bar
---@overload fun(index: integer, class: "ExecutorBar", undo: Undo?): ExecutorBar
---@overload fun(index: integer, class: "GlWindowBase", undo: Undo?): GlWindowBase
---@overload fun(index: integer, class: "Window", undo: Undo?): Window
---@overload fun(index: integer, class: "PoolLayoutGrid", undo: Undo?): PoolLayoutGrid
---@overload fun(index: integer, class: "UiScreen", undo: Undo?): UiScreen
---@overload fun(index: integer, class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(index: integer, class: "Button", undo: Undo?): Button
---@overload fun(index: integer, class: "PropertyControl", undo: Undo?): PropertyControl
---@overload fun(index: integer, class: "IndicatorControl", undo: Undo?): IndicatorControl
---@overload fun(index: integer, class: "PropertyInput", undo: Undo?): PropertyInput
---@overload fun(index: integer, class: "AppearanceInput", undo: Undo?): AppearanceInput
---@overload fun(index: integer, class: "ScribbleInput", undo: Undo?): ScribbleInput
---@overload fun(index: integer, class: "BaseStateButton", undo: Undo?): BaseStateButton
---@overload fun(index: integer, class: "ToggleButton", undo: Undo?): ToggleButton
---@overload fun(index: integer, class: "SwipeButton", undo: Undo?): SwipeButton
---@overload fun(index: integer, class: "LogoButton", undo: Undo?): LogoButton
---@overload fun(index: integer, class: "ContextButton", undo: Undo?): ContextButton
---@overload fun(index: integer, class: "IndicatorButton", undo: Undo?): IndicatorButton
---@overload fun(index: integer, class: "TitleButton", undo: Undo?): TitleButton
---@overload fun(index: integer, class: "PlaceHolderBase", undo: Undo?): PlaceHolderBase
---@overload fun(index: integer, class: "PlaceHolder", undo: Undo?): PlaceHolder
---@overload fun(index: integer, class: "ScrollableItemList", undo: Undo?): ScrollableItemList
---@overload fun(index: integer, class: "UITab", undo: Undo?): UITab
---@overload fun(index: integer, class: nil, undo: Undo?): UIObject
function LineEdit:Create(index, class, undo) end
---@generic T : LineEditExt|SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView|KeybSCEdit|MacrolineEdit|NumInputEdit|CmdlineEdit
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "UIObject", undo: Undo?, count: integer?): UIObject
---@overload fun(class: "UiFader", undo: Undo?, count: integer?): UiFader
---@overload fun(class: "UIGridCellBase", undo: Undo?, count: integer?): UIGridCellBase
---@overload fun(class: "UILayoutGrid", undo: Undo?, count: integer?): UILayoutGrid
---@overload fun(class: "AutoLayout", undo: Undo?, count: integer?): AutoLayout
---@overload fun(class: "Drawable", undo: Undo?, count: integer?): Drawable
---@overload fun(class: "Overlay", undo: Undo?, count: integer?): Overlay
---@overload fun(class: "ShadedOverlay", undo: Undo?, count: integer?): ShadedOverlay
---@overload fun(class: "BaseInput", undo: Undo?, count: integer?): BaseInput
---@overload fun(class: "GenericImport", undo: Undo?, count: integer?): GenericImport
---@overload fun(class: "TextEdit", undo: Undo?, count: integer?): TextEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: "Bar", undo: Undo?, count: integer?): Bar
---@overload fun(class: "ExecutorBar", undo: Undo?, count: integer?): ExecutorBar
---@overload fun(class: "GlWindowBase", undo: Undo?, count: integer?): GlWindowBase
---@overload fun(class: "Window", undo: Undo?, count: integer?): Window
---@overload fun(class: "PoolLayoutGrid", undo: Undo?, count: integer?): PoolLayoutGrid
---@overload fun(class: "UiScreen", undo: Undo?, count: integer?): UiScreen
---@overload fun(class: "UIObjectFake", undo: Undo?, count: integer?): UIObjectFake
---@overload fun(class: "Button", undo: Undo?, count: integer?): Button
---@overload fun(class: "PropertyControl", undo: Undo?, count: integer?): PropertyControl
---@overload fun(class: "IndicatorControl", undo: Undo?, count: integer?): IndicatorControl
---@overload fun(class: "PropertyInput", undo: Undo?, count: integer?): PropertyInput
---@overload fun(class: "AppearanceInput", undo: Undo?, count: integer?): AppearanceInput
---@overload fun(class: "ScribbleInput", undo: Undo?, count: integer?): ScribbleInput
---@overload fun(class: "BaseStateButton", undo: Undo?, count: integer?): BaseStateButton
---@overload fun(class: "ToggleButton", undo: Undo?, count: integer?): ToggleButton
---@overload fun(class: "SwipeButton", undo: Undo?, count: integer?): SwipeButton
---@overload fun(class: "LogoButton", undo: Undo?, count: integer?): LogoButton
---@overload fun(class: "ContextButton", undo: Undo?, count: integer?): ContextButton
---@overload fun(class: "IndicatorButton", undo: Undo?, count: integer?): IndicatorButton
---@overload fun(class: "TitleButton", undo: Undo?, count: integer?): TitleButton
---@overload fun(class: "PlaceHolderBase", undo: Undo?, count: integer?): PlaceHolderBase
---@overload fun(class: "PlaceHolder", undo: Undo?, count: integer?): PlaceHolder
---@overload fun(class: "ScrollableItemList", undo: Undo?, count: integer?): ScrollableItemList
---@overload fun(class: "UITab", undo: Undo?, count: integer?): UITab
---@overload fun(class: nil, undo: Undo?, count: integer?): UIObject
function LineEdit:Append(class, undo, count) end
---@generic T : LineEditExt|SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView|KeybSCEdit|MacrolineEdit|NumInputEdit|CmdlineEdit
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "UIObject", undo: Undo?): UIObject
---@overload fun(class: "UiFader", undo: Undo?): UiFader
---@overload fun(class: "UIGridCellBase", undo: Undo?): UIGridCellBase
---@overload fun(class: "UILayoutGrid", undo: Undo?): UILayoutGrid
---@overload fun(class: "AutoLayout", undo: Undo?): AutoLayout
---@overload fun(class: "Drawable", undo: Undo?): Drawable
---@overload fun(class: "Overlay", undo: Undo?): Overlay
---@overload fun(class: "ShadedOverlay", undo: Undo?): ShadedOverlay
---@overload fun(class: "BaseInput", undo: Undo?): BaseInput
---@overload fun(class: "GenericImport", undo: Undo?): GenericImport
---@overload fun(class: "TextEdit", undo: Undo?): TextEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: "Bar", undo: Undo?): Bar
---@overload fun(class: "ExecutorBar", undo: Undo?): ExecutorBar
---@overload fun(class: "GlWindowBase", undo: Undo?): GlWindowBase
---@overload fun(class: "Window", undo: Undo?): Window
---@overload fun(class: "PoolLayoutGrid", undo: Undo?): PoolLayoutGrid
---@overload fun(class: "UiScreen", undo: Undo?): UiScreen
---@overload fun(class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(class: "Button", undo: Undo?): Button
---@overload fun(class: "PropertyControl", undo: Undo?): PropertyControl
---@overload fun(class: "IndicatorControl", undo: Undo?): IndicatorControl
---@overload fun(class: "PropertyInput", undo: Undo?): PropertyInput
---@overload fun(class: "AppearanceInput", undo: Undo?): AppearanceInput
---@overload fun(class: "ScribbleInput", undo: Undo?): ScribbleInput
---@overload fun(class: "BaseStateButton", undo: Undo?): BaseStateButton
---@overload fun(class: "ToggleButton", undo: Undo?): ToggleButton
---@overload fun(class: "SwipeButton", undo: Undo?): SwipeButton
---@overload fun(class: "LogoButton", undo: Undo?): LogoButton
---@overload fun(class: "ContextButton", undo: Undo?): ContextButton
---@overload fun(class: "IndicatorButton", undo: Undo?): IndicatorButton
---@overload fun(class: "TitleButton", undo: Undo?): TitleButton
---@overload fun(class: "PlaceHolderBase", undo: Undo?): PlaceHolderBase
---@overload fun(class: "PlaceHolder", undo: Undo?): PlaceHolder
---@overload fun(class: "ScrollableItemList", undo: Undo?): ScrollableItemList
---@overload fun(class: "UITab", undo: Undo?): UITab
---@overload fun(class: nil, undo: Undo?): UIObject
function LineEdit:Acquire(class, undo) end
---@generic T : LineEditExt|SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView|KeybSCEdit|MacrolineEdit|NumInputEdit|CmdlineEdit
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "UIObject", undo: Undo?): UIObject
---@overload fun(class: "UiFader", undo: Undo?): UiFader
---@overload fun(class: "UIGridCellBase", undo: Undo?): UIGridCellBase
---@overload fun(class: "UILayoutGrid", undo: Undo?): UILayoutGrid
---@overload fun(class: "AutoLayout", undo: Undo?): AutoLayout
---@overload fun(class: "Drawable", undo: Undo?): Drawable
---@overload fun(class: "Overlay", undo: Undo?): Overlay
---@overload fun(class: "ShadedOverlay", undo: Undo?): ShadedOverlay
---@overload fun(class: "BaseInput", undo: Undo?): BaseInput
---@overload fun(class: "GenericImport", undo: Undo?): GenericImport
---@overload fun(class: "TextEdit", undo: Undo?): TextEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: "Bar", undo: Undo?): Bar
---@overload fun(class: "ExecutorBar", undo: Undo?): ExecutorBar
---@overload fun(class: "GlWindowBase", undo: Undo?): GlWindowBase
---@overload fun(class: "Window", undo: Undo?): Window
---@overload fun(class: "PoolLayoutGrid", undo: Undo?): PoolLayoutGrid
---@overload fun(class: "UiScreen", undo: Undo?): UiScreen
---@overload fun(class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(class: "Button", undo: Undo?): Button
---@overload fun(class: "PropertyControl", undo: Undo?): PropertyControl
---@overload fun(class: "IndicatorControl", undo: Undo?): IndicatorControl
---@overload fun(class: "PropertyInput", undo: Undo?): PropertyInput
---@overload fun(class: "AppearanceInput", undo: Undo?): AppearanceInput
---@overload fun(class: "ScribbleInput", undo: Undo?): ScribbleInput
---@overload fun(class: "BaseStateButton", undo: Undo?): BaseStateButton
---@overload fun(class: "ToggleButton", undo: Undo?): ToggleButton
---@overload fun(class: "SwipeButton", undo: Undo?): SwipeButton
---@overload fun(class: "LogoButton", undo: Undo?): LogoButton
---@overload fun(class: "ContextButton", undo: Undo?): ContextButton
---@overload fun(class: "IndicatorButton", undo: Undo?): IndicatorButton
---@overload fun(class: "TitleButton", undo: Undo?): TitleButton
---@overload fun(class: "PlaceHolderBase", undo: Undo?): PlaceHolderBase
---@overload fun(class: "PlaceHolder", undo: Undo?): PlaceHolder
---@overload fun(class: "ScrollableItemList", undo: Undo?): ScrollableItemList
---@overload fun(class: "UITab", undo: Undo?): UITab
---@overload fun(class: nil, undo: Undo?): UIObject
---@deprecated use "Acquire" instead
function LineEdit:Aquire(class, undo) end
---@generic T : LineEditExt|SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView|KeybSCEdit|MacrolineEdit|NumInputEdit|CmdlineEdit
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "UIObject", undo: Undo?, count: integer?): UIObject
---@overload fun(index: integer, class: "UiFader", undo: Undo?, count: integer?): UiFader
---@overload fun(index: integer, class: "UIGridCellBase", undo: Undo?, count: integer?): UIGridCellBase
---@overload fun(index: integer, class: "UILayoutGrid", undo: Undo?, count: integer?): UILayoutGrid
---@overload fun(index: integer, class: "AutoLayout", undo: Undo?, count: integer?): AutoLayout
---@overload fun(index: integer, class: "Drawable", undo: Undo?, count: integer?): Drawable
---@overload fun(index: integer, class: "Overlay", undo: Undo?, count: integer?): Overlay
---@overload fun(index: integer, class: "ShadedOverlay", undo: Undo?, count: integer?): ShadedOverlay
---@overload fun(index: integer, class: "BaseInput", undo: Undo?, count: integer?): BaseInput
---@overload fun(index: integer, class: "GenericImport", undo: Undo?, count: integer?): GenericImport
---@overload fun(index: integer, class: "TextEdit", undo: Undo?, count: integer?): TextEdit
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: "Bar", undo: Undo?, count: integer?): Bar
---@overload fun(index: integer, class: "ExecutorBar", undo: Undo?, count: integer?): ExecutorBar
---@overload fun(index: integer, class: "GlWindowBase", undo: Undo?, count: integer?): GlWindowBase
---@overload fun(index: integer, class: "Window", undo: Undo?, count: integer?): Window
---@overload fun(index: integer, class: "PoolLayoutGrid", undo: Undo?, count: integer?): PoolLayoutGrid
---@overload fun(index: integer, class: "UiScreen", undo: Undo?, count: integer?): UiScreen
---@overload fun(index: integer, class: "UIObjectFake", undo: Undo?, count: integer?): UIObjectFake
---@overload fun(index: integer, class: "Button", undo: Undo?, count: integer?): Button
---@overload fun(index: integer, class: "PropertyControl", undo: Undo?, count: integer?): PropertyControl
---@overload fun(index: integer, class: "IndicatorControl", undo: Undo?, count: integer?): IndicatorControl
---@overload fun(index: integer, class: "PropertyInput", undo: Undo?, count: integer?): PropertyInput
---@overload fun(index: integer, class: "AppearanceInput", undo: Undo?, count: integer?): AppearanceInput
---@overload fun(index: integer, class: "ScribbleInput", undo: Undo?, count: integer?): ScribbleInput
---@overload fun(index: integer, class: "BaseStateButton", undo: Undo?, count: integer?): BaseStateButton
---@overload fun(index: integer, class: "ToggleButton", undo: Undo?, count: integer?): ToggleButton
---@overload fun(index: integer, class: "SwipeButton", undo: Undo?, count: integer?): SwipeButton
---@overload fun(index: integer, class: "LogoButton", undo: Undo?, count: integer?): LogoButton
---@overload fun(index: integer, class: "ContextButton", undo: Undo?, count: integer?): ContextButton
---@overload fun(index: integer, class: "IndicatorButton", undo: Undo?, count: integer?): IndicatorButton
---@overload fun(index: integer, class: "TitleButton", undo: Undo?, count: integer?): TitleButton
---@overload fun(index: integer, class: "PlaceHolderBase", undo: Undo?, count: integer?): PlaceHolderBase
---@overload fun(index: integer, class: "PlaceHolder", undo: Undo?, count: integer?): PlaceHolder
---@overload fun(index: integer, class: "ScrollableItemList", undo: Undo?, count: integer?): ScrollableItemList
---@overload fun(index: integer, class: "UITab", undo: Undo?, count: integer?): UITab
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): UIObject
function LineEdit:Insert(index, class, undo, count) end
---@generic T : LineEditExt|SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView|KeybSCEdit|MacrolineEdit|NumInputEdit|CmdlineEdit
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "UIObject", undo: Undo?): UIObject
---@overload fun(class: "UiFader", undo: Undo?): UiFader
---@overload fun(class: "UIGridCellBase", undo: Undo?): UIGridCellBase
---@overload fun(class: "UILayoutGrid", undo: Undo?): UILayoutGrid
---@overload fun(class: "AutoLayout", undo: Undo?): AutoLayout
---@overload fun(class: "Drawable", undo: Undo?): Drawable
---@overload fun(class: "Overlay", undo: Undo?): Overlay
---@overload fun(class: "ShadedOverlay", undo: Undo?): ShadedOverlay
---@overload fun(class: "BaseInput", undo: Undo?): BaseInput
---@overload fun(class: "GenericImport", undo: Undo?): GenericImport
---@overload fun(class: "TextEdit", undo: Undo?): TextEdit
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: "Bar", undo: Undo?): Bar
---@overload fun(class: "ExecutorBar", undo: Undo?): ExecutorBar
---@overload fun(class: "GlWindowBase", undo: Undo?): GlWindowBase
---@overload fun(class: "Window", undo: Undo?): Window
---@overload fun(class: "PoolLayoutGrid", undo: Undo?): PoolLayoutGrid
---@overload fun(class: "UiScreen", undo: Undo?): UiScreen
---@overload fun(class: "UIObjectFake", undo: Undo?): UIObjectFake
---@overload fun(class: "Button", undo: Undo?): Button
---@overload fun(class: "PropertyControl", undo: Undo?): PropertyControl
---@overload fun(class: "IndicatorControl", undo: Undo?): IndicatorControl
---@overload fun(class: "PropertyInput", undo: Undo?): PropertyInput
---@overload fun(class: "AppearanceInput", undo: Undo?): AppearanceInput
---@overload fun(class: "ScribbleInput", undo: Undo?): ScribbleInput
---@overload fun(class: "BaseStateButton", undo: Undo?): BaseStateButton
---@overload fun(class: "ToggleButton", undo: Undo?): ToggleButton
---@overload fun(class: "SwipeButton", undo: Undo?): SwipeButton
---@overload fun(class: "LogoButton", undo: Undo?): LogoButton
---@overload fun(class: "ContextButton", undo: Undo?): ContextButton
---@overload fun(class: "IndicatorButton", undo: Undo?): IndicatorButton
---@overload fun(class: "TitleButton", undo: Undo?): TitleButton
---@overload fun(class: "PlaceHolderBase", undo: Undo?): PlaceHolderBase
---@overload fun(class: "PlaceHolder", undo: Undo?): PlaceHolder
---@overload fun(class: "ScrollableItemList", undo: Undo?): ScrollableItemList
---@overload fun(class: "UITab", undo: Undo?): UITab
---@overload fun(class: nil, undo: Undo?): UIObject
function LineEdit:Find(class, undo) end