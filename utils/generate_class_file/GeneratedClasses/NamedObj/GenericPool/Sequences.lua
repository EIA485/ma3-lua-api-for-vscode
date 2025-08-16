---@meta

---@class Sequences: GenericPool A pool of sequences.
local Sequences = {}
---@return "Sequences"
function Sequences:GetClass() end
---@return "Sequence"
function Sequences:GetChildClass() end
---@generic T : Sequences
---@param class `T`
---@return boolean
function Sequences:IsClass(class) end
---@return Pool
function Sequences:Parent() end
---@param index integer
---@return Sequence
function Sequences:Ptr(index) end
---@return Sequence[]
function Sequences:Children() end
---@return Sequence?
function Sequences:CurrentChild() end
---@overload fun(name: integer, role: nil): Sequence
function Sequences:Get(name, role) end
---@generic T : Sequence
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Sequence
function Sequences:Create(index, class, undo) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Sequence
function Sequences:Append(class, undo, count) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sequence
function Sequences:Acquire(class, undo) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sequence
---@deprecated use "Acquire" instead
function Sequences:Aquire(class, undo) end
---@generic T : Sequence
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Sequence
function Sequences:Insert(index, class, undo, count) end
---@generic T : Sequence
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Sequence
function Sequences:Find(class, undo) end
---@generic T : Sequence|IllegalObject|Cue|Recipe|Part
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Sequences:FindRecursive(name, class) end
---@overload fun(property_name: "Action", property_value: SequenceActionToken)
---@overload fun(property_name: "Action", property_value: SequenceActionToken)
---@overload fun(property_name: "TimingGoBack"|"TimingGoFast"|"TimingGoto"|"TimingGoBackFast", property_value: TimeDefault)
---@overload fun(property_name: "CueNo"|"Type"|"CueName"|"User", property_value: string)
function Sequences:SetChildren(property_name, property_value) end
---@overload fun(property_name: "No", property_value: CueNumber)
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Assert", property_value: CueAssert)
---@overload fun(property_name: "Action", property_value: SequenceActionToken)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "TrigSound", property_value: SoundValues)
---@overload fun(property_name: "Assert", property_value: CueAssert)
---@overload fun(property_name: "No", property_value: CueNumber)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "MIBMode", property_value: MibMode)
---@overload fun(property_name: "MIBMultiStep", property_value: MibMultiStep)
---@overload fun(property_name: "MIBPreference", property_value: MibPreferenceLevel)
---@overload fun(property_name: "MIBDelay"|"MIBFade", property_value: MibTiming)
---@overload fun(property_name: "Values"|"Break", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "MIBTarget"|"TrackingDistance", property_value: RelCueNumber)
---@overload fun(property_name: "Action", property_value: SequenceActionToken)
---@overload fun(property_name: "TrigSound", property_value: SoundValues)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "TimingGoBack"|"TimingGoFast"|"TimingGoto"|"TimingGoBackFast", property_value: TimeDefault)
---@overload fun(property_name: "IndivDelay"|"IndivDuration"|"Duration"|"TrigTime"|"IndivFade", property_value: TimePropertyValue)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"EmptyLastCooking"|"CommandEnabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Sync"|"Morph"|"AllowDuplicates"|"Release", property_value: Yes|true)
---@overload fun(property_name: "TrigType"|"Part", property_value: integer)
---@overload fun(property_name: "User"|"Command"|"Type"|"CueNo"|"CueName", property_value: string)
function Sequences:SetChildrenRecursive(property_name, property_value) end