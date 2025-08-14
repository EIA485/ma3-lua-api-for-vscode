---@meta

---@class StateItemButton: BaseItemButton
---@field SelectedIcon Texture
---@field DeselectedIcon Texture
---@field SelectedIconColor Color
local StateItemButton = {
    SelectedIconColor="Button.Icon"
}
---@return "StateItemButton"
function StateItemButton:GetClass() end
---@return "UIObject"
function StateItemButton:GetChildClass() end
---@overload fun(name: "ValueAlignmentH"|"IconAlignmentH"|"AlignmentH"|"TextAlignmentH", role: nil): AlignmentH
---@overload fun(name: "ValueAlignmentV"|"IconAlignmentV"|"AlignmentV"|"TextAlignmentV", role: nil): AlignmentV
---@overload fun(name: "TriggerIndirectInitLevel", role: nil): ChangeLevel
---@overload fun(name: "SelectedIconColor"|"SelectedBackColor"|"SelectedTextColor"|"EmptyBackColor"|"EmptyTextColor"|"NonEmptyIndicatorColor"|"ValueTextColor"|"ValueActiveTextColor"|"IconColor"|"IconHoverColor"|"ActiveBackColor"|"ActiveTextColor"|"ActiveIconColor"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor", role: nil): Color
---@overload fun(name: "PluginComponent", role: nil): Component
---@overload fun(name: "Focus", role: nil): FocusPriority
---@overload fun(name: "Font"|"LowDpiFont", role: nil): Font
---@overload fun(name: "CloseAction", role: nil): GestureResult
---@overload fun(name: "IconOffsetH"|"IconOffsetV"|"TextOffsetH"|"TextOffsetV"|"X"|"Y"|"W"|"H", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "MinSize"|"MaxSize", role: nil): Graphics.SizeDimension
---@overload fun(name: "HotKey", role: nil): HotKey
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "TargetList", role: nil): Object[]
---@overload fun(name: "SelectedIcon"|"DeselectedIcon"|"PinnedIcon"|"IconActive"|"IconInactive"|"Icon"|"Texture", role: nil): Texture
---@overload fun(name: "LabelLinkHandle", role: nil): UIObject
---@overload fun(name: "UserRights", role: nil): UserRights
---@overload fun(name: "ValueRole", role: nil): ValueRole
---@overload fun(name: "ShowLabel"|"ShowValue"|"DataAsIs"|"AutoHide"|"IndirectEdit"|"ValueAutoAdjust"|"DirectProperty"|"DefaultAction"|"CharAction"|"Undo"|"ValueTextShadow"|"IgnoreActiveForEnums"|"SetIconAsActiveInactive"|"EditNewObject"|"UseGridColor"|"IgnoreIconForTextAlign"|"HasFocus"|"HideFocusFrame"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DescriptionChanged", role: nil): fun(str: string)
---@overload fun(name: "Clicked"|"DoubleClicked"|"MouseUp"|"MouseDown"|"MouseDownHold", role: nil): fun(str: string, Button: MouseButtonTypes, X: integer, Y: integer)
---@overload fun(name: "ClickedLeft"|"ClickedRight"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUpLeft"|"MouseUpRight"|"MouseDownLeft"|"MouseDownRight", role: nil): fun(str: string, X: integer, Y: integer)
---@overload fun(name: "OnVisible", role: nil): fun(str: string, bool: boolean)
---@overload fun(name: "OnTargetChanged", role: nil): fun(str: string, int: integer)
---@overload fun(name: "KeyDown"|"KeyUp", role: nil): fun(str: string, keyCode: VirtualKeyCode, bool1: boolean, bool2: boolean, bool3: boolean)
---@overload fun(name: "FocusGet"|"FocusLost", role: nil): fun(str: string, obj1: Object, obj2: Object)
---@overload fun(name: "OnLoad", role: nil): fun(str: string, obj: Object)
---@overload fun(name: "TouchStart"|"TouchUpdate"|"TouchEnd", role: nil): fun(str: string, pointID: integer, X: integer, Y: integer)
---@overload fun(name: "CharInput", role: nil): fun(str: string, utf32Char: integer)
---@overload fun(name: "ItemIndex"|"LabelAreaHeight"|"ArrayIndex"|"State"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"AutoCloseValue"|"UiGroupId"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "IconScale", role: nil): number
---@overload fun(name: "Property"|"System"|"ReferencedTitleButton"|"Text"|"ToolTip"|"HelpTopic"|"SignalValue"|"SignalValueHold"|"AppearanceSourceClassName"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "LabelAreaMargins"|"ValueAreaMargins"|"ContentAreaMargin"|"Padding"|"Anchors"|"Margin", role: nil): {left: integer, right: integer, top: integer, bottom: integer}
---@overload fun(name: "AbsRect"|"AbsClientRect", role: nil): {left: number, right: number, top: number, bottom: number}
---@overload fun(name: "SelectedIcon"|"DeselectedIcon"|"SelectedIconColor"|"SelectedBackColor"|"SelectedTextColor"|"EmptyBackColor"|"EmptyTextColor"|"ItemIndex"|"PinnedIcon"|"NonEmptyIndicatorColor"|"Target"|"TargetList"|"Property"|"System"|"ShowLabel"|"ShowValue"|"DataAsIs"|"AutoHide"|"IndirectEdit"|"ValueAutoAdjust"|"DirectProperty"|"DefaultAction"|"CharAction"|"Undo"|"ValueTextShadow"|"IgnoreActiveForEnums"|"LabelAreaHeight"|"LabelAreaMargins"|"ValueAreaMargins"|"ValueTextColor"|"ValueActiveTextColor"|"ValueAlignmentH"|"ValueAlignmentV"|"IconActive"|"IconInactive"|"SetIconAsActiveInactive"|"EditNewObject"|"UseGridColor"|"ArrayIndex"|"ValueRole"|"TriggerIndirectInitLevel"|"OnTargetChanged"|"Icon"|"IconColor"|"IconHoverColor"|"IconScale"|"IconAlignmentH"|"IconAlignmentV"|"IconOffsetH"|"IconOffsetV"|"TextOffsetH"|"TextOffsetV"|"ActiveBackColor"|"ActiveTextColor"|"ActiveIconColor"|"HotKey"|"State"|"ContentAreaMargin"|"IgnoreIconForTextAlign"|"ReferencedTitleButton"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function StateItemButton:Get(name, role) end