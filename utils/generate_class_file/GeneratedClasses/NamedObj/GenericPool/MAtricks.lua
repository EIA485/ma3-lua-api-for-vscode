---@meta

---@class MAtricks: GenericPool
local MAtricks = {}
---@return "MAtricks"
function MAtricks:GetClass() end
---@return "MAtrick"
function MAtricks:GetChildClass() end
---@generic T : MAtricks
---@param class `T`
---@return boolean
function MAtricks:IsClass(class) end
---@return Pool
function MAtricks:Parent() end
---@param index integer
---@return MAtrick
function MAtricks:Ptr(index) end
---@return MAtrick[]
function MAtricks:Children() end
---@return MAtrick?
function MAtricks:CurrentChild() end
---@overload fun(name: integer, role: nil): MAtrick
function MAtricks:Get(name, role) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?): MAtrick
function MAtricks:Create(index, class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "MAtrick", undo: Undo?, count: integer?): MAtrick
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: nil, undo: Undo?, count: integer?): MAtrick
function MAtricks:Append(class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): MAtrick
function MAtricks:Acquire(class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): MAtrick
---@deprecated use "Acquire" instead
function MAtricks:Aquire(class, undo) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "MAtrick", undo: Undo?, count: integer?): MAtrick
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MAtrick
function MAtricks:Insert(index, class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "MAtrick", undo: Undo?): MAtrick
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): MAtrick
function MAtricks:Find(class, undo) end
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "InvertStyle", property_value: MatricksInvertStyle)
---@overload fun(property_name: "ShuffleMode", property_value: ShuffleMode)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "PhaserTransform", property_value: PhaserTransformationsShort)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks"|"InitialMatricks", property_value: MAtrick)
---@overload fun(property_name: "YBlock"|"XBlock"|"ZBlock", property_value: MatricksBlockNone)
---@overload fun(property_name: "XGroup"|"ZGroup"|"YGroup", property_value: MatricksGroupNone)
---@overload fun(property_name: "Y"|"X"|"Z", property_value: MatricksIndexNone)
---@overload fun(property_name: "InvertStyle", property_value: MatricksInvertStyle)
---@overload fun(property_name: "XShift"|"ZShift"|"YShift", property_value: MatricksShiftNone)
---@overload fun(property_name: "YShuffle"|"XShuffle"|"ZShuffle", property_value: MatricksShuffleNone)
---@overload fun(property_name: "XWings"|"YWings"|"ZWings", property_value: MatricksWingsNone)
---@overload fun(property_name: "XWidth"|"ZWidth"|"YWidth", property_value: MatrixWidthAuto)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "PhaserTransform", property_value: PhaserTransformationsShort)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "PresetMode"|"PresetModeInternal", property_value: PresetMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "ShuffleMode", property_value: ShuffleMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Filter"|"InputFilter", property_value: World)
---@overload fun(property_name: "MAgic"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"OwnDataPresent"|"AlignRangeY"|"OwnNonCookedDataPresent"|"Active"|"AlignRangeZ"|"HasAnyMatricksData"|"RelativeFade"|"RelativeDelay"|"RecipeTemplate"|"RelativePhase"|"RelativeSpeed"|"Relative"|"Enabled"|"EmptyLastCooking", property_value: YesNo|boolean)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "Type"|"StoredData"|"InitialName"|"User"|"FeatureGroup"|"Trigger", property_value: string)
function MAtricks:Mode(property_name, property_value) end