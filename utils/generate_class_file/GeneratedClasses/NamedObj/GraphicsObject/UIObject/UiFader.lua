---@meta

---@class UiFader: UIObject
---@field KnobTexture Texture
---@field SlotTexture Texture
---@field UpperTexture Texture
---@field LowerTexture Texture
---@field OnOffTexture Texture
---@field BorderTexture Texture
---@field HeadLineTexture Texture
---@field HeadlineColor Color
---@field KnobColor Color
---@field KnobColorFlashedUp Color
---@field KnobColorFlashedDown Color
---@field SlotColor Color
---@field UpperColor Color
---@field LowerColor Color
---@field OnColor Color
---@field OffColor Color
---@field AlwaysOnColor Color
---@field DisabledColor Color
---@field BorderColor Color
---@field IndicatorColor Color
---@field Target Object
---@field Property string
---@field System string
---@field HeadLineDimension integer
---@field ButtonDimension integer
---@field SlotDimension integer
---@field ColorIndicatorHeight integer
---@field ScrollType ScrollType
---@field MaxValue integer
---@field MinValue integer
---@field DrawGradient boolean
---@field UseDynamicIndicatorColor boolean
---@field ResetIfUntargeted boolean
---@field Value string
---@field Changed fun(str: string, value: integer) 0:str;1:current value
---@field Set fun(str: string, value: integer) : boolean 0:dummy str;1:value
local UiFader = {
    KnobTexture="white",
    UpperTexture="white",
    LowerTexture="white",
    BorderTexture="slim_border",
    HeadLineTexture="corner3",
    HeadlineColor="Fader.Headline",
    KnobColor="Fader.Knob",
    KnobColorFlashedUp="Fader.KnobFlashedUp",
    KnobColorFlashedDown="Fader.KnobFlashedDown",
    SlotColor="Fader.Slot",
    UpperColor="Fader.Upper",
    LowerColor="Fader.Lower",
    OnColor="Fader.On",
    OffColor="Fader.Off",
    AlwaysOnColor="Fader.AlwaysOn",
    DisabledColor="Fader.Disabled",
    BorderColor="Fader.Headline",
    IndicatorColor="Fader.Off",
    HeadLineDimension="50",
    ButtonDimension="30",
    SlotDimension="20",
    ScrollType="Vertical",
    MaxValue="16777216",
    MinValue="0",
    DrawGradient="0",
    UseDynamicIndicatorColor="No",
    ResetIfUntargeted="No",
    Changed="out:(s;i4;)",
    Set="in:(s;i4;)"
}
---@return "UiFader"
function UiFader:GetClass() end
---@return "UIObject"
function UiFader:GetChildClass() end
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
---@overload fun(name: "KnobTexture"|"SlotTexture"|"UpperTexture"|"LowerTexture"|"OnOffTexture"|"BorderTexture"|"HeadLineTexture", role: nil): Texture
---@overload fun(name: "HeadlineColor"|"KnobColor"|"KnobColorFlashedUp"|"KnobColorFlashedDown"|"SlotColor"|"UpperColor"|"LowerColor"|"OnColor"|"OffColor"|"AlwaysOnColor"|"DisabledColor"|"BorderColor"|"IndicatorColor", role: nil): Color
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Property"|"System", role: nil): string
---@overload fun(name: "HeadLineDimension"|"ButtonDimension"|"SlotDimension"|"ColorIndicatorHeight", role: nil): integer
---@overload fun(name: "ScrollType", role: nil): ScrollType
---@overload fun(name: "MaxValue"|"MinValue", role: nil): integer
---@overload fun(name: "DrawGradient"|"UseDynamicIndicatorColor"|"ResetIfUntargeted", role: nil): boolean
---@overload fun(name: "Value", role: nil): string
---@overload fun(name: "Changed", role: nil): fun(str: string, value: integer)
---@overload fun(name: "Set", role: nil): fun(str: string, value: integer) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"KnobTexture"|"SlotTexture"|"UpperTexture"|"LowerTexture"|"OnOffTexture"|"BorderTexture"|"HeadLineTexture"|"HeadlineColor"|"KnobColor"|"KnobColorFlashedUp"|"KnobColorFlashedDown"|"SlotColor"|"UpperColor"|"LowerColor"|"OnColor"|"OffColor"|"AlwaysOnColor"|"DisabledColor"|"BorderColor"|"IndicatorColor"|"Target"|"Property"|"System"|"HeadLineDimension"|"ButtonDimension"|"SlotDimension"|"ColorIndicatorHeight"|"ScrollType"|"MaxValue"|"MinValue"|"DrawGradient"|"UseDynamicIndicatorColor"|"ResetIfUntargeted"|"Value"|"Changed"|"Set", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function UiFader:Get(name, role) end
