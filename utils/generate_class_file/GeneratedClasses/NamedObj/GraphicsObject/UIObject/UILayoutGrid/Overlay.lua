---@meta

---@class Overlay: UILayoutGrid A overlay dialog that can perform a modal loop.
---@field Close fun(dummyStr: string) : boolean 0:dummy str
---@field CloseConfirm fun(dummyStr: string) : boolean 0:dummy str
---@field CloseCancel fun(dummyStr: string) : boolean 0:dummy str
---@field WantsModal boolean
---@field AutoClose boolean Overlay will be closed as soon as user tries to interact with UI outside of this overlay
---@field AutoCloseOnOverlay boolean Overlay will be closed as soon as user tries to open another overlay that is not a child of this one
---@field CloseOnEscape boolean
---@field Move fun(str: string, int1: integer, int2: integer) : boolean Action that receives a move signal and performs an actual move of the overlay
---@field MoveStart fun(str: string) : boolean
---@field ResizeStart fun(str: string, int1: integer, int2: integer) : boolean Action that receives a resize signal and performs an actual resize of the overlay
---@field Resize fun(str: string, int1: integer, int2: integer) : boolean Action that receives a resize signal and performs an actual resize of the overlay
---@field ResizeEnd fun(str: string) : boolean Action that receives a resize signal and performs an actual resize of the overlay
---@field EscModalResult GestureResult
---@field StayAlwaysVisible boolean
---@field RelativeToDisplay boolean
---@field EditEncoderBar string
---@field ControlEncoderBar string
---@field AdjustInitialPosition boolean
---@field BuddyGroupId string
---@field IsMainBuddy boolean
---@field MainBuddy Object
---@field DependentBuddies string[]
---@field UseSimplifiedResize boolean
---@field WorkingDestination Object
---@field DriveReset boolean
---@field OverrideKeybSC boolean
---@field ReactToPreview boolean
---@field ReactToEdit boolean
---@field PreviewMixInColor Color
---@field EditMixInColor Color
---@field EditMixInNotOwnerColor Color
---@field ReturnDestination Object
local Overlay = {
    Close="in:CloseOK(s;)",
    CloseConfirm="in:CloseConfirm(s;)",
    CloseCancel="in:CloseCancel(s;)",
    WantsModal="No",
    AutoClose="No",
    AutoCloseOnOverlay="No",
    CloseOnEscape="Yes",
    Move="in:Move(s;i2;i2;)",
    MoveStart="in:MoveStart(s;)",
    ResizeStart="in:ResizeStart(s;i2;i2;)",
    Resize="in:ResizeMove(s;i2;i2;)",
    ResizeEnd="in:ResizeEnd(s;)",
    EscModalResult="Confirm",
    StayAlwaysVisible="Yes",
    RelativeToDisplay="No",
    AdjustInitialPosition="No",
    UseSimplifiedResize="No",
    DriveReset="0",
    OverrideKeybSC="0",
    ReactToPreview="No",
    ReactToEdit="No",
    PreviewMixInColor="Overlay.PreviewMixIn",
    EditMixInColor="Overlay.EditMixIn",
    EditMixInNotOwnerColor="Overlay.EditMixInNotOwner"
}
---@return "Overlay"
function Overlay:GetClass() end
---@return "UIObject"
function Overlay:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "Texture", role: nil): Texture
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "Text"|"ToolTip"|"HelpTopic", role: nil): string
---@overload fun(name: "BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth", role: nil): integer
---@overload fun(name: "Padding", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect", role: nil): integer
---@overload fun(name: "CloseAction", role: nil): GestureResult
---@overload fun(name: "AutoCloseValue"|"UiGroupId", role: nil): integer
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow", role: nil): integer
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "Anchors", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "SignalValue"|"SignalValueHold", role: nil): string
---@overload fun(name: "AlignmentH", role: nil): AlignmentH
---@overload fun(name: "AlignmentV", role: nil): AlignmentV
---@overload fun(name: "TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "HasFocus"|"HideFocusFrame", role: nil): boolean
---@overload fun(name: "AppearanceSourceClassName", role: nil): string
---@overload fun(name: "VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease", role: nil): integer
---@overload fun(name: "Clicked", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "DoubleClicked", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "MouseEnter"|"MouseLeave"|"MouseOverHold", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "MouseUp", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "MouseUpLeft"|"MouseUpRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "MouseDown", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "ForceIntensity"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight", role: nil): integer
---@overload fun(name: "ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay", role: nil): boolean
---@overload fun(name: "RowReductionPolicy"|"ColReductionPolicy", role: nil): ReductionPolicy
---@overload fun(name: "SetRow", role: nil): fun(int1: integer, layoutSizePolicy: LayoutSizePolicy, num: number, int2: integer) : boolean
---@overload fun(name: "Close"|"CloseConfirm"|"CloseCancel", role: nil): fun(dummyStr: string) : boolean
---@overload fun(name: "WantsModal"|"AutoClose"|"AutoCloseOnOverlay"|"CloseOnEscape", role: nil): boolean
---@overload fun(name: "Move", role: nil): fun(str: string, int1: integer, int2: integer) : boolean
---@overload fun(name: "MoveStart", role: nil): fun(str: string) : boolean
---@overload fun(name: "ResizeStart"|"Resize", role: nil): fun(str: string, int1: integer, int2: integer) : boolean
---@overload fun(name: "ResizeEnd", role: nil): fun(str: string) : boolean
---@overload fun(name: "EscModalResult", role: nil): GestureResult
---@overload fun(name: "StayAlwaysVisible"|"RelativeToDisplay", role: nil): boolean
---@overload fun(name: "EditEncoderBar"|"ControlEncoderBar", role: nil): string
---@overload fun(name: "AdjustInitialPosition", role: nil): boolean
---@overload fun(name: "BuddyGroupId", role: nil): string
---@overload fun(name: "IsMainBuddy", role: nil): boolean
---@overload fun(name: "MainBuddy", role: nil): Object
---@overload fun(name: "DependentBuddies", role: nil): string[]
---@overload fun(name: "UseSimplifiedResize", role: nil): boolean
---@overload fun(name: "WorkingDestination", role: nil): Object
---@overload fun(name: "DriveReset"|"OverrideKeybSC"|"ReactToPreview"|"ReactToEdit", role: nil): boolean
---@overload fun(name: "PreviewMixInColor"|"EditMixInColor"|"EditMixInNotOwnerColor", role: nil): Color
---@overload fun(name: "ReturnDestination", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"RowReductionPolicy"|"ColReductionPolicy"|"SetRow"|"Close"|"CloseConfirm"|"CloseCancel"|"WantsModal"|"AutoClose"|"AutoCloseOnOverlay"|"CloseOnEscape"|"Move"|"MoveStart"|"ResizeStart"|"Resize"|"ResizeEnd"|"EscModalResult"|"StayAlwaysVisible"|"RelativeToDisplay"|"EditEncoderBar"|"ControlEncoderBar"|"AdjustInitialPosition"|"BuddyGroupId"|"IsMainBuddy"|"MainBuddy"|"DependentBuddies"|"UseSimplifiedResize"|"WorkingDestination"|"DriveReset"|"OverrideKeybSC"|"ReactToPreview"|"ReactToEdit"|"PreviewMixInColor"|"EditMixInColor"|"EditMixInNotOwnerColor"|"ReturnDestination", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function Overlay:Get(name, role) end
---@param callbackName string
---@param ctx any?
Overlay:OverlaySetCloseCallback(callbackName, ctx)