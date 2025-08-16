---@meta

---@class TimecodeSlots: Object
local TimecodeSlots = {}
---@return "TimecodeSlots"
function TimecodeSlots:GetClass() end
---@return "TCSlot"
function TimecodeSlots:GetChildClass() end
---@generic T : TimecodeSlots
---@param class `T`
---@return boolean
function TimecodeSlots:IsClass(class) end
---@return Root
function TimecodeSlots:Parent() end
---@param index integer
---@return TCSlot
function TimecodeSlots:Ptr(index) end
---@return TCSlot[]
function TimecodeSlots:Children() end
---@return TCSlot?
function TimecodeSlots:CurrentChild() end
---@overload fun(name: integer, role: nil): TCSlot
function TimecodeSlots:Get(name, role) end
---@generic T : TCSlot
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Create(index, class, undo) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TCSlot
function TimecodeSlots:Append(class, undo, count) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Acquire(class, undo) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TCSlot
---@deprecated use "Acquire" instead
function TimecodeSlots:Aquire(class, undo) end
---@generic T : TCSlot
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TCSlot
function TimecodeSlots:Insert(index, class, undo, count) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Find(class, undo) end
---@overload fun(property_name: "GeneratorFrameUnit", property_value: FrameFormat)
---@overload fun(property_name: "SourceIP", property_value: Network.IP8Full)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "GeneratorEndTime", property_value: GeneratorLimits)
---@overload fun(property_name: "GeneratorLooped", property_value: Yes|true)
---@overload fun(property_name: "TimeString", property_value: string)
---@overload fun(property_name: "GeneratorFrameUnit", property_value: FrameFormat)
---@overload fun(property_name: "GeneratorEndTime", property_value: GeneratorLimits)
---@overload fun(property_name: "SourceIP", property_value: Network.IP8Full)
---@overload fun(property_name: "TimeDisplayFormat", property_value: TimeDisplayFormatSelected)
---@overload fun(property_name: "PreRoll"|"AfterRoll"|"GeneratorStartTime", property_value: TimePropertyValue)
---@overload fun(property_name: "OffColor"|"AfterRollColor"|"ExternalSourceColor"|"GeneratorColor", property_value: UColor)
---@overload fun(property_name: "GeneratorLooped", property_value: Yes|true)
---@overload fun(property_name: "Time"|"UserBits", property_value: integer)
---@overload fun(property_name: "TimeString", property_value: string)
function TimecodeSlots:SetChildren(property_name, property_value) end