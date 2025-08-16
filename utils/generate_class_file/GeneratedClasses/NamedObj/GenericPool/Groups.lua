---@meta

---@class Groups: GenericPool
local Groups = {}
---@return "Groups"
function Groups:GetClass() end
---@return "Group"
function Groups:GetChildClass() end
---@generic T : Groups
---@param class `T`
---@return boolean
function Groups:IsClass(class) end
---@return Pool
function Groups:Parent() end
---@param index integer
---@return Group
function Groups:Ptr(index) end
---@return Group[]
function Groups:Children() end
---@return Group?
function Groups:CurrentChild() end
---@overload fun(name: integer, role: nil): Group
function Groups:Get(name, role) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "Group", undo: Undo?): Group
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?): Group
function Groups:Create(index, class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "Group", undo: Undo?, count: integer?): Group
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: nil, undo: Undo?, count: integer?): Group
function Groups:Append(class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Group
function Groups:Acquire(class, undo) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Group
---@deprecated use "Acquire" instead
function Groups:Aquire(class, undo) end
---@generic T : Recipe
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "Group", undo: Undo?, count: integer?): Group
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Group
function Groups:Insert(index, class, undo, count) end
---@generic T : Recipe
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "Group", undo: Undo?): Group
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: nil, undo: Undo?): Group
function Groups:Find(class, undo) end
---@overload fun(property_name: "SelectionData", property_value: SubfixtureBlock)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "Mode", property_value: integer|GroupMasterMode)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MemoryType", property_value: GroupMemoryType)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "MoveGridCursor", property_value: GridCursorMovementGroup)
---@overload fun(property_name: "CuePart", property_value: CuePartMode)
---@overload fun(property_name: "PresetData", property_value: EncoderLinkPhaser[])
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "MoveGridCursor", property_value: GridCursorMovementGroup)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "Mode", property_value: GroupMasterMode)
---@overload fun(property_name: "MemoryType", property_value: GroupMemoryType)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Action", property_value: PresetActionToken)
---@overload fun(property_name: "PresetModeInternal"|"PresetMode", property_value: PresetMode)
---@overload fun(property_name: "ValuesMode", property_value: PresetValuesMode)
---@overload fun(property_name: "SpeedMaster", property_value: SpeedMaster)
---@overload fun(property_name: "SpeedScale", property_value: SpeedScale)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "SelectionData", property_value: SubfixtureBlock)
---@overload fun(property_name: "OffFade", property_value: TimePropertyValue)
---@overload fun(property_name: "InputFilter"|"Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"PreserveGridPositions"|"RecipeTemplate"|"EmptyLastCooking"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"MAgic", property_value: YesNo|boolean)
---@overload fun(property_name: "Mode", property_value: integer)
---@overload fun(property_name: "Type"|"StoredData"|"User"|"FeatureGroup"|"Trigger", property_value: string)
function Groups:SetChildren(property_name, property_value) end