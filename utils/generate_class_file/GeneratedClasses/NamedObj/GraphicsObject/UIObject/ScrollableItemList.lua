---@meta

---@class ScrollableItemList: UIObject
---@field Type ScrollType Defines a type of the list: horizontal or vertical
---@field Distance integer Defines a distance between list items in pixels
---@field ItemSize integer For vertical type this defines height, for horizontal type this defines width (0 means auto-defined)
---@field VisibleItemCount integer Count of items which would be displayed without scrolling (0 means auto-defined)
---@field ItemType string Defines a type to be used to render list items
---@field AvoidScroll boolean If set to 'Yes' tries to adjust the size of the item to fit into available space with no scrolling needed
---@field Rounded boolean If set to 'Yes' first and last items will be with rounded corners
---@field IndicatorBarEnabled boolean If set to 'Yes' items will draw the indicatorBar
---@field ShowLeftIcon boolean
---@field ShowNumber boolean
---@field ShowRightIcon boolean
---@field ShowAdditionalInfo boolean
---@field ShowLeftScribble boolean
---@field ShowRightScribble boolean
---@field AllowBlocks boolean
---@field SkipTextIfIconExists boolean
---@field ItemIndividualCorners boolean
---@field ItemFilter string Current item filter
---@field OnSelectedItem fun(str: string, int: integer) Item was selected.
---@field SelectedBackColor Color
---@field SelectFirst fun(text: string) : boolean 0:text
---@field SelectedItemIdx integer
---@field SelectedItemValueI64 integer
---@field SelectedItemValueStr string
---@field IndirectEdit boolean
---@field ScrollChangesSelection boolean
local ScrollableItemList = {
    Type="Vertical",
    Distance="1",
    ItemSize="0",
    VisibleItemCount="0",
    ItemType="BaseItemButton",
    AvoidScroll="No",
    Rounded="Yes",
    IndicatorBarEnabled="Yes",
    ShowLeftIcon="No",
    ShowNumber="No",
    ShowRightIcon="No",
    ShowAdditionalInfo="No",
    ShowLeftScribble="No",
    ShowRightScribble="No",
    AllowBlocks="No",
    SkipTextIfIconExists="No",
    ItemIndividualCorners="No",
    OnSelectedItem="out:OnSelectedItem(s;u4;)",
    SelectFirst="in:(s;)",
    IndirectEdit="0",
    ScrollChangesSelection="0"
}
---@return "ScrollableItemList"
function ScrollableItemList:GetClass() end
---@return "UIObject"
function ScrollableItemList:GetChildClass() end
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
---@overload fun(name: "Type", role: nil): ScrollType
---@overload fun(name: "Distance"|"ItemSize"|"VisibleItemCount", role: nil): integer
---@overload fun(name: "ItemType", role: nil): string
---@overload fun(name: "AvoidScroll"|"Rounded"|"IndicatorBarEnabled"|"ShowLeftIcon"|"ShowNumber"|"ShowRightIcon"|"ShowAdditionalInfo"|"ShowLeftScribble"|"ShowRightScribble"|"AllowBlocks"|"SkipTextIfIconExists"|"ItemIndividualCorners", role: nil): boolean
---@overload fun(name: "ItemFilter", role: nil): string
---@overload fun(name: "OnSelectedItem", role: nil): fun(str: string, int: integer)
---@overload fun(name: "SelectedBackColor", role: nil): Color
---@overload fun(name: "SelectFirst", role: nil): fun(text: string) : boolean
---@overload fun(name: "SelectedItemIdx"|"SelectedItemValueI64", role: nil): integer
---@overload fun(name: "SelectedItemValueStr", role: nil): string
---@overload fun(name: "IndirectEdit"|"ScrollChangesSelection", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"Type"|"Distance"|"ItemSize"|"VisibleItemCount"|"ItemType"|"AvoidScroll"|"Rounded"|"IndicatorBarEnabled"|"ShowLeftIcon"|"ShowNumber"|"ShowRightIcon"|"ShowAdditionalInfo"|"ShowLeftScribble"|"ShowRightScribble"|"AllowBlocks"|"SkipTextIfIconExists"|"ItemIndividualCorners"|"ItemFilter"|"OnSelectedItem"|"SelectedBackColor"|"SelectFirst"|"SelectedItemIdx"|"SelectedItemValueI64"|"SelectedItemValueStr"|"IndirectEdit"|"ScrollChangesSelection", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function ScrollableItemList:Get(name, role) end
