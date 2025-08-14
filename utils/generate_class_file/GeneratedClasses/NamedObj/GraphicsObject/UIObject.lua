---@meta

---@class UIObject: GraphicsObject This is a base class for any UI control(widget) class
---@field X Graphics.SizeDescriptor Absolute horizontal position in pixels of the top - left corner of the object
---@field Y Graphics.SizeDescriptor Absolute vertical position in pixels of the top - left corner of the object
---@field W Graphics.SizeDescriptor Absolute or relative width in pixels or percent
---@field H Graphics.SizeDescriptor Absolute or relative height in pixels or percent
---@field AbsRect {left: number, right: number, top: number, bottom: number}
---@field AbsClientRect {left: number, right: number, top: number, bottom: number}
---@field Texture Texture A name reference of the texture that should be used. Defined in the 'graphics.textures.xml' file
---@field Font Font Font of this object, which the text will be renderd with on low dpi displays.
---@field LowDpiFont Font Font that is used if encoder bar is on letter box display
---@field Text string Text of this object
---@field ToolTip string Tooltip of this object which will be displayed in the empty command line
---@field HelpTopic string HelpTopic of this object which will be displayed in the help viewer
---@field BackColor Color A name reference of the background color that should be used for this object. Defined in the 'theme.xml' file
---@field TextColor Color A name reference of the text color that should be used for this object. Defined in the 'theme.xml' file
---@field TextShadowColor Color A name reference of the text shadow color that should be used for this object. Defined in the 'theme.xml' file
---@field MixInBackColor Color A name reference of the color that should be mixed in with this object's background color used. Defined in the 'theme.xml' file
---@field HighlightedColor Color A name reference of the color that should used for the linked label highlighting
---@field TextVertical integer Defines if text should be rendered vertically
---@field TextAutoAdjust integer Defines if text should be automatically adjusted in terms of line breaks, font size
---@field TextUniform integer if true, we don't try to use the maximum available space, but the output across different UI elements will be on the same level
---@field FrameWidth integer The width of the frame in pixels which displays for example the hover or the selected state.
---@field Padding {left: integer, right: integer, top: integer, bottom: integer} Space from the border of the object to the content. Notation: (left,top,right,bottom)
---@field Focus FocusPriority
---@field UserRights UserRights
---@field Visible integer If this property is set to No/False/Off this object and all of its children are not rendered, they don't receive any input events (mouse, keyboard, touch...)
---@field CanCoExistWithModal integer If true, modal doesn't get auto-closed when this UIObject receives auto-close-triggering-events
---@field UserVisible integer A user configurable visibility flag
---@field Enabled integer
---@field Interactive integer
---@field Transparent integer If this property is set to Yes/True/On only children of this object will be rendered but not the object itself
---@field BlockClickThru integer If this property is set to Yes/True/On one can not click through this object, although it might be transparent
---@field UserInteracted integer A flag to test, if a user interacted with this ui element.
---@field HasHover integer Enables hover animation for this object.
---@field Separator integer Indicator if control is a separator.
---@field HasPressedAnimation integer Enables pressed animation for this object.
---@field ContentDriven integer
---@field ContentWidth integer
---@field ContentHeight integer
---@field ForceContentMin integer If set to 'Yes' the list will request it's best size as it's minimum
---@field WantsNumericRedirect integer
---@field CloseAction GestureResult If clicked on this element, the surrounding dialog may automatically close.
---@field AutoCloseValue integer Provides a resulting value for a dialog being closed.
---@field UiGroupId integer UiGroupId for parent Autolayout object.
---@field LabelLinkHandle UIObject Optional link to handlebase identifier for linked UIObject.
---@field IgnoreBackdropPadding integer If this property is set to No/False/Off the client padding of the backdrop will be ignored
---@field MixInBackColorFromParent integer
---@field FocusSearchPolicy integer
---@field IgnoreRequestedSize integer
---@field ForceEncoderBar integer
---@field SuppressOverlayAutoClose integer
---@field IsClosing integer
---@field TextShadow integer Enables/disables shadow effect for the text
---@field MinSize Graphics.SizeDimension Specifies the minimum size of the object. Notation: width,height
---@field MaxSize Graphics.SizeDimension Specifies the maximum size of the object. Notation: width,height
---@field Anchors {left: integer, right: integer, top: integer, bottom: integer} Specifies where the border of the object is anchored in the parent. This is zero normized. Notation: (left,top,right,bottom). Minus one means no anchoring
---@field SignalValue string
---@field SignalValueHold string
---@field AlignmentH AlignmentH Specifies the horizontal alingment of the object inside its parent.
---@field AlignmentV AlignmentV Specifies the vertical alingment of the object inside its parent.
---@field TextAlignmentH AlignmentH Specifies the horizontal alingment of the text inside the object.
---@field TextAlignmentV AlignmentV Specifies the vertical alingment of the text inside the object.
---@field Margin {left: integer, right: integer, top: integer, bottom: integer} Space from the parent object borders to the border of the object. Notation: (left,top,right,bottom)
---@field PluginComponent Component
---@field HasFocus boolean
---@field HideFocusFrame boolean
---@field AppearanceSourceClassName string
---@field VisibleOnlyInAlpha integer Controls whether only for this type of build the UI object is visible
---@field VisibleOnlyInBeta integer Controls whether only for this type of build the UI object is visible
---@field VisibleOnlyInRelease integer Controls whether only for this type of build the UI object is visible
---@field ClickNearest integer Controls whether UI object is clicking the nearest child.
---@field VisibleInAlpha integer Controls visibility of the UI object for alpha versions of builds
---@field VisibleInBeta integer Controls visibility of the UI object for alpha versions of builds
---@field VisibleInRelease integer Controls visibility of the UI object for alpha versions of builds
---@field Clicked fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer) 0:str;1:Button(0 - left, 1 - middle, 2 - right);2:X(px);3:Y(px)
---@field ClickedLeft fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field ClickedRight fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field DoubleClicked fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer) 0:str;1:Button(0 - left, 1 - middle, 2 - right);2:X(px);3:Y(px)
---@field MouseEnter fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseLeave fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseOverHold fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseUp fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer) 0:str;1:Button(0 - left, 1 - middle, 2 - right);2:X(px);3:Y(px)
---@field MouseUpLeft fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseUpRight fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseDown fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer) 0:str;1:Button(0 - left, 1 - middle, 2 - right);2:X(px);3:Y(px)
---@field MouseDownLeft fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseDownRight fun(str: string, X: integer, Y: integer) 0:str;1:X(px);2:Y(px)
---@field MouseDownHold fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer) 0:str;1:Button(0 - left, 1 - middle, 2 - right);2:X(px);3:Y(px)
---@field KeyDown fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean) 0:str;1:key code
---@field KeyUp fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean) 0:str;1:key code
---@field CharInput fun(str: string, utf32Char: integer) 0:str;1:utf32 char
---@field TouchStart fun(str: string, pointID: integer, X: integer, Y: integer) 0:str;1:point id;2:X(px);3:Y(px)
---@field TouchUpdate fun(str: string, pointID: integer, X: integer, Y: integer) 0:str;1:point id;2:X(px);3:Y(px)
---@field TouchEnd fun(str: string, pointID: integer, X: integer, Y: integer) 0:str;1:point id;2:X(px);3:Y(px)
---@field OnLoad fun(str: string, obj: Object) your description here
---@field OnVisible fun(str: string, bool: boolean) your description here
---@field DescriptionChanged fun(str: string) your description here
---@field FocusGet fun(str: string, obj1: Object, obj2: Object)
---@field FocusLost fun(str: string, obj1: Object, obj2: Object)
---@field ForceIntensity integer
local UIObject = {
    X="0",
    Y="0",
    W="100%",
    H="100%",
    Texture="corner0",
    BackColor="UIObject.Background",
    TextColor="UIObject.Text",
    TextShadowColor="UIObject.TextShadow",
    HighlightedColor="Global.Selected",
    TextVertical="No",
    TextAutoAdjust="No",
    TextUniform="Yes",
    FrameWidth="0",
    Padding="0,0,0,0",
    Focus="Never",
    UserRights="View",
    Visible="Yes",
    CanCoExistWithModal="Yes",
    UserVisible="Yes",
    Enabled="Yes",
    Interactive="Yes",
    Transparent="No",
    BlockClickThru="No",
    UserInteracted="No",
    HasHover="Yes",
    Separator="No",
    HasPressedAnimation="Yes",
    ContentDriven="No",
    ContentWidth="Yes",
    ContentHeight="Yes",
    ForceContentMin="No",
    WantsNumericRedirect="No",
    CloseAction="None",
    AutoCloseValue="0",
    UiGroupId="0",
    IgnoreBackdropPadding="No",
    MixInBackColorFromParent="No",
    FocusSearchPolicy="Default",
    IgnoreRequestedSize="No",
    ForceEncoderBar="No",
    SuppressOverlayAutoClose="No",
    IsClosing="No",
    TextShadow="No",
    MinSize="0,0",
    MaxSize="0,0",
    Anchors="-1,-1,-1,-1",
    AlignmentH="Left",
    AlignmentV="Top",
    TextAlignmentH="Center",
    TextAlignmentV="Center",
    Margin="0,0,0,0",
    VisibleOnlyInAlpha="No",
    VisibleOnlyInBeta="No",
    VisibleOnlyInRelease="No",
    ClickNearest="No",
    VisibleInAlpha="Yes",
    VisibleInBeta="Yes",
    VisibleInRelease="Yes",
    Clicked="out:(s;u1;i2;i2;)",
    ClickedLeft="out:(s;i2;i2;)",
    ClickedRight="out:(s;i2;i2;)",
    DoubleClicked="out:(s;u1;i2;i2;)",
    MouseEnter="out:ShowToolTip(s;i2;i2;)",
    MouseLeave="out:HideToolTip(s;i2;i2;)",
    MouseOverHold="out:(s;i2;i2;)",
    MouseUp="out:(s;u1;i2;i2;)",
    MouseUpLeft="out:(s;i2;i2;)",
    MouseUpRight="out:(s;i2;i2;)",
    MouseDown="out:(s;u1;i2;i2;)",
    MouseDownLeft="out:(s;i2;i2;)",
    MouseDownRight="out:(s;i2;i2;)",
    MouseDownHold="out:(s;u1;i2;i2;)",
    KeyDown="out:(s;i2;b;b;b;)",
    KeyUp="out:(s;i2;b;b;b;)",
    CharInput="out:(s;u4;)",
    TouchStart="out:(s;i4;i2;i2;)",
    TouchUpdate="out:(s;i4;i2;i2;)",
    TouchEnd="out:(s;i4;i2;i2;)",
    OnLoad="out:(s;o;)",
    OnVisible="out:(s;b;)",
    DescriptionChanged="out:(s;)",
    FocusGet="out:(s;o;o;)",
    FocusLost="out:(s;o;o;)",
    ForceIntensity="0"
}
---@return "UIObject"
function UIObject:GetClass() end
---@return "UIObject"
function UIObject:GetChildClass() end
---@return UIObject
function UIObject:Parent() end
---@param index integer
---@return UIObject
function UIObject:Ptr(index) end
---@return UIObject[]
function UIObject:Children() end
---@return UIObject?
function UIObject:CurrentChild() end
---@overload fun(name: "AlignmentH"|"TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "AlignmentV"|"TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "CloseAction", role: nil): GestureResult
---@overload fun(name: "X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "Texture", role: nil): Texture
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "HasFocus"|"HideFocusFrame"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"AutoCloseValue"|"UiGroupId"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Padding"|"Anchors"|"Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function UIObject:Get(name, role) end
---@generic T : SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|LineEdit|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
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
function UIObject:Create(index, class, undo) end
---@generic T : SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|LineEdit|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
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
function UIObject:Append(class, undo, count) end
---@generic T : SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|LineEdit|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView
---@param class `T`
---@param undo Undo?
---@return T
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
function UIObject:Acquire(class, undo) end
---@generic T : SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|LineEdit|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView
---@param class `T`
---@param undo Undo?
---@return T
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
---@deprecated use "Acquire" instead
function UIObject:Aquire(class, undo) end
---@generic T : SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|LineEdit|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
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
function UIObject:Insert(index, class, undo, count) end
---@generic T : SampleTableView|Toolbar|GrandMasterFader|HardwareFader|ShaperPovFader|ColorInterfaceFader|DeskLightsFader|ProgressBar|DCRemoteInfo|TimelineCell|ScrollBar|ScrollContainer|Dialog|UIGridConfigLayout|TitleAutoLayout|StepControl|ScrollContainerPageBase|FrameBufferObject|Navigator|PropertyBox|SwipeMenuOverlay|RecurringOverlay|NotificationArea|ColorInput|Popup|TextInput|NumericInput|ImageInput|ViewInput|UIDMXPatch|InsertFixturesWizard|CopyStoreCueMessageBoxBase|GenericAssignmentInput|FixtureTypeImport|CloneAtFilterSelector|OSMidiSelect|DatumInput|TimezoneInput|XlrPortInput|MessageBox|EncoderOverlay|PatchToOverlay|GenericContext|GenericEditorOverlay|HelpPopup|NetworkSpeedTestOverlay|ColorMeasurementOverlay|ContentOverlay|OffMenuOverlay|MainDialog|CommandLineHistory|PoolOverlay|MeshLineEdit|ObjectProperties|VirtualKeyboard|GraphicsEncoderBar|ExecutorBarXKeys|RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|CommandLineWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|DialogTrackpad|UserPoolLayoutGrid|ScribblePoolLayoutGrid|GroupPoolLayoutGrid|ConfigurationPoolLayoutGrid|FilterPoolLayoutGrid|LayoutPoolLayoutGrid|ImagePoolLayoutGrid|RenderQualityPoolLayoutGrid|SmartViewPoolLayoutGrid|WorldPoolLayoutGrid|UniversePoolLayoutGrid|DataPoolLayoutGrid|SymbolPoolLayoutGrid|EncoderBarPoolLayoutGrid|GeneratorBitmapPoolLayoutGrid|GoboPoolLayoutGrid|GelPoolLayoutGrid|CameraPoolLayoutGrid|ViewPoolLayoutGrid|TimecodeSlotLayoutGrid|RunningPlaybacksPoolLayoutGrid|PresetPoolLayoutGrid|TimecodePoolLayoutGrid|PagePoolLayoutGrid|SequencePoolLayoutGrid|PluginPoolLayoutGrid|MeshPoolLayoutGrid|ViewBar|AppearancePoolLayoutGrid|MatricksPoolLayoutGrid|TagPoolLayoutGrid|QuickeyPoolLayoutGrid|MenuPoolLayoutGrid|SoundPoolLayoutGrid|VideoPoolLayoutGrid|GeneratorRandomPoolLayoutGrid|TimePoolLayoutGrid|MaterialPoolLayoutGrid|MacroPoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|BladeView|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|BaseItemButtons|UIGridInternals|AudioPreview|XlrModeButton|SpecialExecConfigInput|OSCActivityButton|TitlebuttonControl|ColorPropertyInput|ExecConfigInput|TCTimeButton|CalculatorChannelSetControl|EncoderControl|DialogButton|StateButton|ValueControl|ToggleButtonList|ObjectSelector|UserEncoderPageSelector|ExecConfigSwipe|EnableMasterFaderButton|EncoderLinkButton|EditTitlebarButton|ValueFadeControl|SelectionIndicatorButton|MatricksToggleButton|ExecConfigRowButton|AtFilterControl|MainDlgGridToggleButton|ExecConfigColButton|SpecialExecutorKey|MatricksIndicatorButton|UIToggleButton|RotationButton|KeyboardShortcutControl|BatteryControl|AtFilterPreview|UIGridConfigButton|ScrollBarButton|MovableButton|DeleteWindowButton|VirtualKeyboardButton|KBShortcutButton|ExpandableButton|TimerButton|MainDlgButtonBase|MainDlgLoginButton|TimecodeSlotButton|DisplayButton|MainDlgUndoButton|BlinkingFadeButton|WarningInfoButton|EjectButton|DimmerWheelButton|MouseButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|RevertButton|EncoderOverlayPlaceholder|ModalPlaceholder|EncoderBarPlaceHolder|PopupPlaceholder|LineEdit|ColorView|SensorView|DialogContainer|PopupList|DBObjectTab|RadioButtonList|FixturetypeItemList|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|TimecodeSlotInfo|TextView|TouchConfigurator|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|CommandLineOutput|SoundLevelView|PerformanceView|ColorTestView|InfoNotesGridScroller|TouchTarget|EditorBase|OutputTest|ColorPickBase|SignalView|ShaperTestView
---@param class `T`
---@param undo Undo?
---@return T
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
function UIObject:Find(class, undo) end
---@generic T : KeyRegistry|MediaPools|GroupPoolSettingsCollect|WindowAppearance|RdmWindowSettingsCollect|StorePreferencesSequence|WindowPhaserEditorSettingsCollect|Drive|DeactivationGroups|TimecodeWindowSettingsCollect|Hardkeys|SpecialExecutorPages|UIChannel|Relations|GridContentFilterBase|TagFakeObject|Attributes|RunningPlaybacksSettingsCollect|DeskLightsSet|TimecodeSlots|FTMacros|TagReference|PresetShapersPoolSettingsCollect|Classes|PhysicalPropertiesData|ProgUpdateCollect|CRI|ViewButton|Layers|MVRFileCollect|Break|Models|SequenceSelection|PinPatch|FixtureSheetSettingsCollect|UserEnvironment|PresetGoboPoolSettingsCollect|PresetColorPoolSettingsCollect|FilterPoolSettingsCollect|MidiSettings|ColorDefCollect|UdpProtocol|PowerConsumption|MacroPoolSettingsCollect|GridData|TimecodeWindowSharedData|SoftwareVersions|MidiInDescriptions|PsrExtraData|TimecodePoolSettingsCollect|TempStoreSettings|TempNetworkRemoteInterfaceCollect|Masters|CommandlineWindowSettingsCollect|SysmonWindowSettingsCollect|SubfixtureOverview|ExecConfigPoolSettingsCollect|Library|TimeLogBuffer|Cmdlines|RecipeEditor|DeskLightsCollect|AttributeDefinitions|FTMacro|FTFilter|MVRService|MVRServiceInterface|HardwareConfiguration|EncoderBank|Timezone|OutputStationCollect|ColorSpaceData|FeatureGroup|GridContentFilterItem|Configurations|Materials|Quickeys|Patterns|Timers|Tags|Views|RenderQualities|Worlds|Bitmaps|Timecodes|MAtricks|CachedObjectPool|Appearances|Layouts|Cameras|Pages|GelPool|Filters|Generators|Scribbles|Groups|EncoderBarPool|DataPools|Macros|GridColumnFilter|Variables|RDMFixtureType|Feature|ActivationGroup|OutputStation|RenderQuality|WindowSettings|Stage|EncoderBar|Quickey|Selection|World|Class|Pool|Camera|Layout|Timecode|ShowData|Configuration|AgendaEvent|Page|TimeRange|System|Scribble|Tag|MacroLine|Timer|Element|LayoutElementDefaults|OSCData|Remote|Macro|DmxCurve|User|Track|sACNData|DmxUniverse|ScreenConfig|Appearance|Plugin|FixtureLayer|CachedObj|View|Gel|UserProfile|Master|ViewWidget|MasterPool|KeyboardLayout|FixtureTypeModeFile|EncoderPage|FTPreset|Gamut|OutputConfiguration|ColorThemeContent|DeactivationGroup|MVRLocalFile|AudioInDeviceDescription|WindowType|Tracker|Emitter|GridColumn|NDISource|AddonApi|Undo|Parameter|USBDeviceContainer|TrackGroup|Wheel|IDs|MetaFile|Attribute|Connector|RDMFixture|USBDevice|Relation|Facet|ViewButtonScreen|File|TypedNamedObj|DefaultDisplayPositions|Model|Session|Key|DMXMode|GridColumnConfiguration|Addon|PluginPreferences|MIDIDeviceDescription|MonitorCollect|GraphicsRoot|Resolution|Monitor|ShaderProgram|Font|Texture|ShaderProgramCollect|ItemCollect|Item|TextureCollect|DisplayCollect|Shader|Textures|TimeConfig|StorePreferencesExec|HelperWindowSettingsCollect|WindowInfoSettingsCollect|TagFakeCollect|FixtureFilterRuleItemBase|Connectors|Addons|Measurement|MacroDMX|ConvertTask|MessageCategory|StorePreferencesPreset|ClockWindowSettingsCollect|Encoder|PhysicalProperties|AddonVariables|ScreenEncoder|FakeValueSensor|Parameters|WindowSettingsCollect|ExtensionConfigurations|NtpMonitor|ShowMetaDataCollect|Timezones|GridColumnConfigurationCollect|Hardkey|DefaultDisplayPositionsCollect|Root|Interface|BatteryStatus|MatricksPoolSettingsCollect|HardwareConfigurations|GeneratorConfiguration|GeneratorTypes|GeneratorBaseChannel|TimerPoolSettingsCollect|StorePreferencesTimer|MacroDMXStep|FaderDefinition|DmxAddresses|DMXAddress|DmxUniverses|StorePreferencesViews|FTFilters|GamutCollect|ConfigEntry|ReleaseFile|WindowTypes|OutputStations|VirtualKey|PresetDimmerPoolSettingsCollect|LayoutViewSettingsCollect|PoolSettingsCollect|Interfaces|EncoderDefinition|FaderDefinitions|LogInterface|PluginPoolSettingsCollect|DMXModes|DefaultDisplayPosition|Emitters|PultCollect|PatchFilter|Collection|ViewButtonScreens|UserAttribute|MidiOutDescriptions|KeyModifier|FixtureTypesOverview|ScreenEncoderDirection|PresetControlPoolSettingsCollect|StationSettings|KeyboardLayouts|RunningPlaybacksCollect|StorePreferencesGroup|TimecodeWindowSharedContainer|GridSelection|PluginPreferencesCollect|ActivationGroups|WindowAgendaSettingsCollect|VKValue|FTRDMPersonalityCollect|DmxSheetSettingsCollect|ProgUpdate|PresetAllPoolSettingsCollect|DisplaySurfaces|Revision|EncoderDefinitions|SubTrack|DMXChannels|WebSocketsConnection|ColorSpaceCollect|VirtualKeys|ProgLayer|PsrFakeFixture|SoundChannels|RTChannels|SysteminfoWindowSettingsCollect|GridBase|StorePreferences|PsrFixtures|Personality|Certificates|PatchFakeObject|AutoCreateSettings|LayoutElementDefaultsCollect|CRIGroup|GridColumnFilterCollect|UserAttributePreferences|MAPacket|Environments|GridContentFilterSettings|DMXRoot|GridLine|MouseCollect|PlaybackWindowSettingsCollect|ShowMetaData|TypedObject|SoundSettings|RDMFixtureTypes|Device|GelPoolSettingsCollect|DmxCurvePoint|PresetVideoPoolSettingsCollect|DefaultPlaybackSettings|KeyboardKey|CRIs|Stages|BitmapChannels|RandomChannels|AudioInDescriptions|FixtureTypes|LocalSettings|Undos|Wheels|ExecutorKeyStatus|MessagePriority|SequenceSheetSettingsCollect|RDMPort|ScreenConfigurations|MeasurementPoint|HardwareStatus|ShowSettings|DisplaySurface|TabRegistry|PlaybackTable|SelectionViewSettingsCollect|DriveCollect|UserProfiles|ColorTheme|SoundChannel|FixtureFilterRules|LoadedPlaybacks|PatchFakeCollect|LedDefinitions|FixtureTypeFake|UsbNotifier|Event|TempMVRExchange|DmxCurves|MessageCenter|TempNetworkInterfaces|FTPresets|Remotes|GlobalSettings|DMX|BitmapPoolSettingsCollect|ColorGroups|WorldPoolSettingsCollect|NDI|LedDefinition|FilterRuleFixture|SoftwareVersion|EncoderBarWindowSettingsCollect|FTSubfixture|Temp|ExtensionConfig|PresetFocusPoolSettingsCollect|Protocols|DMXProtocol|sACNDataCollect|BindIndex|ArtNetDataCollect|DMXProtocols|ArtNetNodeCollect|sACNDiscoveryCollect|ScribbleEdit|MessageGridSettingsCollect|Revisions|GeneratorPoolSettingsCollect|KeyboardShortcut|ImportFakeObject|PresetBeamPoolSettingsCollect|TimecodeSlotPoolSettingsCollect|DeviceConfigurations|ExecutorFixation|PresetPositionPoolSettingsCollect|RTChannel|MacroDMXValue|TemporaryWindowSettings|ImportObjectCollect|LayoutCameraObject|Cloud|HostTypes|MAnetSocket|CloudMember|Sessions|FTPresetType|Certificate|MVRServiceCollect|VideoPoolSettingsCollect|FeatureGroups|GelPools|View3DSettingsCollect|TimecodeStatuses|Output|Patch|Cmdline|LayoutPoolSettingsCollect|WebServer|HardwareIoConnectors|PatchFilterItem|PresetDynamicPoolSettingsCollect|Users|RDMPorts|RemoteCollect|SoundPoolSettingsCollect|MVRxchange|AtFilter|GeneratorConfigurations|Agendas|FTPresetValue|StorePreferencesTimecode|NetworkStations|UIChannels|SequencePoolSettingsCollect|TestRGBInterface|PresetPoolSettingsCollect|DMXModeFake|NetworkIP|Pult|QuickeyPoolSettingsCollect|NetworkStation|ModularPlaybackWindowSettingsCollect|Proxy|Devices|WindowScrollPositions|ValueBase|ProgLayers|SmartViewSettingsCollect|SpecialWindowSettingsCollect|ContentSheetSettingsCollect|RDMData|ColorPickerSettingsCollect|KeyboardShortCuts|PagePoolSettingsCollect|OSCBase|ShowDeletedData|IDTypes|SampleTableView|Toolbar|UiFader|NotificationTitle|ProgressBar|DCRemoteInfo|UIGridCellBase|ScrollBar|UILayoutGrid|EncoderBarSlot|Splitter|LinearResizer|UIObjectFake|Button|PlaceHolderBase|LineEdit|ColorView|NotificationIcon|SensorView|DialogContainer|ScrollableItemList|ResizeCorner|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|NotificationText|TimecodeSlotInfo|TextView|TouchConfigurator|InfoNotesLabel|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|MainDialogDummy|EditorSubCategoryButton|CommandLineOutput|InfoNotesLevel|AllExecContent|TreeViewRows|SoundLevelView|PerformanceView|ColorTestView|EditorCategoryButton|InfoNotesGridScroller|TouchTarget|EditorBase|BladeViewButton|OutputTest|BaseSymbol|ColorPickBase|TreeViewRow|SignalView|ShaperTestView
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
---@overload fun(class: "GraphicsObject"): GraphicsObject
---@overload fun(class: "RunningPlaybacks"): RunningPlaybacks
---@overload fun(class: "GeneratorChannels"): GeneratorChannels
---@overload fun(class: "Page-Nr"): PageNr
function UIObject:FindParent(class) end