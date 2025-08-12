---@meta

---@class DialogContainer: UIObject
---@field ActiveChild string Defines the name of the currently visible child
---@field ChangeActive fun(childName: string) : boolean 0:child name
---@field ForceFocusOnChange boolean
local DialogContainer = {
    ChangeActive="in:(s;)",
    ForceFocusOnChange="Yes"
}
---@return "DialogContainer"
function DialogContainer:GetClass() end
---@return "UIObject"
function DialogContainer:GetChildClass() end
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
---@overload fun(name: "ForceIntensity", role: nil): integer
---@overload fun(name: "ActiveChild", role: nil): string
---@overload fun(name: "ChangeActive", role: nil): fun(childName: string) : boolean
---@overload fun(name: "ForceFocusOnChange", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"ActiveChild"|"ChangeActive"|"ForceFocusOnChange", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function DialogContainer:Get(name, role) end
