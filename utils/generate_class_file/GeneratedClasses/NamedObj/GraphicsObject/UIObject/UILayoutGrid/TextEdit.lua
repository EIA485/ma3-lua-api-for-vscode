---@meta

---@class TextEdit: UILayoutGrid A text viewing/editing UI control. Can edit a UTF8 multi-line text
---@field CursorTexture Texture
---@field SelectionBackgroundTexture Texture
---@field SelectionColor Color
---@field ColorLineNumberBackground Color
---@field ColorLineNumberNormal Color
---@field ColorLineNumberSelected Color
---@field ColorSelectedLineRect Color
---@field Execute fun(str: string) your description here
---@field UndoRedoChanged fun(str: string, int1: integer, int2: integer) your description here
---@field ScrolledToEndV fun(str: string) your description here
---@field Undo fun(str: string) : boolean
---@field Redo fun(str: string) : boolean
---@field SetText fun(str: string) : boolean
---@field InsertText fun(str: string) : boolean
---@field ClearText fun(str: string) : boolean
---@field ReadOnly boolean
---@field ShowLineNumbers boolean
---@field ShowWhiteSpace boolean
---@field HighlightCurrentLine boolean
---@field NewlineWithSpaces boolean
---@field ForceCursor boolean
---@field Content string
---@field Target Object
---@field Property string
---@field SetCursorToEnd fun(str: string) : boolean
---@field VisualisableScrollV boolean
---@field VisualisableScrollH boolean
---@field EnterToExecute boolean
---@field UndoCount integer
---@field RedoCount integer
local TextEdit = {
    CursorTexture="text_cursor",
    SelectionBackgroundTexture="white",
    SelectionColor="LineEdit.TextSelectionBackground",
    ColorLineNumberBackground="LineEdit.LineNumberBackground",
    ColorLineNumberNormal="LineEdit.LineNumberNormal",
    ColorLineNumberSelected="LineEdit.LineNumberSelected",
    ColorSelectedLineRect="LineEdit.SelectedLineRect",
    Execute="out:(s;)",
    UndoRedoChanged="out:(s;i4;i4;)",
    ScrolledToEndV="out:(s;)",
    Undo="in:(s;)",
    Redo="in:(s;)",
    SetText="in:(s;)",
    InsertText="in:(s;)",
    ClearText="in:(s;)",
    ReadOnly="No",
    ShowLineNumbers="No",
    ShowWhiteSpace="No",
    HighlightCurrentLine="No",
    NewlineWithSpaces="No",
    ForceCursor="No",
    SetCursorToEnd="in:(s;)",
    VisualisableScrollV="Yes",
    VisualisableScrollH="Yes",
    EnterToExecute="No",
    UndoCount="0",
    RedoCount="0"
}
---@return "TextEdit"
function TextEdit:GetClass() end
---@return "UIObject"
function TextEdit:GetChildClass() end
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
---@overload fun(name: "CursorTexture"|"SelectionBackgroundTexture", role: nil): Texture
---@overload fun(name: "SelectionColor"|"ColorLineNumberBackground"|"ColorLineNumberNormal"|"ColorLineNumberSelected"|"ColorSelectedLineRect", role: nil): Color
---@overload fun(name: "Execute", role: nil): fun(str: string)
---@overload fun(name: "UndoRedoChanged", role: nil): fun(str: string, int1: integer, int2: integer)
---@overload fun(name: "ScrolledToEndV", role: nil): fun(str: string)
---@overload fun(name: "Undo"|"Redo"|"SetText"|"InsertText"|"ClearText", role: nil): fun(str: string) : boolean
---@overload fun(name: "ReadOnly"|"ShowLineNumbers"|"ShowWhiteSpace"|"HighlightCurrentLine"|"NewlineWithSpaces"|"ForceCursor", role: nil): boolean
---@overload fun(name: "Content", role: nil): string
---@overload fun(name: "Target", role: nil): Object
---@overload fun(name: "Property", role: nil): string
---@overload fun(name: "SetCursorToEnd", role: nil): fun(str: string) : boolean
---@overload fun(name: "VisualisableScrollV"|"VisualisableScrollH"|"EnterToExecute", role: nil): boolean
---@overload fun(name: "UndoCount"|"RedoCount", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"RowReductionPolicy"|"ColReductionPolicy"|"SetRow"|"CursorTexture"|"SelectionBackgroundTexture"|"SelectionColor"|"ColorLineNumberBackground"|"ColorLineNumberNormal"|"ColorLineNumberSelected"|"ColorSelectedLineRect"|"Execute"|"UndoRedoChanged"|"ScrolledToEndV"|"Undo"|"Redo"|"SetText"|"InsertText"|"ClearText"|"ReadOnly"|"ShowLineNumbers"|"ShowWhiteSpace"|"HighlightCurrentLine"|"NewlineWithSpaces"|"ForceCursor"|"Content"|"Target"|"Property"|"SetCursorToEnd"|"VisualisableScrollV"|"VisualisableScrollH"|"EnterToExecute"|"UndoCount"|"RedoCount", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function TextEdit:Get(name, role) end
