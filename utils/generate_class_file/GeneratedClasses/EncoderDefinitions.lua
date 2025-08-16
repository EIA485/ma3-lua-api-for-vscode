---@meta

---@class EncoderDefinitions: Object
local EncoderDefinitions = {}
---@return "EncoderDefinitions"
function EncoderDefinitions:GetClass() end
---@return "EncoderDefinition"
function EncoderDefinitions:GetChildClass() end
---@generic T : EncoderDefinitions
---@param class `T`
---@return boolean
function EncoderDefinitions:IsClass(class) end
---@return HardwareConfiguration
function EncoderDefinitions:Parent() end
---@param index integer
---@return EncoderDefinition
function EncoderDefinitions:Ptr(index) end
---@return EncoderDefinition[]
function EncoderDefinitions:Children() end
---@return EncoderDefinition?
function EncoderDefinitions:CurrentChild() end
---@overload fun(name: integer, role: nil): EncoderDefinition
function EncoderDefinitions:Get(name, role) end
---@generic T : EncoderDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): EncoderDefinition
function EncoderDefinitions:Create(index, class, undo) end
---@generic T : EncoderDefinition
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): EncoderDefinition
function EncoderDefinitions:Append(class, undo, count) end
---@generic T : EncoderDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderDefinition
function EncoderDefinitions:Acquire(class, undo) end
---@generic T : EncoderDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderDefinition
---@deprecated use "Acquire" instead
function EncoderDefinitions:Aquire(class, undo) end
---@generic T : EncoderDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): EncoderDefinition
function EncoderDefinitions:Insert(index, class, undo, count) end
---@generic T : EncoderDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): EncoderDefinition
function EncoderDefinitions:Find(class, undo) end
---@overload fun(property_name: "Key", property_value: VirtualKeyCode)
---@overload fun(property_name: "SpecialExecutor", property_value: SpecialExecutor)
---@overload fun(property_name: "Type", property_value: EncoderType)
---@overload fun(property_name: "Type", property_value: EncoderType)
---@overload fun(property_name: "SpecialExecutor", property_value: SpecialExecutor)
---@overload fun(property_name: "Key", property_value: VirtualKeyCode)
---@overload fun(property_name: "ExecutorIndex"|"Linked"|"Resolution", property_value: integer)
function EncoderDefinitions:SetChildren(property_name, property_value) end