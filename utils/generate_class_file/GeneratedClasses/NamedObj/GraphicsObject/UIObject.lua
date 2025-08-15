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
---@field TextVertical YesNo|boolean Defines if text should be rendered vertically
---@field TextAutoAdjust YesNo|boolean Defines if text should be automatically adjusted in terms of line breaks, font size
---@field TextUniform YesNo|boolean if true, we don't try to use the maximum available space, but the output across different UI elements will be on the same level
---@field FrameWidth integer The width of the frame in pixels which displays for example the hover or the selected state.
---@field Padding {left: integer, right: integer, top: integer, bottom: integer} Space from the border of the object to the content. Notation: (left,top,right,bottom)
---@field Focus FocusPriority
---@field UserRights UserRights
---@field Visible YesNo|boolean If this property is set to No/False/Off this object and all of its children are not rendered, they don't receive any input events (mouse, keyboard, touch...)
---@field CanCoExistWithModal YesNo|boolean If true, modal doesn't get auto-closed when this UIObject receives auto-close-triggering-events
---@field UserVisible YesNo|boolean A user configurable visibility flag
---@field Enabled YesNo|boolean
---@field Interactive YesNo|boolean
---@field Transparent YesNo|boolean If this property is set to Yes/True/On only children of this object will be rendered but not the object itself
---@field BlockClickThru YesNo|boolean If this property is set to Yes/True/On one can not click through this object, although it might be transparent
---@field UserInteracted YesNo|boolean A flag to test, if a user interacted with this ui element.
---@field HasHover YesNo|boolean Enables hover animation for this object.
---@field Separator YesNo|boolean Indicator if control is a separator.
---@field HasPressedAnimation YesNo|boolean Enables pressed animation for this object.
---@field ContentDriven YesNo|boolean
---@field ContentWidth YesNo|boolean
---@field ContentHeight YesNo|boolean
---@field ForceContentMin YesNo|boolean If set to 'Yes' the list will request it's best size as it's minimum
---@field WantsNumericRedirect YesNo|boolean
---@field CloseAction ModalResult If clicked on this element, the surrounding dialog may automatically close.
---@field AutoCloseValue integer Provides a resulting value for a dialog being closed.
---@field UiGroupId integer UiGroupId for parent Autolayout object.
---@field LabelLinkHandle UIObject Optional link to handlebase identifier for linked UIObject.
---@field IgnoreBackdropPadding YesNo|boolean If this property is set to No/False/Off the client padding of the backdrop will be ignored
---@field MixInBackColorFromParent YesNo|boolean
---@field FocusSearchPolicy FocusSearchPolicy
---@field IgnoreRequestedSize YesNo|boolean
---@field ForceEncoderBar YesNo|boolean
---@field SuppressOverlayAutoClose YesNo|boolean
---@field IsClosing YesNo|boolean
---@field TextShadow YesNo|boolean Enables/disables shadow effect for the text
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
---@field HasFocus YesNo|boolean
---@field HideFocusFrame YesNo|boolean
---@field AppearanceSourceClassName string
---@field VisibleOnlyInAlpha YesNo|boolean Controls whether only for this type of build the UI object is visible
---@field VisibleOnlyInBeta YesNo|boolean Controls whether only for this type of build the UI object is visible
---@field VisibleOnlyInRelease YesNo|boolean Controls whether only for this type of build the UI object is visible
---@field ClickNearest YesNo|boolean Controls whether UI object is clicking the nearest child.
---@field VisibleInAlpha YesNo|boolean Controls visibility of the UI object for alpha versions of builds
---@field VisibleInBeta YesNo|boolean Controls visibility of the UI object for alpha versions of builds
---@field VisibleInRelease YesNo|boolean Controls visibility of the UI object for alpha versions of builds
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
---@generic T : UIObject
---@param class `T`
---@return boolean
function UIObject:IsClass(class) end
---@return UIObject
function UIObject:Parent() end
---@param index integer
---@return UIObject
function UIObject:Ptr(index) end
---@return UIObject[]
function UIObject:Children() end
---@return UIObject?
function UIObject:CurrentChild() end
---@return 114
function UIObject:PropertyCount() end
---@overload fun(idx: 0): "IgnoreNetwork"
---@overload fun(idx: 1): "StructureLocked"
---@overload fun(idx: 2): "SystemLocked"
---@overload fun(idx: 3): "Lock"
---@overload fun(idx: 4): "Index"
---@overload fun(idx: 5): "Count"
---@overload fun(idx: 6): "No"
---@overload fun(idx: 7): "Name"
---@overload fun(idx: 8): "Note"
---@overload fun(idx: 9): "UserExpanded"
---@overload fun(idx: 10): "FaderEnabled"
---@overload fun(idx: 11): "Owned"
---@overload fun(idx: 12): "Hidden"
---@overload fun(idx: 13): "DependencyExport"
---@overload fun(idx: 14): "MemoryFootprint"
---@overload fun(idx: 15): "X"
---@overload fun(idx: 16): "Y"
---@overload fun(idx: 17): "W"
---@overload fun(idx: 18): "H"
---@overload fun(idx: 19): "AbsRect"
---@overload fun(idx: 20): "AbsClientRect"
---@overload fun(idx: 21): "Texture"
---@overload fun(idx: 22): "Font"
---@overload fun(idx: 23): "LowDpiFont"
---@overload fun(idx: 24): "Text"
---@overload fun(idx: 25): "ToolTip"
---@overload fun(idx: 26): "HelpTopic"
---@overload fun(idx: 27): "BackColor"
---@overload fun(idx: 28): "TextColor"
---@overload fun(idx: 29): "TextShadowColor"
---@overload fun(idx: 30): "MixInBackColor"
---@overload fun(idx: 31): "HighlightedColor"
---@overload fun(idx: 32): "TextVertical"
---@overload fun(idx: 33): "TextAutoAdjust"
---@overload fun(idx: 34): "TextUniform"
---@overload fun(idx: 35): "FrameWidth"
---@overload fun(idx: 36): "Padding"
---@overload fun(idx: 37): "Focus"
---@overload fun(idx: 38): "UserRights"
---@overload fun(idx: 39): "Visible"
---@overload fun(idx: 40): "CanCoExistWithModal"
---@overload fun(idx: 41): "UserVisible"
---@overload fun(idx: 42): "Enabled"
---@overload fun(idx: 43): "Interactive"
---@overload fun(idx: 44): "Transparent"
---@overload fun(idx: 45): "BlockClickThru"
---@overload fun(idx: 46): "UserInteracted"
---@overload fun(idx: 47): "HasHover"
---@overload fun(idx: 48): "Separator"
---@overload fun(idx: 49): "HasPressedAnimation"
---@overload fun(idx: 50): "ContentDriven"
---@overload fun(idx: 51): "ContentWidth"
---@overload fun(idx: 52): "ContentHeight"
---@overload fun(idx: 53): "ForceContentMin"
---@overload fun(idx: 54): "WantsNumericRedirect"
---@overload fun(idx: 55): "CloseAction"
---@overload fun(idx: 56): "AutoCloseValue"
---@overload fun(idx: 57): "UiGroupId"
---@overload fun(idx: 58): "LabelLinkHandle"
---@overload fun(idx: 59): "IgnoreBackdropPadding"
---@overload fun(idx: 60): "MixInBackColorFromParent"
---@overload fun(idx: 61): "FocusSearchPolicy"
---@overload fun(idx: 62): "IgnoreRequestedSize"
---@overload fun(idx: 63): "ForceEncoderBar"
---@overload fun(idx: 64): "SuppressOverlayAutoClose"
---@overload fun(idx: 65): "IsClosing"
---@overload fun(idx: 66): "TextShadow"
---@overload fun(idx: 67): "MinSize"
---@overload fun(idx: 68): "MaxSize"
---@overload fun(idx: 69): "Anchors"
---@overload fun(idx: 70): "SignalValue"
---@overload fun(idx: 71): "SignalValueHold"
---@overload fun(idx: 72): "AlignmentH"
---@overload fun(idx: 73): "AlignmentV"
---@overload fun(idx: 74): "TextAlignmentH"
---@overload fun(idx: 75): "TextAlignmentV"
---@overload fun(idx: 76): "Margin"
---@overload fun(idx: 77): "PluginComponent"
---@overload fun(idx: 78): "HasFocus"
---@overload fun(idx: 79): "HideFocusFrame"
---@overload fun(idx: 80): "AppearanceSourceClassName"
---@overload fun(idx: 81): "VisibleOnlyInAlpha"
---@overload fun(idx: 82): "VisibleOnlyInBeta"
---@overload fun(idx: 83): "VisibleOnlyInRelease"
---@overload fun(idx: 84): "ClickNearest"
---@overload fun(idx: 85): "VisibleInAlpha"
---@overload fun(idx: 86): "VisibleInBeta"
---@overload fun(idx: 87): "VisibleInRelease"
---@overload fun(idx: 88): "Clicked"
---@overload fun(idx: 89): "ClickedLeft"
---@overload fun(idx: 90): "ClickedRight"
---@overload fun(idx: 91): "DoubleClicked"
---@overload fun(idx: 92): "MouseEnter"
---@overload fun(idx: 93): "MouseLeave"
---@overload fun(idx: 94): "MouseOverHold"
---@overload fun(idx: 95): "MouseUp"
---@overload fun(idx: 96): "MouseUpLeft"
---@overload fun(idx: 97): "MouseUpRight"
---@overload fun(idx: 98): "MouseDown"
---@overload fun(idx: 99): "MouseDownLeft"
---@overload fun(idx: 100): "MouseDownRight"
---@overload fun(idx: 101): "MouseDownHold"
---@overload fun(idx: 102): "KeyDown"
---@overload fun(idx: 103): "KeyUp"
---@overload fun(idx: 104): "CharInput"
---@overload fun(idx: 105): "TouchStart"
---@overload fun(idx: 106): "TouchUpdate"
---@overload fun(idx: 107): "TouchEnd"
---@overload fun(idx: 108): "OnLoad"
---@overload fun(idx: 109): "OnVisible"
---@overload fun(idx: 110): "DescriptionChanged"
---@overload fun(idx: 111): "FocusGet"
---@overload fun(idx: 112): "FocusLost"
---@overload fun(idx: 113): "ForceIntensity"
function UIObject:PropertyName(idx) end
---@overload fun(idx: 0|1|2|46|65|78): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 3|12|32|33|34|39|40|41|42|43|44|45|47|48|49|50|51|52|53|54|59|60|62|63|64|66|79|81|82|83|84|85|86|87): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 4|5|6|20): {ExportIgnore: True, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 7|8|13|15|16|17|18|19|21|22|23|24|25|26|27|28|29|30|31|35|36|56|57|58|67|68|69|70|71|76|80|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113): {ExportIgnore: False, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 9): {ExportIgnore: False, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 10|11): {ExportIgnore: True, EnumCollection: YesNo, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 14|77): {ExportIgnore: False, ReadOnly: True, ImportIgnore: True}
---@overload fun(idx: 37): {ExportIgnore: False, EnumCollection: FocusPriority, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 38): {ExportIgnore: False, EnumCollection: UserRights, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 55): {ExportIgnore: False, EnumCollection: ModalResult, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 61): {ExportIgnore: False, EnumCollection: FocusSearchPolicy, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 72|74): {ExportIgnore: False, EnumCollection: AlignmentH, ReadOnly: False, ImportIgnore: False}
---@overload fun(idx: 73|75): {ExportIgnore: False, EnumCollection: AlignmentV, ReadOnly: False, ImportIgnore: False}
function UIObject:PropertyInfo(idx) end
---@overload fun(idx: 0|1|2|3|4|5|6|9): "UInt32"
---@overload fun(idx: 7|8|13|24|25|26|70|71|80): "String"
---@overload fun(idx: 10|11|78|79): "Bool"
---@overload fun(idx: 12|32|33|34|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|59|60|61|62|63|64|65|66|81|82|83|84|85|86|87): "UInt64"
---@overload fun(idx: 14|55|56): "Int64"
---@overload fun(idx: 15|16|17|18): "Size"
---@overload fun(idx: 19|20|67|68): "Custom"
---@overload fun(idx: 21): "Texture"
---@overload fun(idx: 22|23): "Font"
---@overload fun(idx: 27|28|29|30|31|58|77): "Handle"
---@overload fun(idx: 35): "Int16"
---@overload fun(idx: 36|69|76): "4Ints"
---@overload fun(idx: 37|38|72|73|74|75): "UInt8"
---@overload fun(idx: 57): "Int32"
---@overload fun(idx: 88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112): "Signal"
---@overload fun(idx: 113): "UInt16"
function UIObject:PropertyType(idx) end
---@overload fun(name: "AlignmentH"|"TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "AlignmentV"|"TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "FocusSearchPolicy", role: nil): FocusSearchPolicy
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "CloseAction", role: nil): ModalResult
---@overload fun(name: "Texture", role: nil): Texture
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"HasFocus"|"HideFocusFrame"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease", role: nil): YesNo|boolean
---@overload fun(name: "DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "Index"|"Count"|"No"|"MemoryFootprint"|"FrameWidth"|"AutoCloseValue"|"UiGroupId"|"ForceIntensity", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport"|"Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName", role: nil): string
---@overload fun(name: "Padding"|"Anchors"|"Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity", role: Enums.Roles): string
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
---@overload fun(property_name: "AlignmentH"|"TextAlignmentH", property_value: AlignmentH, override_change_level: ChangeLevel?)
---@overload fun(property_name: "AlignmentV"|"TextAlignmentV", property_value: AlignmentV, override_change_level: ChangeLevel?)
---@overload fun(property_name: "BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", property_value: Color, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Focus", property_value: FocusPriority, override_change_level: ChangeLevel?)
---@overload fun(property_name: "FocusSearchPolicy", property_value: FocusSearchPolicy, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Font"|"LowDpiFont", property_value: Font, override_change_level: ChangeLevel?)
---@overload fun(property_name: "X"|"Y"|"W"|"H", property_value: Graphics.SizeDescriptor, override_change_level: ChangeLevel?)
---@overload fun(property_name: "MinSize"|"MaxSize", property_value: Graphics.SizeDimension, override_change_level: ChangeLevel?)
---@overload fun(property_name: "CloseAction", property_value: ModalResult, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Texture", property_value: Texture, override_change_level: ChangeLevel?)
---@overload fun(property_name: "LabelLinkHandle", property_value: UIObject, override_change_level: ChangeLevel?)
---@overload fun(property_name: "UserRights", property_value: UserRights, override_change_level: ChangeLevel?)
---@overload fun(property_name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Hidden"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"HasFocus"|"HideFocusFrame"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease", property_value: YesNo|boolean, override_change_level: ChangeLevel?)
---@overload fun(property_name: "DescriptionChanged", property_value: fun(str: string), override_change_level: ChangeLevel?)
---@overload fun(property_name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", property_value: fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer), override_change_level: ChangeLevel?)
---@overload fun(property_name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", property_value: fun(str: string, X: integer, Y: integer), override_change_level: ChangeLevel?)
---@overload fun(property_name: "OnVisible", property_value: fun(str: string, bool: boolean), override_change_level: ChangeLevel?)
---@overload fun(property_name: "KeyDown"|"KeyUp", property_value: fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean), override_change_level: ChangeLevel?)
---@overload fun(property_name: "FocusGet"|"FocusLost", property_value: fun(str: string, obj1: Object, obj2: Object), override_change_level: ChangeLevel?)
---@overload fun(property_name: "OnLoad", property_value: fun(str: string, obj: Object), override_change_level: ChangeLevel?)
---@overload fun(property_name: "TouchStart"|"TouchUpdate"|"TouchEnd", property_value: fun(str: string, pointID: integer, X: integer, Y: integer), override_change_level: ChangeLevel?)
---@overload fun(property_name: "CharInput", property_value: fun(str: string, utf32Char: integer), override_change_level: ChangeLevel?)
---@overload fun(property_name: "Index"|"Count"|"No"|"FrameWidth"|"AutoCloseValue"|"UiGroupId"|"ForceIntensity", property_value: integer, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Name"|"Note"|"DependencyExport"|"Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName", property_value: string, override_change_level: ChangeLevel?)
---@overload fun(property_name: "Padding"|"Anchors"|"Margin", property_value: {left: integer, right: integer, top: integer, bottom: integer}, override_change_level: ChangeLevel?)
---@overload fun(property_name: "AbsRect"|"AbsClientRect", property_value: {left: number, right: number, top: number, bottom: number}, override_change_level: ChangeLevel?)
function UIObject:Set(property_name, property_value, override_change_level) end
---@overload fun(property_name: "Source", property_value: TimeCodeSource)
---@overload fun(property_name: "TcFont", property_value: Font)
---@overload fun(property_name: "Mode", property_value: DatumMode|GridModeAgenda|ShowfileSelectorMode|BlinkingButtonMode|CalculatorMode)
---@overload fun(property_name: "ExternalSettings", property_value: GridSettings)
---@overload fun(property_name: "HotKey", property_value: HotKey)
---@overload fun(property_name: "Context", property_value: EncoderBarContext)
---@overload fun(property_name: "EncoderFunction", property_value: PhaserEncoderFunction|TimecodeEncoderFunction|EncoderFunction)
---@overload fun(property_name: "ShownCue", property_value: Cue)
---@overload fun(property_name: "Settings", property_value: PSRPatchSheetSettings|CloningWindowSettings|ShowCreatorSettings)
---@overload fun(property_name: "Month", property_value: Month)
---@overload fun(property_name: "TargetSound", property_value: Sound)
---@overload fun(property_name: "ShowCreatorType", property_value: ShowCreatorType)
---@overload fun(property_name: "ContentFilter", property_value: GridContentFilter)
---@overload fun(property_name: "InternalRole", property_value: Roles)
---@overload fun(property_name: "MouseButtonType", property_value: MouseButtonTypes)
---@overload fun(property_name: "OnFocusGet", property_value: fun(str: string, obj: Object) : boolean)
---@overload fun(property_name: "AllTitlebuttons", property_value: table<string, TitlebuttonControl[]>)
---@overload fun(property_name: "SelectedElements", property_value: Object[])
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Direction", property_value: ToolbarScrollType|AutoLayoutScrollType)
---@overload fun(property_name: "ImageSource", property_value: ImageSource)
---@overload fun(property_name: "WindowAppearance", property_value: WindowAppearance)
---@overload fun(property_name: "WindowScrollPositions", property_value: WindowScrollPositions)
---@overload fun(property_name: "FilterRows", property_value: fun(str1: string, str2: string) : boolean)
---@overload fun(property_name: "ChangeText", property_value: fun(newTextStr: string) : boolean)
---@overload fun(property_name: "FixtureLayer", property_value: FixtureLayer)
---@overload fun(property_name: "FixtureClass", property_value: Class)
---@overload fun(property_name: "KeyCode", property_value: KeyboardCodes)
---@overload fun(property_name: "EscModalResult", property_value: ModalResult)
---@overload fun(property_name: "FixtureQuantity", property_value: EmptyAsZero)
---@overload fun(property_name: "FixtureIDType", property_value: IDs)
---@overload fun(property_name: "EncoderType", property_value: EncoderType)
---@overload fun(property_name: "EncoderRing", property_value: EncoderRing)
---@overload fun(property_name: "DependentBuddies", property_value: string[])
---@overload fun(property_name: "GestureClick", property_value: fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer) : boolean)
---@overload fun(property_name: "GroupedCellsCount", property_value: CellGrouping)
---@overload fun(property_name: "SideSize", property_value: ALSideSizeSpecial)
---@overload fun(property_name: "OnAssignTarget", property_value: fun(str: string, Target: Object, TargetPropertyName: string, rowId: integer) : boolean)
---@overload fun(property_name: "ActiveController", property_value: Gma3UI.WindowFixturetypeVisualizer.ActiveController)
---@overload fun(property_name: "GroupChangedTab", property_value: fun(str: string, int1: integer, int2: integer, bool1: boolean, bool2: boolean) : boolean)
---@overload fun(property_name: "GroupClickedTab", property_value: fun(str: string, int1: integer, int2: integer, bool: boolean) : boolean)
---@overload fun(property_name: "Changed", property_value: fun(str: string, value: integer))
---@overload fun(property_name: "Set", property_value: fun(str: string, value: integer) : boolean)
---@overload fun(property_name: "WindowRect", property_value: {left: number, right: number, top: number, bottom: number})
---@overload fun(property_name: "PresetPoolType", property_value: DynamicPresetPool)
---@overload fun(property_name: "ChildrenFillPolicy", property_value: ChildrenFillPolicy)
---@overload fun(property_name: "FixedColumns", property_value: FixedColumns)
---@overload fun(property_name: "OnAssignTargetSelected", property_value: fun(str: string, obj: Object, str: string, int: integer))
---@overload fun(property_name: "ChangeActive", property_value: fun(childName: string) : boolean)
---@overload fun(property_name: "MoveValueToPart", property_value: MoveValueToPart)
---@overload fun(property_name: "UIToControl", property_value: SplitterV_TopBottom|SplitterH_LeftRight)
---@overload fun(property_name: "PlaybackWindowSettings", property_value: PlaybackWindowSettings)
---@overload fun(property_name: "CueStoreOp", property_value: StoreMode)
---@overload fun(property_name: "SelectedAddr", property_value: DMXPropertyAddress)
---@overload fun(property_name: "CueSrc", property_value: CueCopySrc)
---@overload fun(property_name: "CueDst", property_value: CueCopyDst)
---@overload fun(property_name: "ColorEncoderFunction", property_value: ColorEncoderFunction)
---@overload fun(property_name: "CueDstOp", property_value: CueCopyDstMode)
---@overload fun(property_name: "BackOffset", property_value: ItemGroupPosition)
---@overload fun(property_name: "Layout", property_value: Layout)
---@overload fun(property_name: "TrackingShield", property_value: TrackingShieldPopup)
---@overload fun(property_name: "CueOperationMode", property_value: CueOperationMode)
---@overload fun(property_name: "CueOnly", property_value: CueOnly)
---@overload fun(property_name: "Drive", property_value: Drive)
---@overload fun(property_name: "TabChanged", property_value: fun(str: string, int1: integer, int2: integer, bool1: boolean, bool2: boolean))
---@overload fun(property_name: "SelectAbsoluteAddress", property_value: fun(str: string, int: AbsoluteAddress) : boolean)
---@overload fun(property_name: "AdditionalArgs", property_value: table<string, string>)
---@overload fun(property_name: "ValueRole", property_value: ValueRole)
---@overload fun(property_name: "PoolType", property_value: Pooltype)
---@overload fun(property_name: "Band", property_value: SoundValues)
---@overload fun(property_name: "SetupType", property_value: SetupType)
---@overload fun(property_name: "PolicyOnEnter", property_value: PolicyOnEnter)
---@overload fun(property_name: "EditTools", property_value: DmxCurveEditTool)
---@overload fun(property_name: "FunctionMode", property_value: FunctionMode)
---@overload fun(property_name: "Grid", property_value: TimecodeGrid)
---@overload fun(property_name: "Property", property_value: EncoderGroupType)
---@overload fun(property_name: "Icons", property_value: Texture[])
---@overload fun(property_name: "IconsGrid", property_value: Gma3UI.IconsGrid)
---@overload fun(property_name: "IconsGridAnchors", property_value: Gma3UI.IconsGridAnchors[])
---@overload fun(property_name: "SetType", property_value: PropertyRadioButtonListSetType)
---@overload fun(property_name: "MeasurementStatus", property_value: MeasurementStatus)
---@overload fun(property_name: "OnObjectSelected", property_value: fun(dummyStr: string, column: integer, row: integer, int: integer) : boolean)
---@overload fun(property_name: "Target", property_value: Sequence)
---@overload fun(property_name: "EnabledItems", property_value: PropertyRadioButtonListEnabledItems)
---@overload fun(property_name: "CurrentTimeView", property_value: TimeView)
---@overload fun(property_name: "Clear", property_value: fun(dummyString: string) : boolean)
---@overload fun(property_name: "SetPrompt", property_value: fun(prompt: string) : boolean)
---@overload fun(property_name: "SideSize", property_value: ALSideSizeSpecial)
---@overload fun(property_name: "ValueAlignmentH"|"IconAlignmentH"|"IconAlignmentH"|"KeyboardIconAlignmentH"|"LogoIconAlignmentH", property_value: AlignmentH)
---@overload fun(property_name: "ValueAlignmentV"|"LogoIconAlignmentV"|"IconAlignmentV"|"IconAlignmentV"|"KeyboardIconAlignmentV", property_value: AlignmentV)
---@overload fun(property_name: "Appearance", property_value: Appearance)
---@overload fun(property_name: "Direction", property_value: AutoLayoutScrollType)
---@overload fun(property_name: "Mode", property_value: BlinkingButtonMode)
---@overload fun(property_name: "Mode", property_value: CalculatorMode)
---@overload fun(property_name: "GroupedCellsCount", property_value: CellGrouping)
---@overload fun(property_name: "TriggerIndirectInitLevel"|"BlockLevel", property_value: ChangeLevel)
---@overload fun(property_name: "ChildrenFillPolicy", property_value: ChildrenFillPolicy)
---@overload fun(property_name: "FixtureClass", property_value: Class)
---@overload fun(property_name: "CloneDestinationGrid"|"ScrollBuddy"|"CloneSourceGrid", property_value: CloneGrid)
---@overload fun(property_name: "Settings", property_value: CloningWindowSettings)
---@overload fun(property_name: "PoolColor"|"ActiveBackColor"|"ActiveTextColor"|"ActiveIconColor"|"SelectedOptionTextColor"|"SelectedOptionBackColor"|"IconColor"|"SelectionColor"|"ColorLineNumberBackground"|"ColorLineNumberNormal"|"ProgIndicatorBackColor"|"ColorLineNumberSelected"|"ColorSelectedLineRect"|"SelectedBackColor"|"OnColor"|"KnobColorFlashedUp"|"OffColor"|"AlwaysOnColor"|"DisabledColor"|"HeadlineColor"|"SelectedIconColor"|"KnobColor"|"KnobColorFlashedDown"|"SlotColor"|"UpperColor"|"PreviewMixInColor"|"LowerColor"|"OnColor"|"OffColor"|"AlwaysOnColor"|"DisabledColor"|"EditMixInColor"|"BorderColor"|"EditMixInNotOwnerColor"|"IndicatorColor"|"RotateIconColor"|"DbgValueBackColor"|"DbgValueTextColor"|"ResizeLineColor"|"PreviewMixInColor"|"BackColorFlashedDown"|"EditMixInColor"|"DelimiterColor"|"EditMixInNotOwnerColor"|"ActiveDelimiterColor"|"BackColor2"|"IndicatorBack"|"BackColorFlashedUp"|"BlockerColor"|"NonEmptyIndicatorColor"|"OnColor"|"OffColor"|"IndicatorIconBackColor"|"GridColor"|"OverridesIndicatorBackColor"|"XYZTextColor"|"ValueTextColor"|"ValueActiveTextColor"|"PoolColor"|"SelectedTextColor"|"SelectionColor"|"SelectedBackColor"|"FixedBackColor"|"ProgressColor"|"AdditionalInfoTextColor"|"DividerColor"|"BlinkBackColor"|"SelectionColor"|"MessageColor"|"LevelColor"|"PeakColor"|"ScrollCellFrameColor"|"PoolColor"|"SelectedRowBorder"|"LevelColor"|"TriggerColor"|"KnobColor"|"UpperColor"|"LowerColor"|"LassoColor"|"FaderLocked"|"GridColor"|"LowerPressedColor"|"OverridesIndicatorBackColor"|"SampleColor"|"UpperSampleColor"|"MatricksAreaActiveBackColor"|"RecipeEditColor"|"GridColor"|"IconColor"|"TimeCursorColor"|"IconHoverColor"|"SelectedIconColor"|"SensorColor"|"DeselectedIconColor"|"GridColor1"|"WarningColor"|"GridColor2"|"UpperColor"|"PeekColor"|"SignalColor"|"LowerColor", property_value: Color)
---@overload fun(property_name: "ColorEncoderFunction", property_value: ColorEncoderFunction)
---@overload fun(property_name: "ShownCue", property_value: Cue)
---@overload fun(property_name: "CueDst", property_value: CueCopyDst)
---@overload fun(property_name: "CueDstOp", property_value: CueCopyDstMode)
---@overload fun(property_name: "CueSrc", property_value: CueCopySrc)
---@overload fun(property_name: "CueOnly", property_value: CueOnly)
---@overload fun(property_name: "CueOperationMode", property_value: CueOperationMode)
---@overload fun(property_name: "DMXMode"|"DmxMode", property_value: DMXMode)
---@overload fun(property_name: "SelectedAddr", property_value: DMXPropertyAddress)
---@overload fun(property_name: "Mode", property_value: DatumMode)
---@overload fun(property_name: "EditTools", property_value: DmxCurveEditTool)
---@overload fun(property_name: "Drive", property_value: Drive)
---@overload fun(property_name: "PresetPoolType", property_value: DynamicPresetPool)
---@overload fun(property_name: "FixtureQuantity", property_value: EmptyAsZero)
---@overload fun(property_name: "FixtureFID"|"FixtureCID", property_value: EmptyAsZeroFID)
---@overload fun(property_name: "Context", property_value: EncoderBarContext)
---@overload fun(property_name: "EncoderFunction", property_value: EncoderFunction)
---@overload fun(property_name: "Property", property_value: EncoderGroupType)
---@overload fun(property_name: "EncoderRing", property_value: EncoderRing)
---@overload fun(property_name: "EncoderType", property_value: EncoderType)
---@overload fun(property_name: "FixedColumns", property_value: FixedColumns)
---@overload fun(property_name: "FixtureLayer", property_value: FixtureLayer)
---@overload fun(property_name: "TcFont", property_value: Font)
---@overload fun(property_name: "FunctionMode", property_value: FunctionMode)
---@overload fun(property_name: "IconsGrid", property_value: Gma3UI.IconsGrid)
---@overload fun(property_name: "IconsGridAnchors", property_value: Gma3UI.IconsGridAnchors[])
---@overload fun(property_name: "ActiveController", property_value: Gma3UI.WindowFixturetypeVisualizer.ActiveController)
---@overload fun(property_name: "TextOffsetH"|"TextOffsetV"|"IconOffsetV"|"IconOffsetH"|"ScrollBarHeight", property_value: Graphics.SizeDescriptor)
---@overload fun(property_name: "FixedHeaders"|"NormalHeaders"|"FixedCells"|"NormalCells", property_value: Graphics.UIGrid.GridArea)
---@overload fun(property_name: "ContentFilter", property_value: GridContentFilter)
---@overload fun(property_name: "Mode", property_value: GridModeAgenda)
---@overload fun(property_name: "ExternalSettings", property_value: GridSettings)
---@overload fun(property_name: "HotKey", property_value: HotKey)
---@overload fun(property_name: "FixtureIDType", property_value: IDs)
---@overload fun(property_name: "ImageSource", property_value: ImageSource)
---@overload fun(property_name: "ArrayIndex"|"ArrayIndex", property_value: Index)
---@overload fun(property_name: "BackOffset", property_value: ItemGroupPosition)
---@overload fun(property_name: "KeyCode", property_value: KeyboardCodes)
---@overload fun(property_name: "Layout", property_value: Layout)
---@overload fun(property_name: "MeasurementStatus", property_value: MeasurementStatus)
---@overload fun(property_name: "Target"|"Target", property_value: Mesh)
---@overload fun(property_name: "EscModalResult", property_value: ModalResult)
---@overload fun(property_name: "Month", property_value: Month)
---@overload fun(property_name: "MouseButtonType", property_value: MouseButtonTypes)
---@overload fun(property_name: "MoveValueToPart", property_value: MoveValueToPart)
---@overload fun(property_name: "Target"|"Target"|"TargetObject"|"Target"|"Target"|"ScrollTarget"|"Target"|"Target"|"EditTarget"|"Target"|"Target"|"ExternScrollPos"|"Target"|"Target"|"AppearanceTarget"|"Target"|"CurrentUpdateObject"|"Target"|"MainBuddy"|"ScrollTarget"|"ScribbleTarget"|"Target"|"WorkingDestination"|"EditTarget"|"Target"|"Target"|"Target"|"Target"|"Target"|"Target"|"TargetObject"|"HistoryProvider"|"TextViewProvider"|"Context"|"Target"|"Target"|"EditTarget"|"Target", property_value: Object)
---@overload fun(property_name: "SelectedElements", property_value: Object[])
---@overload fun(property_name: "Settings", property_value: PSRPatchSheetSettings)
---@overload fun(property_name: "EncoderFunction", property_value: PhaserEncoderFunction)
---@overload fun(property_name: "PlaybackWindowSettings", property_value: PlaybackWindowSettings)
---@overload fun(property_name: "PolicyOnEnter", property_value: PolicyOnEnter)
---@overload fun(property_name: "PoolSettings"|"PoolSettings", property_value: PoolSettings)
---@overload fun(property_name: "SizeY"|"SizeX"|"SizeX"|"SizeY", property_value: PoolSizeFactor)
---@overload fun(property_name: "PoolType", property_value: Pooltype)
---@overload fun(property_name: "EnabledItems", property_value: PropertyRadioButtonListEnabledItems)
---@overload fun(property_name: "SetType", property_value: PropertyRadioButtonListSetType)
---@overload fun(property_name: "RowReductionPolicy"|"ColReductionPolicy", property_value: ReductionPolicy)
---@overload fun(property_name: "ViewW"|"ViewH", property_value: RequestedSize)
---@overload fun(property_name: "InternalRole", property_value: Roles)
---@overload fun(property_name: "ItemPlacementTypeV"|"ItemPlacementTypeH", property_value: ScrollItemPlacementType)
---@overload fun(property_name: "ScrollEntity"|"ScrollEntity", property_value: ScrollParamEntity)
---@overload fun(property_name: "Direction"|"Type"|"Direction"|"ScrollType"|"AutoNextCellDirection"|"Type"|"Direction", property_value: ScrollType)
---@overload fun(property_name: "Target", property_value: Sequence)
---@overload fun(property_name: "SetupType", property_value: SetupType)
---@overload fun(property_name: "Settings", property_value: ShowCreatorSettings)
---@overload fun(property_name: "ShowCreatorType", property_value: ShowCreatorType)
---@overload fun(property_name: "Mode", property_value: ShowfileSelectorMode)
---@overload fun(property_name: "TargetSound", property_value: Sound)
---@overload fun(property_name: "Band", property_value: SoundValues)
---@overload fun(property_name: "SpecialExecIndex"|"SpecialExecIndex"|"SpecialExecIndex", property_value: SpecialExecutor)
---@overload fun(property_name: "UIToControl", property_value: SplitterH_LeftRight)
---@overload fun(property_name: "UIToControl", property_value: SplitterV_TopBottom)
---@overload fun(property_name: "CueStoreOp", property_value: StoreMode)
---@overload fun(property_name: "CursorTexture"|"BorderTexture"|"ArrowRight"|"ArrowLeft"|"CountDownIcon"|"CollapsedIcon"|"OnOffTexture"|"SelectionFrame"|"StopwatchIcon"|"SelectedIcon"|"HeadLineTexture"|"IndicatorIcon"|"SelectionBackgroundTexture"|"SortAsc"|"TitleButtonIcon"|"SortDesc"|"Icon"|"KnobTexture"|"TriggerTexture"|"SelectionFrame"|"Lasso"|"LockTexture"|"TitleButtonIcon"|"CursorTexture"|"GearTexture"|"SelectionBackgroundTexture"|"OverridesIndicator"|"TextureNormal"|"TextureHover"|"ProgIndicator"|"IndicatorBackTexture"|"SampleTexture"|"IndicatorTexture"|"SelectionTexture"|"ExpandedTexture"|"ContractedTexture"|"DelimiterTexture"|"Icon"|"KnobTexture"|"BrushTexture"|"SelectionTexture"|"SelectedIcon"|"SlotTexture"|"ExpandedIcon"|"DeselectedIcon"|"UpperTexture"|"SensorTexture"|"SelectionFrame"|"LowerTexture"|"IconActive"|"UpperTexture"|"SelectionTexture"|"OnOffTexture"|"IconInactive"|"LowerTexture"|"LogoIcon"|"BlockerTexture"|"SignalTexture"|"DeselectedIcon", property_value: Texture)
---@overload fun(property_name: "Icons", property_value: Texture[])
---@overload fun(property_name: "Source", property_value: TimeCodeSource)
---@overload fun(property_name: "Position"|"Duration", property_value: TimePropertyValue)
---@overload fun(property_name: "CurrentTimeView", property_value: TimeView)
---@overload fun(property_name: "EncoderFunction", property_value: TimecodeEncoderFunction)
---@overload fun(property_name: "Grid", property_value: TimecodeGrid)
---@overload fun(property_name: "Direction", property_value: ToolbarScrollType)
---@overload fun(property_name: "TrackingShield", property_value: TrackingShieldPopup)
---@overload fun(property_name: "Target"|"LinkedObject"|"TargetObject", property_value: UIObject)
---@overload fun(property_name: "ValueRole", property_value: ValueRole)
---@overload fun(property_name: "WindowAppearance", property_value: WindowAppearance)
---@overload fun(property_name: "WindowScrollPositions", property_value: WindowScrollPositions)
---@overload fun(property_name: "Settings"|"WindowSettings"|"SubWindowSettings"|"WindowSettings"|"WindowSettings"|"WindowSettings", property_value: WindowSettings)
---@overload fun(property_name: "DrawContent"|"BackgroundButtonStyle"|"ShowTcSlotAndTcMode"|"ContentStyle"|"ShowFileSegmentShowData"|"ShowFileSegmentLocalSettings"|"ReadOnly"|"IgnoreIconForTextAlign"|"KeyRepeatEnabled"|"ShowFileSegmentOutputStations"|"AutoNextCell"|"DependsOnLinkedObject"|"ShowFileSegmentDmxProtocols"|"SelectionOnFocusOnly"|"TargetIsAppearance"|"ShowNumber"|"DirectCommand"|"AvoidScroll"|"DirectQuotation"|"ShowKeyboardButton"|"Rounded"|"InteractWithCommandline"|"Secret"|"IndicatorBarEnabled"|"TargetIsScribble"|"SetPropertyOnlyOnTextChange"|"ShowLeftIcon"|"CanBeEmbedded"|"ShowRightIcon"|"CalledFromCmdline"|"ShowAdditionalInfo"|"EditTitlebar"|"ShowLeftScribble"|"ShowRightScribble"|"AllowBlocks"|"SkipTextIfIconExists"|"IsMidiOut"|"ForceSmallMode"|"ItemIndividualCorners"|"State"|"ShowVisibleDay"|"AutoCloseOnInput"|"WantsModal"|"ReadOnly"|"ShowLineNumbers"|"AutoClose"|"ShowWhiteSpace"|"AutoCloseOnOverlay"|"HighlightCurrentLine"|"IndirectEdit"|"CloseOnEscape"|"NewlineWithSpaces"|"ScrollChangesSelection"|"ForceCursor"|"IncludeTarget"|"InitialSaveEditTarget"|"EditTargetHasChanged"|"FilterByManufacturer"|"ReactToPreview"|"PanScrollArea"|"StayAlwaysVisible"|"VisualisableScrollV"|"FilterByName"|"ScrollCellAutomatic"|"PanScroll"|"RelativeToDisplay"|"VisualisableScrollH"|"ScrollCellAutomaticWithOffset"|"ResetChildrenSize"|"FilterByMode"|"EnterToExecute"|"FilterByUsedOnly"|"FilterByDescription"|"AdjustInitialPosition"|"IsMainBuddy"|"UpdateSettingsVisibility"|"UseSimplifiedResize"|"InitialSaveEditTarget"|"BigMode"|"DriveReset"|"EditTargetHasChanged"|"AutoCreateFromProperties"|"OverrideKeybSC"|"UseEditorTarget"|"SuppressModeSwitch"|"ReactToPreview"|"ForceHideCategories"|"ScreenEncoder"|"ReactToEdit"|"UseDynamicIndicatorColor"|"OnlyVisible"|"IsWorldCoordinateSystemActive"|"ResetIfUntargeted"|"TryFitIntoSecondary"|"IsCameraFocusOnSelectedItem"|"EditAllowedDelete"|"Inverted"|"ReactToEdit"|"StealFocusAfterSelect"|"Content"|"CmdlineInteraction"|"DrawShortcutInfo"|"TryAvoidZeroes"|"TitleButtonBool"|"TargetCmdlineInteraction"|"TryFitMainIfContentDriven"|"EditAllowedAdd"|"SeparatorSupport"|"ModifyTextureLayout"|"CreateAndEdit"|"AutoClose"|"SmallResizeArea"|"AddTargets"|"ProvideEmpty"|"Features"|"ObserveSelectionChange"|"MixPercentAndHexDecModesAllowed"|"FeatureGroups"|"AllChannelSets"|"FeatureGroupsOnly"|"ShowFullSettings"|"Toggle"|"ForceFocusOnChange"|"ShowLabel"|"ShowCSHelp"|"DrawInbetweenValues"|"ValueAutoAdjust"|"ShowValue"|"DataAsIs"|"AutoHide"|"WorkWithGrid"|"IndirectEdit"|"IsScribbleNew"|"DirectProperty"|"IsAppearanceNew"|"DefaultAction"|"CharAction"|"Undo"|"ChangeDestination"|"ValueTextShadow"|"HiglightActiveCue"|"WorkWithGrid"|"IgnoreActiveForEnums"|"DimmerCueOnly"|"Auto"|"ShowOldVersions"|"UseCommandlineClick"|"SetIconAsActiveInactive"|"EditNewObject"|"ExclusivePropertyChange"|"UseTabRegistry"|"NoEmptyNames"|"UseGridColor"|"PositionBeneathFinger"|"MixInBackColorFromParentRecursive"|"DefaultAction"|"TrackEdit"|"ExpandContent"|"DefaultMarginOnBorders"|"TrackWorld"|"EncoderUseDisplay"|"SmallMode"|"ShowSelectionCount"|"UseDefaultValue"|"UseComposedText"|"ShowAdditionalInfo"|"ForceFastFade"|"TextChangeOnEnter"|"AutoScrollToEnd"|"AutoEnabled"|"NoEmptyNames"|"CloseProhibited"|"AllowAddContent"|"DisplayLevel"|"AllowAddNewline"|"ReactToRecipeEdit"|"ShowUnpatchedOnly"|"ScrollOpposite"|"AllowedInvisible"|"AllowMergeChildren"|"ShowManualCueSelection"|"ForceCursor"|"AllowEdit"|"ContentChanged"|"PrintCurrentValue"|"DirectQuotation"|"ReactToRecipeEdit"|"LongPressVK"|"CanProvideUiGridSelection"|"AllowFilterContent"|"AutoCloseAllowed"|"PrintMaxValue"|"FilterBlockUIEnabled"|"GapsForExpanded"|"UseUserProfileSettings"|"CloseOnClick"|"ScrollOutEnabled"|"VScrollOnHeader"|"PrimaryHasFocus"|"ConvertCursorToTabAtBoundaries"|"IsInExport", property_value: YesNo|boolean)
---@overload fun(property_name: "DrawGradient"|"AllIndexesCollected"|"AutoSetWindowSettings"|"IsScribbleAvailable"|"IsAppearanceAvailable"|"FadeEncoder"|"CheckForScreenEncoders"|"UseSpecialTimezone"|"IsNoteAvailable"|"Expanded"|"ChangeDestination"|"IsPlaying"|"AllowSorting"|"ScribbleIsEmpty"|"Blink"|"IsCloneDestination", property_value: boolean)
---@overload fun(property_name: "ChangeActive", property_value: fun(childName: string) : boolean)
---@overload fun(property_name: "Solve"|"CallP1"|"OnTitleClick"|"StoreP2"|"Close"|"CallP2"|"StoreP1"|"OnTitleClick"|"OnTitleClick"|"CloseConfirm"|"StoreP3"|"CloseCancel"|"CallP3"|"StoreP4"|"CallP4", property_value: fun(dummyStr: string) : boolean)
---@overload fun(property_name: "OnPatchToClicked"|"OnUniverseUpClicked"|"OnUnpatchClicked"|"OnUniverseDownClicked", property_value: fun(dummyStr: string, button: MouseButtonTypes, X: integer, Y: integer) : boolean)
---@overload fun(property_name: "OnBreakSelected"|"OnBreakPatched"|"OnDBObjectSelected"|"OnAddressSelected", property_value: fun(dummyStr: string, column: integer, row: integer) : boolean)
---@overload fun(property_name: "OnObjectSelected", property_value: fun(dummyStr: string, column: integer, row: integer, int: integer) : boolean)
---@overload fun(property_name: "Clear", property_value: fun(dummyString: string) : boolean)
---@overload fun(property_name: "ShowMessage"|"HideMessage", property_value: fun(message: string) : boolean)
---@overload fun(property_name: "ChangeText", property_value: fun(newTextStr: string) : boolean)
---@overload fun(property_name: "SetPrompt", property_value: fun(prompt: string) : boolean)
---@overload fun(property_name: "FilterRows", property_value: fun(str1: string, str2: string) : boolean)
---@overload fun(property_name: "MoveStart"|"OnListRefDone"|"UrlChanged"|"Scrolled"|"ProgressChanged"|"StatusChanged"|"TooltipChanged"|"OnCreateNewAppearance"|"MoveStart"|"ResizeEnd"|"ScrolledToEndV"|"PathChanged"|"OnUserProfileChanged"|"FilterChanged"|"Execute"|"ResizeStart"|"Execute"|"TextChanged"|"LassoFinished"|"OnWrongChar"|"OnScreenPushed"|"ScribbleTargetChanged"|"OnCreateNewAppearance"|"OnCreateNewScribble"|"AppearanceTargetChanged", property_value: fun(str: string))
---@overload fun(property_name: "TimecodeForward"|"OpenVK"|"TimecodeStop"|"SelectAll"|"TimecodePlay"|"TimecodePrevMarker"|"OnFunction"|"DeSelect"|"TimecodeNextMarker"|"SetCursorToEnd"|"SelectionCopy"|"SelectionCut"|"SelectionPaste"|"TimecodeAddEvent"|"OnFixtureSourceChanged"|"TimecodeAddMultiEvents"|"TimecodeAddTimeRange"|"SetUrlA"|"TimecodeAddTimeMarker"|"GoBack"|"OnCreateNewAppearance"|"GoFwd"|"CheckAutoClose"|"Reload"|"OnNavigate"|"RequestMemUsage"|"OnCheckSubPoolSelector"|"OnInput"|"ApplyScribble"|"SetDateToday"|"OnState"|"RevertScribble"|"SetTimeNow"|"OnSelectDataPool"|"OnCommand"|"OnCreateNewScribble"|"DeleteFilterItem"|"OnTitle"|"ResetMouse"|"AddFilterItem"|"OnCollectAllIndexes"|"SetToTop"|"DeleteClicked"|"ScrollPageDown"|"Play"|"OnFocusLost"|"Undo"|"AutoScroll"|"TBDeleteAll"|"ClearScribble"|"Redo"|"TBLoadDefaults"|"Pause"|"ClearSelection"|"OnApplyColorToCurves"|"SetText"|"Stop"|"InsertText"|"ClearText"|"DeleteOld"|"OnToolOperate"|"SelectAllRows"|"SaveEditTarget"|"ScrollAction"|"ClearFilter"|"OnClearCmdline"|"RevertEditTarget"|"MoveStart"|"ToggleListRef"|"ExpandAll"|"ResizeEnd"|"ScrollToEnd"|"SetCursorToEnd"|"OnSelectedTreeItem"|"SaveToDefault"|"OnScrolledTreeItem"|"LoadFromDefault"|"KeyPress"|"SelectedFixture"|"SaveEditTarget"|"ResizeStart"|"MoveStart"|"SelectedManufacturer"|"Context"|"RememberSelection"|"RevertEditTarget"|"MapClicked"|"InitGrids"|"Context"|"UpdateEncoderBar"|"TabChanged"|"OnSpecialButtonClicked"|"OnExpandAll"|"EnumClicked"|"OnCollapseAll"|"OnExpandSelected"|"Search"|"OnClearSelection"|"OnStageChanged"|"SelectAll"|"SelectNothing"|"OnDataPoolChanged"|"OnSetSelectorVisibility"|"SwitchExpansion"|"OnCollapseAll"|"OnZoomToFit"|"OnSetRecalcCenterOfGravity"|"FunctionSelectorChanged"|"EncoderReadoutSelectorChanged"|"OnEditCurrentLayout"|"SetPath"|"DeleteSelectedFiles"|"SetFilter"|"GoUp"|"SelectFirstFile"|"ScrollToFirstFile"|"ProgressChanged"|"OnPatchToNextFree"|"OnSwipeMenu"|"OnMoveToUniverse"|"SGResizeStart"|"SGResizeEnd"|"OpenAtFilter"|"OnSwipeMenu"|"ToggleAtFilter"|"OnPatchToClicked"|"OnShowUnpatchedClicked"|"SGResizeStart"|"SGResizeEnd"|"SetPlus"|"MeasureColor"|"SetMinus"|"DarkCalibrate"|"FindDevice"|"ShowAnimation"|"ResetView"|"ZoomIn"|"ZoomOut"|"ChangedActiveTab"|"TimecodePause"|"TimecodeBackward"|"TimecodeRecord", property_value: fun(str: string) : boolean)
---@overload fun(property_name: "ResizeMove"|"Move"|"Move", property_value: fun(str: string, DeltaX: integer, DeltaY: integer))
---@overload fun(property_name: "OnAssignTarget", property_value: fun(str: string, Target: Object, TargetPropertyName: string, rowId: integer) : boolean)
---@overload fun(property_name: "MoveEnd"|"MoveEnd", property_value: fun(str: string, bool: boolean))
---@overload fun(property_name: "MoveEnd"|"ResizeEnd", property_value: fun(str: string, bool: boolean) : boolean)
---@overload fun(property_name: "OnBeforeEdit"|"OnAfterEdit"|"OnSelectionAfterCmd"|"SelectionChanged"|"UndoRedoChanged", property_value: fun(str: string, int1: integer, int2: integer))
---@overload fun(property_name: "SGResizeMove"|"ResizeStart"|"Move"|"SGResizeMove"|"SelectCell"|"SelectRange"|"Resize"|"ResizeMove"|"Move", property_value: fun(str: string, int1: integer, int2: integer) : boolean)
---@overload fun(property_name: "TabChanged", property_value: fun(str: string, int1: integer, int2: integer, bool1: boolean, bool2: boolean))
---@overload fun(property_name: "GroupChangedTab", property_value: fun(str: string, int1: integer, int2: integer, bool1: boolean, bool2: boolean) : boolean)
---@overload fun(property_name: "TabClickedOnCurrent"|"OnSelectedItem", property_value: fun(str: string, int1: integer, int2: integer, bool: boolean))
---@overload fun(property_name: "GroupClickedTab", property_value: fun(str: string, int1: integer, int2: integer, bool: boolean) : boolean)
---@overload fun(property_name: "OnClick"|"ActionSetPriority"|"HardkeyMouseUp"|"HardkeyMouseDown"|"ReloadCamera"|"OnClick"|"FactoryDefaults"|"RotateToCircleCenter"|"Rotate90ToLine"|"ResetUnusedAxis"|"OnClick"|"ReloadRenderQuality"|"ResetRotation"|"Oops"|"ReloadCamera"|"ResetPosition"|"OnShow3dSettings"|"Show3DSettings"|"ResetCamera"|"CenterPosition"|"AnalyzeMeshPool"|"ArrangePosition"|"SelectionToGrid", property_value: fun(str: string, int1: integer, int2: integer, int3: integer) : boolean)
---@overload fun(property_name: "GestureClick"|"GestureClick", property_value: fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer))
---@overload fun(property_name: "GestureClick", property_value: fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer) : boolean)
---@overload fun(property_name: "OnCellMouseDoubleClicked"|"OnCellMouseDown"|"OnCellMouseDownHold"|"OnCellMouseUp"|"OnCellMouseClicked", property_value: fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer))
---@overload fun(property_name: "SelectAbsoluteAddress", property_value: fun(str: string, int: AbsoluteAddress) : boolean)
---@overload fun(property_name: "OnSelectedColumn"|"OnSelectedRow"|"MemUsageUpdated"|"OnTargetChanged"|"OnTargetChanged"|"OnSelectedItem", property_value: fun(str: string, int: integer))
---@overload fun(property_name: "SortByColumn"|"AddSelectedLines"|"OnChar"|"ScrollVertical"|"ScrollHorizontal"|"ReTriggerInit"|"ChangeTarget"|"SetFPSLimit"|"OnChar"|"ReTriggerInit"|"AddSelectedFixtures"|"ScrollToRow"|"ClearGrid"|"GridMoveUp"|"GridMoveDown"|"GridCut"|"ChangeTarget"|"GridCopy"|"GridPaste"|"GridAdd"|"GridDelete"|"SelectRow"|"GridFillUp"|"JumpToNextLine"|"AddRow"|"SelectionChanged"|"GridUnify"|"JumpToPreviousLine"|"AddMissingLines"|"SelectColumn", property_value: fun(str: string, int: integer) : boolean)
---@overload fun(property_name: "ForceScale"|"Seek", property_value: fun(str: string, num: number) : boolean)
---@overload fun(property_name: "OnSetEditTarget"|"OnSetEditTarget"|"OnSetEditTarget"|"LinkedObjectChanged", property_value: fun(str: string, obj: Object))
---@overload fun(property_name: "OnFocusGet", property_value: fun(str: string, obj: Object) : boolean)
---@overload fun(property_name: "OnAssignTargetSelected", property_value: fun(str: string, obj: Object, str: string, int: integer))
---@overload fun(property_name: "OnUpdateTitle"|"OnUpdateTitle", property_value: fun(str: string, str: string))
---@overload fun(property_name: "Changed", property_value: fun(str: string, value: integer))
---@overload fun(property_name: "Set", property_value: fun(str: string, value: integer) : boolean)
---@overload fun(property_name: "OpenSequenceFilter"|"FlipLeftRight"|"OpenGroupFilter"|"OpenPresetFilter"|"SetText"|"ObtainCurrentCue"|"DoReset"|"AddText"|"InitTargetList"|"InitFirst"|"DoClone"|"InsertText"|"OpenWorldFilter"|"SelectFirst"|"OpenLayoutFilter"|"ChangeCloningViewMode"|"AllItemsToAll"|"AllItemsToNone", property_value: fun(text: string) : boolean)
---@overload fun(property_name: "CellWidth"|"CellHeight"|"PatchOffset"|"ExecutorIndex"|"BlockWidth"|"Rows"|"BlockHeight"|"Columns"|"OptionHeight"|"ShowFileSegmentsMask"|"State"|"ExecutorIndex"|"RasterHeight"|"FrameThickness"|"SelectedRow"|"RasterWidth"|"ScrollCellFrameThickness"|"SelectedColumn"|"SpecialExecOffset"|"LevelDistance"|"Distance"|"UndoCount"|"IncrementFactor"|"ItemSize"|"RedoCount"|"Hour"|"SlotIndex"|"ColumnResizeMaxDeviation"|"VisibleItemCount"|"PatchOffset"|"Mask"|"AutoFitColumn"|"Minute"|"Second"|"FilterMask"|"GridDelta"|"GridVersion"|"Day"|"VisibleFixturesCount"|"HeadLineDimension"|"MaxTextLength"|"LevelLimit"|"SubDestination"|"ButtonDimension"|"Mask"|"Border"|"SlotDimension"|"Priority"|"Direction"|"Year"|"ColorIndicatorHeight"|"MaxValue"|"LabelAreaHeight"|"MinValue"|"MinCellSize"|"LineHeightAdd"|"IgnoreChildren"|"Page"|"BigModeColumns"|"LineSpacing"|"TitleButtonUInt64"|"MaxValue"|"BigModeRows"|"ExecFrom"|"DelimiterSize"|"Selector"|"FixtureCount"|"ActiveSource"|"ExecBarToDraw"|"TitleButtonInt64"|"FirstRow"|"DefaultMargin"|"TitleButtonPopup"|"LastRow"|"ExecutorIndex"|"BreakIdx", property_value: integer)
---@overload fun(property_name: "Value"|"EncoderResolution"|"IconScale"|"CurrentFps"|"Progress"|"ItemPlacementOffsetFactorH"|"ScaleAll"|"RatioAll"|"ItemPlacementOffsetFactorV", property_value: number)
---@overload fun(property_name: "Property"|"EmptyName"|"System"|"DataType"|"InsertType"|"LedToken"|"SelectionType"|"EditEncoderBar"|"CellType"|"Content"|"ControlEncoderBar"|"SettingsType"|"ActiveChild"|"FixtureName"|"VKTitleHint"|"AdditionalInfo"|"Property"|"Property"|"System"|"Property"|"DummyComposedText"|"ReferencedTitleButton"|"VKPluginName"|"EditEncoderBar"|"SwipeMenu"|"CurrentSelectedShowFile"|"ControlEncoderBar"|"ForcedInitialTab"|"Destination"|"Prompt"|"Property"|"BuddyGroupId"|"Filter"|"Property"|"Filter"|"ItemType"|"System"|"EmptyText"|"Property"|"Message"|"FuzzyFilter"|"DirectPrefix"|"Cursor"|"TargetPath"|"Property"|"FuzzyFilterExcludeEnd"|"EditEncoderBar"|"BaseFilter"|"ImportOptions"|"PrivacyPolicyUrl"|"AuxProperty"|"InitialTab"|"FixtureToMeasure"|"DirectPrefix"|"System"|"Property"|"FilterComposed"|"Value"|"System"|"TrademarksUrl"|"InitialSubTab"|"WarningTooltip"|"Value"|"ReleaseNotesUrl"|"Value"|"ItemFilter"|"SelectedFile"|"Destination"|"SwipeMenu"|"StrContext"|"BarText"|"TargetPropertyName"|"TextLeftCorner"|"DefaultTitle", property_value: string)
---@overload fun(property_name: "DependentBuddies", property_value: string[])
---@overload fun(property_name: "AllTitlebuttons", property_value: table<string, TitlebuttonControl[]>)
---@overload fun(property_name: "AdditionalArgs", property_value: table<string, string>)
---@overload fun(property_name: "ValueAreaMargins"|"LabelAreaMargins"|"ContentAreaMargin"|"OptionAreaMargin", property_value: {left: integer, right: integer, top: integer, bottom: integer})
---@overload fun(property_name: "WindowRect", property_value: {left: number, right: number, top: number, bottom: number})
function UIObject:SetPrompt(property_name, property_value) end