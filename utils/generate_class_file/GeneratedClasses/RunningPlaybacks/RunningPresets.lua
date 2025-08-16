---@meta

---@class RunningPresets: RunningPlaybacks
local RunningPresets = {}
---@return "RunningPresets"
function RunningPresets:GetClass() end
---@return "Preset"
function RunningPresets:GetChildClass() end
---@generic T : RunningPresets
---@param class `T`
---@return boolean
function RunningPresets:IsClass(class) end
---@return RunningPlaybacksCollect
function RunningPresets:Parent() end
---@param index integer
---@return Preset
function RunningPresets:Ptr(index) end
---@return Preset[]
function RunningPresets:Children() end
---@return Preset?
function RunningPresets:CurrentChild() end
---@overload fun(name: integer, role: nil): Preset
function RunningPresets:Get(name, role) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?): Preset
function RunningPresets:Create(index, class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: nil, undo: Undo?, count: integer?): Preset
function RunningPresets:Append(class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Preset
function RunningPresets:Acquire(class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Preset
---@deprecated use "Acquire" instead
function RunningPresets:Aquire(class, undo) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Preset
function RunningPresets:Insert(index, class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Preset
function RunningPresets:Find(class, undo) end
---@generic T : Recipe|IllegalObject
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: nil): Object
function RunningPresets:FindRecursive(name, class) end
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "PresetModeInternal"|"PresetMode", property_value: PresetMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "InputFilter"|"Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"RecipeTemplate"|"EmptyLastCooking"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"MAgic", property_value: YesNo|boolean)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "Type"|"StoredData"|"User"|"FeatureGroup"|"Trigger", property_value: string)
function RunningPresets:SetChildren(property_name, property_value) end
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "PresetModeInternal"|"PresetMode", property_value: PresetMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "InputFilter"|"Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"RecipeTemplate"|"EmptyLastCooking"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"MAgic", property_value: YesNo|boolean)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "Type"|"StoredData"|"User"|"FeatureGroup"|"Trigger", property_value: string)
function RunningPresets:SetChildrenRecursive(property_name, property_value) end