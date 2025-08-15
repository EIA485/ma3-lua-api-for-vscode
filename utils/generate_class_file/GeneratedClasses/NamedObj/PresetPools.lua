---@meta

---@class PresetPools: NamedObj Container for preset pools.
local PresetPools = {}
---@return "PresetPools"
function PresetPools:GetClass() end
---@return "Presets"
function PresetPools:GetChildClass() end
---@generic T : PresetPools
---@param class `T`
---@return boolean
function PresetPools:IsClass(class) end
---@return Pool
function PresetPools:Parent() end
---@param index integer
---@return Presets
function PresetPools:Ptr(index) end
---@return Presets[]
function PresetPools:Children() end
---@return Presets?
function PresetPools:CurrentChild() end
---@overload fun(name: integer, role: nil): Presets
function PresetPools:Get(name, role) end
---@generic T : Presets
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Presets
function PresetPools:Create(index, class, undo) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Presets
function PresetPools:Append(class, undo, count) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Presets
function PresetPools:Acquire(class, undo) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Presets
---@deprecated use "Acquire" instead
function PresetPools:Aquire(class, undo) end
---@generic T : Presets
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Presets
function PresetPools:Insert(index, class, undo, count) end
---@generic T : Presets
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Presets
function PresetPools:Find(class, undo) end
---@generic T : Presets|Recipe|IllegalObject
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: nil): Object
function PresetPools:FindRecursive(name, class) end
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetMode", property_value: PresetMode)
---@overload fun(property_name: "InputFilter", property_value: World)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetMode", property_value: PresetMode)
---@overload fun(property_name: "InputFilter", property_value: World)
function PresetPools:InputFilter(property_name, property_value) end
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "CuePart"|"CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "PresetMode"|"PresetModeInternal"|"PresetMode", property_value: PresetMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "InputFilter"|"Filter"|"InputFilter", property_value: World)
---@overload fun(property_name: "Enabled"|"RecipeTemplate"|"EmptyLastCooking"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"MAgic", property_value: YesNo|boolean)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "Type"|"StoredData"|"User"|"FeatureGroup"|"Trigger", property_value: string)
function PresetPools:Mode(property_name, property_value) end
---@overload fun(property_name: "CuePart"|"CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "PresetMode"|"PresetMode"|"PresetModeInternal", property_value: PresetMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "InputFilter"|"InputFilter"|"Filter", property_value: World)
---@overload fun(property_name: "MAgic"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"RecipeTemplate"|"EmptyLastCooking"|"Enabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "Type"|"User"|"FeatureGroup"|"Trigger"|"StoredData", property_value: string)
function PresetPools:SetChildrenRecursive(property_name, property_value) end