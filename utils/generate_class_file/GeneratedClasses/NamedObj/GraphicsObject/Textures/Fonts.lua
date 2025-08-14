---@meta

---@class Fonts: Textures A texture atlas and a container for font objects (class Font) that are stored in this texture atlas
local Fonts = {}
---@return "Fonts"
function Fonts:GetClass() end
---@return "Font"
function Fonts:GetChildClass() end
---@param index integer
---@return Font
function Fonts:Ptr(index) end
---@return Font[]
function Fonts:Children() end
---@return Font?
function Fonts:CurrentChild() end
---@overload fun(name: integer, role: nil): Font
function Fonts:Get(name, role) end
---@generic T : Font
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Font
function Fonts:Create(index, class, undo) end
---@generic T : Font
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Font
function Fonts:Append(class, undo, count) end
---@generic T : Font
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Font
function Fonts:Acquire(class, undo) end
---@generic T : Font
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Font
---@deprecated use "Acquire" instead
function Fonts:Aquire(class, undo) end
---@generic T : Font
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Font
function Fonts:Insert(index, class, undo, count) end
---@generic T : Font
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Font
function Fonts:Find(class, undo) end
---@generic T : Font|SampleTableView|Toolbar|UiFader|NotificationTitle|ProgressBar|DCRemoteInfo|UIGridCellBase|ScrollBar|UIGridFilterBlock|ScrollContainer|NotificationsWrapper|NotificationsGridScroller|Dialog|AutoLayout|SplitView|ScrollContainerPageBase|FrameBufferObject|Navigator|TitleBar|DialogFrame|PropertyBox|Overlay|TextEdit|ObjectProperties|VirtualKeyboard|Bar|GlWindowBase|UiMessageCenter|CustomMasterLayoutGrid|TagButtonList|PhaserUICenter|CloningDialog|AllExecDisplay|DialogTrackpad|PoolLayoutGrid|ScribbleEditContent|MainDialogSubMenuContent|ExecutorSection|MainDialogFunctionButtons|AgendaMonthsGrid|GridContentFilterEditor|SpecialWindowContent|UiScreen|BladeView|MainDialogContent|MatricksContainer|ThemeMergeToolBar|CmdDlgFunctionButtonsBase|GenericAssignmentSelector|PlaybackControlContent|AppearanceEditContent|ShaperEditorFaderGrid|EditorPropertyButtons|TagsEditContent|ReferencesContainer|PlaybackControlModularContent|NormedGrid|CommandWingBarContainer|InfoNotesWrapper|AtFilterDialog|UIPhaserTimeLineGrid|SpecialExecSection|AllPoolLayoutGrid|BaseClock|TouchMonitor|AgendaDaysGrid|TreeViewFrame|PhaserLayoutGrid|EncoderBarSlot|Splitter|LinearResizer|UIObjectFake|PropertyControl|UIGridConfigButton|ShowVKButton|ScrollBarButton|MovableButton|LogoButton|UIGridButton|DeleteWindowButton|IndicatorButton|WarningInfoButton|EjectButton|DimmerWheelButton|CloseButton|SoundPoolTitleButton|FilterPoolTitleButton|TimecodePoolTitleButton|TimerPoolTitleButton|VideoPoolTitleButton|PluginPoolTitleButton|GelPoolTitleButton|TimecodeSlotPoolTitleButton|SequencePoolTitleButton|MacroPoolTitleButton|AllPoolTitleButton|ShowMoreButton|MouseButton|MessageCenterButton|TreeExpandButton|AgendaDayButton|ProgressButton|TagButton|MessageCenterInfoButton|DriveStatusButton|SelectButton|RevertButton|PlaceHolderBase|LineEdit|ColorView|NotificationIcon|SensorView|DialogContainer|ScrollableItemList|ResizeCorner|ScribbleEditView|PropertyLabel|BandFader|MiniEncoder|ScrollBox|StatusBar|MultiScroller|NotificationText|TimecodeSlotInfo|TextView|TouchConfigurator|InfoNotesLabel|AppearancePreview|MacrolinePreview|TrackpadMouseControl|SoundBandView|MainDialogDummy|EditorSubCategoryButton|CommandLineOutput|InfoNotesLevel|AllExecContent|TreeViewRows|SoundLevelView|PerformanceView|ColorTestView|EditorCategoryButton|InfoNotesGridScroller|TouchTarget|EditorBase|BladeViewButton|OutputTest|BaseSymbol|ColorPickBase|TreeViewRow|SignalView|ShaperTestView
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
function Fonts:FindRecursive(name, class) end