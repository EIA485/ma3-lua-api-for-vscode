---@meta

---@class UIGrid: Dialog
---@field ScrollCellFrameColor Color
---@field SelectedRowBorder Color
---@field FrameThickness integer
---@field ScrollCellFrameThickness integer
---@field LevelDistance integer
---@field ColumnResizeMaxDeviation integer
---@field Lasso Texture Defines a texture for a selection lasso
---@field LassoColor Color Defines a color for a selection lasso
---@field LevelLimit integer
---@field AutoScrollToEnd boolean
---@field AllowAddContent boolean
---@field AllowAddNewline boolean
---@field AllowMergeChildren boolean
---@field AllowEdit boolean
---@field CanProvideUiGridSelection boolean
---@field AllowFilterContent boolean
---@field FilterBlockUIEnabled boolean
---@field GapsForExpanded boolean
---@field UseUserProfileSettings boolean
---@field ScrollOutEnabled boolean
---@field VScrollOnHeader boolean
---@field ConvertCursorToTabAtBoundaries boolean
---@field ItemPlacementTypeV ArrangementMarcType
---@field ItemPlacementTypeH ArrangementMarcType
---@field ItemPlacementOffsetFactorV number
---@field ItemPlacementOffsetFactorH number
---@field DataType string
---@field SelectionType string
---@field CellType string
---@field SettingsType string
---@field ExternalSettings GridSettings
---@field SortAsc Texture Defines the texture of an icon for sorting in the ascending order
---@field SortDesc Texture Defines the texture of an icon for sorting in the descending order
---@field SelectedRow integer Provides the unique row id associated with the first selected cell
---@field SelectedColumn integer Provides the unique column id associated with the first selected cell
---@field AutoNextCell boolean
---@field AutoNextCellDirection ScrollType
---@field SelectionOnFocusOnly boolean
---@field AutoFitColumn integer
---@field GridVersion integer
---@field OnSelectedItem fun(str: string, int1: integer, int2: integer, bool: boolean) something was added to grid selection
---@field OnSelectedColumn fun(str: string, int: integer) something was added to grid selection
---@field OnSelectedRow fun(str: string, int: integer) something was added to grid selection
---@field OnBeforeEdit fun(str: string, int1: integer, int2: integer) starting cell editing
---@field OnAfterEdit fun(str: string, int1: integer, int2: integer) ending cell editing
---@field OnCellMouseDown fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer)
---@field OnCellMouseDownHold fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer)
---@field OnCellMouseUp fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer)
---@field OnCellMouseClicked fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer)
---@field OnCellMouseDoubleClicked fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer)
---@field OnScreenPushed fun(str: string)
---@field ClearSelection fun(str: string) : boolean Action to clear the current selection; (0:str dummy)
---@field SelectCell fun(str: string, int1: integer, int2: integer) : boolean Action to select a cell; (0:str dummy;1:u64 row unique id;2:u64 column unique id
---@field SelectRow fun(str: string, int: integer) : boolean Action to select a row; (0:str dummy;1:u64 row unique id)
---@field AddRow fun(str: string, int: integer) : boolean Action to add a row; (0:str dummy;1:u64 row unique id)
---@field SelectAllRows fun(str: string) : boolean Action to selecta all rows
---@field SelectColumn fun(str: string, int: integer) : boolean Action to select a column; (0:str dummy;1:u64 column unique id)
---@field SortByColumn fun(str: string, int: integer) : boolean Action to sort by a column; (0:str ('none'|'asc'|'desc');1:u64 column index 0-based)
---@field FilterRows fun(str1: string, str2: string) : boolean Action to filter rows; (0:str - string to filter by)
---@field ClearFilter fun(str: string) : boolean Action to clear the content filter
---@field ScrollVertical fun(str: string, int: integer) : boolean Action to scroll relative; (0:integer:vertical steps)
---@field ScrollHorizontal fun(str: string, int: integer) : boolean Action to scroll relative; (0:integer:horizontal steps)
---@field ExpandAll fun(str: string) : boolean Action to expand all rows
---@field ScrollToEnd fun(str: string) : boolean Action to scroll to last row
---@field ScrollEntity ScrollParamEntity
---@field ScrollCellAutomatic boolean
---@field ScrollCellAutomaticWithOffset boolean
---@field FixedHeaders Graphics.UIGrid.GridArea
---@field FixedCells Graphics.UIGrid.GridArea
---@field NormalHeaders Graphics.UIGrid.GridArea
---@field NormalCells Graphics.UIGrid.GridArea
---@field AllowSorting boolean
---@field CanCellExpand fun(arry: {r: integer, c: integer}) : boolean Checks, whether cell (passed as {r,c}) can expand
---@field IsCellExpanded fun(arry: {r: integer, c: integer}) : boolean Checks whether cell (passed as {r,c}) is expanded
---@field GetSortOrder fun() : GridSortOrder
---@field GetSortCell fun() : {r: integer, c: integer}
---@field SortByColumnName fun(str: string, gridSortOrder: GridSortOrder)
---@field ResizeLineColor Color Defines a color for highlighting the resizing line
local UIGrid = {
    ScrollCellFrameColor="UIGrid.ScrollCellFrame",
    FrameThickness="1",
    ScrollCellFrameThickness="3",
    LevelDistance="24",
    ColumnResizeMaxDeviation="25",
    Lasso="LassoTextureDefault",
    LassoColor="UIGrid.Lasso",
    LevelLimit="255",
    AutoScrollToEnd="No",
    AllowAddContent="Yes",
    AllowAddNewline="Yes",
    AllowMergeChildren="Yes",
    AllowEdit="Yes",
    CanProvideUiGridSelection="Yes",
    AllowFilterContent="No",
    FilterBlockUIEnabled="Yes",
    GapsForExpanded="Yes",
    UseUserProfileSettings="No",
    ScrollOutEnabled="No",
    VScrollOnHeader="Yes",
    ConvertCursorToTabAtBoundaries="No",
    ItemPlacementTypeV="Auto",
    ItemPlacementTypeH="Auto",
    ItemPlacementOffsetFactorV="0",
    ItemPlacementOffsetFactorH="0",
    SortAsc="sort_asc",
    SortDesc="sort_desc",
    AutoNextCell="No",
    AutoNextCellDirection="Vertical",
    SelectionOnFocusOnly="No",
    AutoFitColumn="None",
    GridVersion="None",
    OnSelectedItem="out:OnSelectedItem(s;u8;u8;b;)",
    OnSelectedColumn="out:(s;u8;)",
    OnSelectedRow="out:(s;u8;)",
    OnBeforeEdit="out:(s;u8;u8;)",
    OnAfterEdit="out:(s;u8;u8;)",
    OnCellMouseDown="out:(s;u8;u8;u1;i2;i2;)",
    OnCellMouseDownHold="out:(s;u8;u8;u1;i2;i2;)",
    OnCellMouseUp="out:(s;u8;u8;u1;i2;i2;)",
    OnCellMouseClicked="out:(s;u8;u8;u1;i2;i2;)",
    OnCellMouseDoubleClicked="out:(s;u8;u8;u1;i2;i2;)",
    OnScreenPushed="out:(s;)",
    ClearSelection="in:(s;)",
    SelectCell="in:(s;u8;u8;)",
    SelectRow="in:(s;u8;)",
    AddRow="in:(s;u8;)",
    SelectAllRows="in:(s;)",
    SelectColumn="in:(s;u8;)",
    SortByColumn="in:(s;u4;)",
    FilterRows="in:(s;s;)",
    ClearFilter="in:(s;)",
    ScrollVertical="in:(s;u4;)",
    ScrollHorizontal="in:(s;u4;)",
    ExpandAll="in:(s;)",
    ScrollToEnd="in:(s;)",
    ScrollEntity="Area",
    ScrollCellAutomatic="Yes",
    ScrollCellAutomaticWithOffset="No",
    ResizeLineColor="UIGrid.ResizeLine"
}
---@return "UIGrid"
function UIGrid:GetClass() end
---@return "UIObject"
function UIGrid:GetChildClass() end
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
---@overload fun(name: "ScrollCellFrameColor"|"SelectedRowBorder", role: nil): Color
---@overload fun(name: "FrameThickness"|"ScrollCellFrameThickness"|"LevelDistance"|"ColumnResizeMaxDeviation", role: nil): integer
---@overload fun(name: "Lasso", role: nil): Texture
---@overload fun(name: "LassoColor", role: nil): Color
---@overload fun(name: "LevelLimit", role: nil): integer
---@overload fun(name: "AutoScrollToEnd"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"AllowEdit"|"CanProvideUiGridSelection"|"AllowFilterContent"|"FilterBlockUIEnabled"|"GapsForExpanded"|"UseUserProfileSettings"|"ScrollOutEnabled"|"VScrollOnHeader"|"ConvertCursorToTabAtBoundaries", role: nil): boolean
---@overload fun(name: "ItemPlacementTypeV"|"ItemPlacementTypeH", role: nil): ArrangementMarcType
---@overload fun(name: "ItemPlacementOffsetFactorV"|"ItemPlacementOffsetFactorH", role: nil): number
---@overload fun(name: "DataType"|"SelectionType"|"CellType"|"SettingsType", role: nil): string
---@overload fun(name: "ExternalSettings", role: nil): GridSettings
---@overload fun(name: "SortAsc"|"SortDesc", role: nil): Texture
---@overload fun(name: "SelectedRow"|"SelectedColumn", role: nil): integer
---@overload fun(name: "AutoNextCell", role: nil): boolean
---@overload fun(name: "AutoNextCellDirection", role: nil): ScrollType
---@overload fun(name: "SelectionOnFocusOnly", role: nil): boolean
---@overload fun(name: "AutoFitColumn"|"GridVersion", role: nil): integer
---@overload fun(name: "OnSelectedItem", role: nil): fun(str: string, int1: integer, int2: integer, bool: boolean)
---@overload fun(name: "OnSelectedColumn"|"OnSelectedRow", role: nil): fun(str: string, int: integer)
---@overload fun(name: "OnBeforeEdit"|"OnAfterEdit", role: nil): fun(str: string, int1: integer, int2: integer)
---@overload fun(name: "OnCellMouseDown"|"OnCellMouseDownHold"|"OnCellMouseUp"|"OnCellMouseClicked"|"OnCellMouseDoubleClicked", role: nil): fun(str: string, int1: integer, int2: integer, int3: integer, int4: integer, int5: integer)
---@overload fun(name: "OnScreenPushed", role: nil): fun(str: string)
---@overload fun(name: "ClearSelection", role: nil): fun(str: string) : boolean
---@overload fun(name: "SelectCell", role: nil): fun(str: string, int1: integer, int2: integer) : boolean
---@overload fun(name: "SelectRow"|"AddRow", role: nil): fun(str: string, int: integer) : boolean
---@overload fun(name: "SelectAllRows", role: nil): fun(str: string) : boolean
---@overload fun(name: "SelectColumn"|"SortByColumn", role: nil): fun(str: string, int: integer) : boolean
---@overload fun(name: "FilterRows", role: nil): fun(str1: string, str2: string) : boolean
---@overload fun(name: "ClearFilter", role: nil): fun(str: string) : boolean
---@overload fun(name: "ScrollVertical"|"ScrollHorizontal", role: nil): fun(str: string, int: integer) : boolean
---@overload fun(name: "ExpandAll"|"ScrollToEnd", role: nil): fun(str: string) : boolean
---@overload fun(name: "ScrollEntity", role: nil): ScrollParamEntity
---@overload fun(name: "ScrollCellAutomatic"|"ScrollCellAutomaticWithOffset", role: nil): boolean
---@overload fun(name: "FixedHeaders"|"FixedCells"|"NormalHeaders"|"NormalCells", role: nil): Graphics.UIGrid.GridArea
---@overload fun(name: "AllowSorting", role: nil): boolean
---@overload fun(name: "CanCellExpand"|"IsCellExpanded", role: nil): fun(arry: {r: integer, c: integer}) : boolean
---@overload fun(name: "GetSortOrder", role: nil): fun() : GridSortOrder
---@overload fun(name: "GetSortCell", role: nil): fun() : {r: integer, c: integer}
---@overload fun(name: "SortByColumnName", role: nil): fun(str: string, gridSortOrder: GridSortOrder)
---@overload fun(name: "ResizeLineColor", role: nil): Color
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"X"|"Y"|"W"|"H"|"AbsRect"|"AbsClientRect"|"Texture"|"Font"|"LowDpiFont"|"Text"|"ToolTip"|"HelpTopic"|"BackColor"|"TextColor"|"TextShadowColor"|"MixInBackColor"|"HighlightedColor"|"TextVertical"|"TextAutoAdjust"|"TextUniform"|"FrameWidth"|"Padding"|"Focus"|"UserRights"|"Visible"|"CanCoExistWithModal"|"UserVisible"|"Enabled"|"Interactive"|"Transparent"|"BlockClickThru"|"UserInteracted"|"HasHover"|"Separator"|"HasPressedAnimation"|"ContentDriven"|"ContentWidth"|"ContentHeight"|"ForceContentMin"|"WantsNumericRedirect"|"CloseAction"|"AutoCloseValue"|"UiGroupId"|"LabelLinkHandle"|"IgnoreBackdropPadding"|"MixInBackColorFromParent"|"FocusSearchPolicy"|"IgnoreRequestedSize"|"ForceEncoderBar"|"SuppressOverlayAutoClose"|"IsClosing"|"TextShadow"|"MinSize"|"MaxSize"|"Anchors"|"SignalValue"|"SignalValueHold"|"AlignmentH"|"AlignmentV"|"TextAlignmentH"|"TextAlignmentV"|"Margin"|"PluginComponent"|"HasFocus"|"HideFocusFrame"|"AppearanceSourceClassName"|"VisibleOnlyInAlpha"|"VisibleOnlyInBeta"|"VisibleOnlyInRelease"|"ClickNearest"|"VisibleInAlpha"|"VisibleInBeta"|"VisibleInRelease"|"Clicked"|"ClickedLeft"|"ClickedRight"|"DoubleClicked"|"MouseEnter"|"MouseLeave"|"MouseOverHold"|"MouseUp"|"MouseUpLeft"|"MouseUpRight"|"MouseDown"|"MouseDownLeft"|"MouseDownRight"|"MouseDownHold"|"KeyDown"|"KeyUp"|"CharInput"|"TouchStart"|"TouchUpdate"|"TouchEnd"|"OnLoad"|"OnVisible"|"DescriptionChanged"|"FocusGet"|"FocusLost"|"ForceIntensity"|"DefaultMargin"|"Columns"|"Rows"|"CellWidth"|"CellHeight"|"BlockWidth"|"BlockHeight"|"ExpandContent"|"DefaultMarginOnBorders"|"MixInBackColorFromParentRecursive"|"EncoderUseDisplay"|"RowReductionPolicy"|"ColReductionPolicy"|"SetRow"|"ScrollCellFrameColor"|"SelectedRowBorder"|"FrameThickness"|"ScrollCellFrameThickness"|"LevelDistance"|"ColumnResizeMaxDeviation"|"Lasso"|"LassoColor"|"LevelLimit"|"AutoScrollToEnd"|"AllowAddContent"|"AllowAddNewline"|"AllowMergeChildren"|"AllowEdit"|"CanProvideUiGridSelection"|"AllowFilterContent"|"FilterBlockUIEnabled"|"GapsForExpanded"|"UseUserProfileSettings"|"ScrollOutEnabled"|"VScrollOnHeader"|"ConvertCursorToTabAtBoundaries"|"ItemPlacementTypeV"|"ItemPlacementTypeH"|"ItemPlacementOffsetFactorV"|"ItemPlacementOffsetFactorH"|"DataType"|"SelectionType"|"CellType"|"SettingsType"|"ExternalSettings"|"SortAsc"|"SortDesc"|"SelectedRow"|"SelectedColumn"|"AutoNextCell"|"AutoNextCellDirection"|"SelectionOnFocusOnly"|"AutoFitColumn"|"GridVersion"|"OnSelectedItem"|"OnSelectedColumn"|"OnSelectedRow"|"OnBeforeEdit"|"OnAfterEdit"|"OnCellMouseDown"|"OnCellMouseDownHold"|"OnCellMouseUp"|"OnCellMouseClicked"|"OnCellMouseDoubleClicked"|"OnScreenPushed"|"ClearSelection"|"SelectCell"|"SelectRow"|"AddRow"|"SelectAllRows"|"SelectColumn"|"SortByColumn"|"FilterRows"|"ClearFilter"|"ScrollVertical"|"ScrollHorizontal"|"ExpandAll"|"ScrollToEnd"|"ScrollEntity"|"ScrollCellAutomatic"|"ScrollCellAutomaticWithOffset"|"FixedHeaders"|"FixedCells"|"NormalHeaders"|"NormalCells"|"AllowSorting"|"CanCellExpand"|"IsCellExpanded"|"GetSortOrder"|"GetSortCell"|"SortByColumnName"|"ResizeLineColor", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): UIObject
function UIGrid:Get(name, role) end
---@return GridBase
function UIGrid:GridGetBase() end
---@return GridData
function UIGrid:GridGetData() end
---@return GridSelection
function UIGrid:GridGetSelection() end
---@param x integer
---@param y integer
function UIGrid:GridMoveSelection(x, y) end
---@return table
function UIGrid:GridGetSelectedCells() end
---@return GridSettings
function UIGrid:GridGetSettings() end
---@return {r: integer, c: integer}
function UIGrid:GridGetDimensions() end
---@return {v: table<integer,integer>, h: table<integer,integer>}
function UIGrid:GridGetScrollOffset() end
---@param columnId integer
---@param size integer
function UIGrid:GridSetColumnSize(columnId, size) end
---@return {r: integer, c: integer}
function UIGrid:GridGetScrollOffset() end
---@param cell {r: integer, c: integer}
---@return {text, color:{text, back}}
function UIGrid:GridGetCellData(cell) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:GridIsCellVisible(cell) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:GridCellExists(cell) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:GridIsCellReadOnly(cell) end
---@param cell {r: integer, c: integer}
function UIGrid:GridScrollCellIntoView(cell) end
---@param cell {r: integer, c: integer}
---@return {x, y, w, h}
function UIGrid:GridGetCellDimensions(cell) end
---@return ParentRowId : integer?
---@return rowId : integer
function UIGrid:GridGetParentRowId(rowId) end
---@return {r: integer, c: integer}?
function UIGrid:GridsGetExpandHeaderCell() end
---@return bool?
function UIGrid:GridsGetExpandHeaderCellState() end
---@param cell {r: integer, c: integer}
---@return integer?
function UIGrid:GridsGetLevelButtonWidth(cell) end
---@param columnId integer
---@return integer?
function UIGrid:GridsGetColumnById(columnId) end
---@param rowId integer
---@return integer?
function UIGrid:GridsGetRowById(rowId) end
---@param cell {r: integer, c: integer}
---@return bool
function UIGrid:FSExtendedModeHasDots(cell) end