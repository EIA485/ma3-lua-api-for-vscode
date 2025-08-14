---@meta

---@class UiScreen: UILayoutGrid An area where a user can arrange different views (objects of types derived from a Window class)
---@field DelimiterTexture Texture
---@field DelimiterColor Color
---@field ActiveDelimiterColor Color
---@field DelimiterSize integer
---@field SelectionFrame Texture
---@field BlockerTexture Texture
---@field BlockerColor Color
---@field WindowRect {left: number, right: number, top: number, bottom: number}
---@field ViewW integer
---@field ViewH integer
local UiScreen = {
    DelimiterColor="Screen.DelimiterColor",
    ActiveDelimiterColor="Screen.ActiveDelimiterColor",
    DelimiterSize="3",
    SelectionFrame="SelectionFrame",
    BlockerTexture="corner0",
    BlockerColor="Global.Inactive",
    ViewW="0",
    ViewH="0"
}
---@return "UiScreen"
function UiScreen:GetClass() end
---@return "Window"
function UiScreen:GetChildClass() end
---@param index integer
---@return Window
function UiScreen:Ptr(index) end
---@return Window[]
function UiScreen:Children() end
---@return Window?
function UiScreen:CurrentChild() end
---@overload fun(name: "AlignmentH"|"TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "AlignmentV"|"TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "DelimiterColor"|"ActiveDelimiterColor"|"BlockerColor"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "CloseAction", role: nil): GestureResult
---@overload fun(name: "X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "RowReductionPolicy"|"ColReductionPolicy", role: nil): ReductionPolicy
---@overload fun(name: "DelimiterTexture"|"SelectionFrame"|"BlockerTexture"|"Texture", role: nil): Texture
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"HasFocus"|"HideFocusFrame"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SetRow", role: nil): fun(int1: integer, layoutSizePolicy: LayoutSizePolicy, num: number, int2: integer) : boolean
---@overload fun(name: "DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "DelimiterSize"|"ViewW"|"ViewH"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"AutoCloseValue"|"UiGroupId"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Padding"|"Anchors"|"Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "WindowRect"|"AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "DelimiterTexture"|"DelimiterColor"|"ActiveDelimiterColor"|"DelimiterSize"|"SelectionFrame"|"BlockerTexture"|"BlockerColor"|"WindowRect"|"ViewW"|"ViewH"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"RowReductionPolicy"|"ColReductionPolicy"|"SetRow"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Window
function UiScreen:Get(name, role) end
---@generic T : RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|MessageCenterWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|ResultPoolWindow|RunningPlaybacksWindow|CommandLineWindow|AllPoolWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Window", undo: Undo?): Window
---@overload fun(index: integer, class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(index: integer, class: nil, undo: Undo?): Window
function UiScreen:Create(index, class, undo) end
---@generic T : RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|MessageCenterWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|ResultPoolWindow|RunningPlaybacksWindow|CommandLineWindow|AllPoolWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Window", undo: Undo?, count: integer?): Window
---@overload fun(class: "PoolWindow", undo: Undo?, count: integer?): PoolWindow
---@overload fun(class: nil, undo: Undo?, count: integer?): Window
function UiScreen:Append(class, undo, count) end
---@generic T : RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|MessageCenterWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|ResultPoolWindow|RunningPlaybacksWindow|CommandLineWindow|AllPoolWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Window", undo: Undo?): Window
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: nil, undo: Undo?): Window
function UiScreen:Acquire(class, undo) end
---@generic T : RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|MessageCenterWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|ResultPoolWindow|RunningPlaybacksWindow|CommandLineWindow|AllPoolWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Window", undo: Undo?): Window
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: nil, undo: Undo?): Window
---@deprecated use "Acquire" instead
function UiScreen:Aquire(class, undo) end
---@generic T : RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|MessageCenterWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|ResultPoolWindow|RunningPlaybacksWindow|CommandLineWindow|AllPoolWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Window", undo: Undo?, count: integer?): Window
---@overload fun(index: integer, class: "PoolWindow", undo: Undo?, count: integer?): PoolWindow
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Window
function UiScreen:Insert(index, class, undo, count) end
---@generic T : RecipeWindow|ContentWindow|StatusWindow|PhaserViewWindow|WindowTrackpad|WindowAgenda|SystemMonitorWindow|PlaybackViewWindow|ClockWindow|SequenceWindow|TimecodeWindow|MessageCenterWindow|CommandWingBarWindow|WindowInfo|LayoutView|WindowHelpViewer|SelectionViewWindow|ResultPoolWindow|RunningPlaybacksWindow|CommandLineWindow|AllPoolWindow|WindowEncoderBar|SpecialWindow|XKeysViewWindow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Window", undo: Undo?): Window
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: nil, undo: Undo?): Window
function UiScreen:Find(class, undo) end