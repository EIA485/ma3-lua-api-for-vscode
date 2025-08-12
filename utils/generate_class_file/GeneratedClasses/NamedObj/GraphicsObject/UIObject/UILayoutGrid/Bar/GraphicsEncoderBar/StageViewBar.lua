---@meta

---@class StageViewBar: GraphicsEncoderBar
---@field FactoryDefaults fun(str: string, int1: integer, int2: integer, int3: integer) : boolean FactoryDefaultsProperty
---@field RotateToCircleCenter fun(str: string, int1: integer, int2: integer, int3: integer) : boolean RotateToCircleCenterProperty
---@field Rotate90ToLine fun(str: string, int1: integer, int2: integer, int3: integer) : boolean Rotate90ToLineProperty
---@field ResetUnusedAxis fun(str: string, int1: integer, int2: integer, int3: integer) : boolean ResetUnusedAxisProperty
---@field ResetRotation fun(str: string, int1: integer, int2: integer, int3: integer) : boolean ResetRotationProperty
---@field ResetPosition fun(str: string, int1: integer, int2: integer, int3: integer) : boolean ResetPositionProperty
---@field Show3DSettings fun(str: string, int1: integer, int2: integer, int3: integer) : boolean Show3DSettings
---@field CenterPosition fun(str: string, int1: integer, int2: integer, int3: integer) : boolean CenterPositionProperty
---@field ArrangePosition fun(str: string, int1: integer, int2: integer, int3: integer) : boolean ArrangePositionProperty
---@field Oops fun(str: string, int1: integer, int2: integer, int3: integer) : boolean OopsProperty
local StageViewBar = {
    FactoryDefaults="in:FactoryDefaults(s;u1;i2;i2;)",
    RotateToCircleCenter="in:RotateToCircleCenter(s;u1;i2;i2;)",
    Rotate90ToLine="in:Rotate90ToLine(s;u1;i2;i2;)",
    ResetUnusedAxis="in:ResetUnusedAxis(s;u1;i2;i2;)",
    ResetRotation="in:ResetRotation(s;u1;i2;i2;)",
    ResetPosition="in:ResetPosition(s;u1;i2;i2;)",
    Show3DSettings="in:Show3DSettings(s;u1;i2;i2;)",
    CenterPosition="in:CenterPosition(s;u1;i2;i2;)",
    ArrangePosition="in:ArrangePosition(s;u1;i2;i2;)",
    Oops="in:Oops(s;u1;i2;i2;)"
}
---@return "StageViewBar"
function StageViewBar:GetClass() end
---@return "UIObject"
function StageViewBar:GetChildClass() end
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
---@overload fun(name: "DependsOnLinkedObject", role: nil): boolean
---@overload fun(name: "LinkedObject", role: nil): UIObject
---@overload fun(name: "LinkedObjectChanged", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "FadeEncoder", role: nil): boolean
---@overload fun(name: "Context", role: nil): EncoderBarContext
---@overload fun(name: "FactoryDefaults"|"RotateToCircleCenter"|"Rotate90ToLine"|"ResetUnusedAxis"|"ResetRotation"|"ResetPosition"|"Show3DSettings"|"CenterPosition"|"ArrangePosition"|"Oops", role: nil): fun(str: string, int1: integer, int2: integer, int3: integer) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"RowReductionPolicy"|"ColReductionPolicy"|"SetRow"|"DependsOnLinkedObject"|"LinkedObject"|"LinkedObjectChanged"|"FadeEncoder"|"Context"|"FactoryDefaults"|"RotateToCircleCenter"|"Rotate90ToLine"|"ResetUnusedAxis"|"ResetRotation"|"ResetPosition"|"Show3DSettings"|"CenterPosition"|"ArrangePosition"|"Oops", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function StageViewBar:Get(name, role) end
