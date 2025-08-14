---@meta

---@class Item: GraphicsObject Represents a single item (a row or a column) of a grid configuration
---@field SizePolicy LayoutSizePolicy
---@field Size Graphics.FixedSize
---@field MinSize Graphics.SizeDescriptor minimum size that is requested for this item (row or column). if <= 0 - not used
---@field RealSize integer real size in pixels
local Item = {
    SizePolicy="Stretch",
    Size="1",
    MinSize="0"
}
---@return "Item"
function Item:GetClass() end
---@return "GraphicsObject"
function Item:GetChildClass() end
---@return ItemCollect
function Item:Parent() end
---@overload fun(name: "Size", role: nil): Graphics.FixedSize
---@overload fun(name: "MinSize", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "SizePolicy", role: nil): LayoutSizePolicy
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "RealSize"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SizePolicy"|"Size"|"MinSize"|"RealSize"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Item:Get(name, role) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?): GraphicsObject
function Item:Create(index, class, undo) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?, count: integer?): GraphicsObject
function Item:Append(class, undo, count) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
function Item:Acquire(class, undo) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
---@deprecated use "Acquire" instead
function Item:Aquire(class, undo) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "GraphicsObject", undo: Undo?, count: integer?): GraphicsObject
---@overload fun(index: integer, class: "NoteTextEdit", undo: Undo?, count: integer?): NoteTextEdit
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GraphicsObject
function Item:Insert(index, class, undo, count) end
---@generic T : ContentSheetGridScroller|MeshLineEdit|DMXSheet|MeshMaterialGrid|FixtureSheet
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "GraphicsObject", undo: Undo?): GraphicsObject
---@overload fun(class: "NoteTextEdit", undo: Undo?): NoteTextEdit
---@overload fun(class: nil, undo: Undo?): GraphicsObject
function Item:Find(class, undo) end
---@generic T : SampleTableView|Toolbar|UiFader|NotificationTitle|ProgressBar|DCRemoteInfo|UIGridCellBase|ScrollBar|UIGridFilterBlock|ScrollContainer|NotificationsWrapper|NotificationsGridScroller|Dialog|AutoLayout|SplitView|ScrollContainerPageBase|FrameBufferObject|Navigator|TitleBar|DialogFrame|PropertyBox|Overlay|TextEdit|ObjectProperties|VirtualKeyboard|Bar|GlWindowBase|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|AllExecDisplay|DialogTrackpad|PoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|ExecutorSection|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|UiScreen|BladeView|MainDialogContent|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|InfoNotesWrapper|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|LinearResizer|UIObjectFake|PropertyControl|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|LogoButton|UIGridButton|DeleteWindowButton|IndicatorButton|WarningInfoButton|EjectButton|DimmerWheelButton|CloseButton|SoundPoolTitleButton|FilterPoolTitleButton|TimecodePoolTitleButton|TimerPoolTitleButton|VideoPoolTitleButton|PluginPoolTitleButton|GelPoolTitleButton|TimecodeSlotPoolTitleButton|SequencePoolTitleButton|MacroPoolTitleButton|AllPoolTitleButton|ShowMoreButton|MouseButton|MessageCenterButton|TreeExpandButton|AgendaDayButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|SelectButton|RevertButton|PlaceHolderBase|LineEdit|ColorView|NotificationIcon|SensorView|DialogContainer|ScrollableItemList|ResizeCorner|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|NotificationText|TimecodeSlotInfo|TextView|TouchConfigurator|InfoNotesLabel|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|MainDialogDummy|EditorSubCategoryButton|CommandLineOutput|InfoNotesLevel|AllExecContent|TreeViewRows|SoundLevelView|PerformanceView|ColorTestView|EditorCategoryButton|InfoNotesGridScroller|TouchTarget|EditorBase|BladeViewButton|OutputTest|BaseSymbol|ColorPickBase|TreeViewRow|SignalView|ShaperTestView
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "GraphicsObject"): GraphicsObject
---@overload fun(name: string, class: "UIObject"): UIObject
---@overload fun(name: string, class: "UILayoutGrid"): UILayoutGrid
---@overload fun(name: string, class: "Drawable"): Drawable
---@overload fun(name: string, class: "Button"): Button
---@overload fun(name: string, class: "TitleButton"): TitleButton
---@overload fun(name: string, class: "PoolTitleButton"): PoolTitleButton
---@overload fun(name: string, class: nil): Object
function Item:FindRecursive(name, class) end
---@generic T : ItemCollect
---@param class `T`
---@return T
function Item:FindParent(class) end