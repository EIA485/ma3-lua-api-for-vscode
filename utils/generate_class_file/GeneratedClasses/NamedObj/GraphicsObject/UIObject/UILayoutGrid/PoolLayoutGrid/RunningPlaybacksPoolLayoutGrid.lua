---@meta

---@class RunningPlaybacksPoolLayoutGrid: PoolLayoutGrid
---@field PoolColor Color
local RunningPlaybacksPoolLayoutGrid = {
    PoolColor="PoolWindow.Default"
}
---@return "RunningPlaybacksPoolLayoutGrid"
function RunningPlaybacksPoolLayoutGrid:GetClass() end
---@return "PoolButton"
function RunningPlaybacksPoolLayoutGrid:GetChildClass() end
---@param index integer
---@return PoolButton
function RunningPlaybacksPoolLayoutGrid:Ptr(index) end
---@return PoolButton[]
function RunningPlaybacksPoolLayoutGrid:Children() end
---@return PoolButton?
function RunningPlaybacksPoolLayoutGrid:CurrentChild() end
---@overload fun(name: "AlignmentH"|"TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "AlignmentV"|"TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "PoolColor"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "CloseAction", role: nil): GestureResult
---@overload fun(name: "X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "PoolObject", role: nil): Object
---@overload fun(name: "PoolSettings", role: nil): PoolSettings
---@overload fun(name: "SizeX"|"SizeY", role: nil): PoolSizeFactor
---@overload fun(name: "RowReductionPolicy"|"ColReductionPolicy", role: nil): ReductionPolicy
---@overload fun(name: "TitleButtonIcon"|"Texture", role: nil): Texture
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "NoEmptyNames"|"ReactToRecipeEdit"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"HasFocus"|"HideFocusFrame"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SetRow", role: nil): fun(int1: integer, layoutSizePolicy: LayoutSizePolicy, num: number, int2: integer) : boolean
---@overload fun(name: "DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "OnSwipeMenu", role: nil): fun(str: string) : boolean
---@overload fun(name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "OnClick", role: nil): fun(str: string, int1: integer, int2: integer, int3: integer) : boolean
---@overload fun(name: "OnChar", role: nil): fun(str: string, int: integer) : boolean
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"AutoCloseValue"|"UiGroupId"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "SwipeMenu"|"Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Padding"|"Anchors"|"Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "PoolColor"|"SizeX"|"SizeY"|"SwipeMenu"|"PoolObject"|"NoEmptyNames"|"TitleButtonIcon"|"OnClick"|"OnChar"|"OnSwipeMenu"|"PoolSettings"|"ReactToRecipeEdit"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"RowReductionPolicy"|"ColReductionPolicy"|"SetRow"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): PoolButton
function RunningPlaybacksPoolLayoutGrid:Get(name, role) end
---@generic T : PoolButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PoolButton
function RunningPlaybacksPoolLayoutGrid:Create(index, class, undo) end
---@generic T : PoolButton
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PoolButton
function RunningPlaybacksPoolLayoutGrid:Append(class, undo, count) end
---@generic T : PoolButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolButton
function RunningPlaybacksPoolLayoutGrid:Acquire(class, undo) end
---@generic T : PoolButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolButton
---@deprecated use "Acquire" instead
function RunningPlaybacksPoolLayoutGrid:Aquire(class, undo) end
---@generic T : PoolButton
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PoolButton
function RunningPlaybacksPoolLayoutGrid:Insert(index, class, undo, count) end
---@generic T : PoolButton
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolButton
function RunningPlaybacksPoolLayoutGrid:Find(class, undo) end