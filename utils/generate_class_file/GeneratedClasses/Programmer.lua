---@meta

---@class Programmer: Object
local Programmer = {}
---@return "Programmer"
function Programmer:GetClass() end
---@return "ProgPart"
function Programmer:GetChildClass() end
---@generic T : Programmer
---@param class `T`
---@return boolean
function Programmer:IsClass(class) end
---@return UserEnvironment
function Programmer:Parent() end
---@param index integer
---@return ProgPart
function Programmer:Ptr(index) end
---@return ProgPart[]
function Programmer:Children() end
---@return ProgPart?
function Programmer:CurrentChild() end
---@overload fun(name: integer, role: nil): ProgPart
function Programmer:Get(name, role) end
---@generic T : ProgPart
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ProgPart
function Programmer:Create(index, class, undo) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgPart
function Programmer:Append(class, undo, count) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgPart
function Programmer:Acquire(class, undo) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgPart
---@deprecated use "Acquire" instead
function Programmer:Aquire(class, undo) end
---@generic T : ProgPart
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgPart
function Programmer:Insert(index, class, undo, count) end
---@generic T : ProgPart
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgPart
function Programmer:Find(class, undo) end
---@generic T : IllegalObject|ProgPart|Recipe
---@param name string
---@param class `T`
---@return T
---@overload fun(name: string, class: nil): Object
function Programmer:FindRecursive(name, class) end
---@overload fun(property_name: "Part", property_value: integer)
---@overload fun(property_name: "Part", property_value: integer)
function Programmer:Part(property_name, property_value) end
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "Part", property_value: integer)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "Enabled"|"EmptyLastCooking", property_value: YesNo|boolean)
---@overload fun(property_name: "Part", property_value: integer)
function Programmer:Filter(property_name, property_value) end
---@overload fun(property_name: "FailedCookedPart", property_value: FailedCookedPart)
---@overload fun(property_name: "Generator", property_value: GeneratorBaseObject)
---@overload fun(property_name: "Selection", property_value: Group)
---@overload fun(property_name: "MAtricks", property_value: MAtrick)
---@overload fun(property_name: "Values", property_value: Object)
---@overload fun(property_name: "Preset", property_value: Preset)
---@overload fun(property_name: "SelectionMode", property_value: StrictNormalMode)
---@overload fun(property_name: "Filter", property_value: World)
---@overload fun(property_name: "EmptyLastCooking"|"Enabled", property_value: YesNo|boolean)
---@overload fun(property_name: "Part", property_value: integer)
function Programmer:SetChildrenRecursive(property_name, property_value) end