---@meta

---@class PoolSettingsCollect: Object
local PoolSettingsCollect = {}
---@return "PoolSettingsCollect"
function PoolSettingsCollect:GetClass() end
---@return "PoolSettings"
function PoolSettingsCollect:GetChildClass() end
---@generic T : PoolSettingsCollect
---@param class `T`
---@return boolean
function PoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PoolSettings
function PoolSettingsCollect:Ptr(index) end
---@return PoolSettings[]
function PoolSettingsCollect:Children() end
---@return PoolSettings?
function PoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PoolSettings
function PoolSettingsCollect:Get(name, role) end
---@generic T : PoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PoolSettings
function PoolSettingsCollect:Create(index, class, undo) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PoolSettings
function PoolSettingsCollect:Append(class, undo, count) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolSettings
function PoolSettingsCollect:Acquire(class, undo) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolSettings
---@deprecated use "Acquire" instead
function PoolSettingsCollect:Aquire(class, undo) end
---@generic T : PoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PoolSettings
function PoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PoolSettings
function PoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "Action", property_value: TimecodeSlotPoolAction|PresetAction|SequenceAction|VideoPoolAction|TimecodePoolAction|FilterAction|SoundPoolAction|MacroPoolAction|PluginPoolAction)
---@overload fun(property_name: "FixtureSourceType", property_value: FixtureSourceType)
---@overload fun(property_name: "TimerAction", property_value: TimerAction)
---@overload fun(property_name: "PoolColumnsCount", property_value: DefinedPoolColumns)
---@overload fun(property_name: "PlaybacksToShow", property_value: PlaybacksToShow)
---@overload fun(property_name: "DataPool", property_value: Pool)
---@overload fun(property_name: "ObjectType", property_value: ShowCreatorObjectType)
---@overload fun(property_name: "PoolType", property_value: Pooltype)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "DisplayMode", property_value: PresetDisplayMode)
---@overload fun(property_name: "SortColorBySaturation", property_value: SortColorBy)
---@overload fun(property_name: "UseChannelSet", property_value: AutoCreateSource)
---@overload fun(property_name: "DestinationObject", property_value: Object)
---@overload fun(property_name: "UseChannelSet", property_value: AutoCreateSource)
---@overload fun(property_name: "PoolColumnsCount", property_value: DefinedPoolColumns)
---@overload fun(property_name: "Action", property_value: FilterAction)
---@overload fun(property_name: "FixtureSourceType", property_value: FixtureSourceType)
---@overload fun(property_name: "Action", property_value: MacroPoolAction)
---@overload fun(property_name: "DestinationObject", property_value: Object)
---@overload fun(property_name: "PlaybacksToShow", property_value: PlaybacksToShow)
---@overload fun(property_name: "Action", property_value: PluginPoolAction)
---@overload fun(property_name: "DataPool", property_value: Pool)
---@overload fun(property_name: "PoolType", property_value: Pooltype)
---@overload fun(property_name: "Action", property_value: PresetAction)
---@overload fun(property_name: "DisplayMode", property_value: PresetDisplayMode)
---@overload fun(property_name: "Action", property_value: SequenceAction)
---@overload fun(property_name: "ObjectType", property_value: ShowCreatorObjectType)
---@overload fun(property_name: "SortColorBySaturation", property_value: SortColorBy)
---@overload fun(property_name: "Action", property_value: SoundPoolAction)
---@overload fun(property_name: "Action", property_value: TimecodePoolAction)
---@overload fun(property_name: "Action", property_value: TimecodeSlotPoolAction)
---@overload fun(property_name: "TimerAction", property_value: TimerAction)
---@overload fun(property_name: "PoolColor"|"EmptyColor"|"ForNoneColor"|"ForSomeColor"|"ForAllColor", property_value: UColor)
---@overload fun(property_name: "User", property_value: User)
---@overload fun(property_name: "Action", property_value: VideoPoolAction)
---@overload fun(property_name: "IncludeDependencies"|"GapsImport"|"GapsExport"|"ShowEmpty"|"ShowBottomMenu"|"MyPlaybacksOnly"|"RightClickToEdit"|"SheetStyle"|"ObjectActionEnabled"|"OffMode"|"HoldList"|"DrawActiveMode"|"ShowName"|"CreateReferenceObject"|"ShowKey"|"SheetStyle"|"UseColorBook"|"FixtureGrid"|"Advanced"|"ExpandAtFilter", property_value: YesNo|boolean)
---@overload fun(property_name: "SubPoolSelectorValue"|"SubPoolSelectorIndex"|"DimmerIncrement"|"AmountHue"|"AmountSaturation", property_value: integer)
---@overload fun(property_name: "DisplayPool"|"SelectedDataPool", property_value: string)
function PoolSettingsCollect:SetChildren(property_name, property_value) end