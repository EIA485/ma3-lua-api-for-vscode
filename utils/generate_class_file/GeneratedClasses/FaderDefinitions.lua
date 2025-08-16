---@meta

---@class FaderDefinitions: Object
local FaderDefinitions = {}
---@return "FaderDefinitions"
function FaderDefinitions:GetClass() end
---@return "FaderDefinition"
function FaderDefinitions:GetChildClass() end
---@generic T : FaderDefinitions
---@param class `T`
---@return boolean
function FaderDefinitions:IsClass(class) end
---@return HardwareConfiguration
function FaderDefinitions:Parent() end
---@param index integer
---@return FaderDefinition
function FaderDefinitions:Ptr(index) end
---@return FaderDefinition[]
function FaderDefinitions:Children() end
---@return FaderDefinition?
function FaderDefinitions:CurrentChild() end
---@overload fun(name: integer, role: nil): FaderDefinition
function FaderDefinitions:Get(name, role) end
---@generic T : FaderDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FaderDefinition
function FaderDefinitions:Create(index, class, undo) end
---@generic T : FaderDefinition
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FaderDefinition
function FaderDefinitions:Append(class, undo, count) end
---@generic T : FaderDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderDefinition
function FaderDefinitions:Acquire(class, undo) end
---@generic T : FaderDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderDefinition
---@deprecated use "Acquire" instead
function FaderDefinitions:Aquire(class, undo) end
---@generic T : FaderDefinition
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FaderDefinition
function FaderDefinitions:Insert(index, class, undo, count) end
---@generic T : FaderDefinition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FaderDefinition
function FaderDefinitions:Find(class, undo) end
---@overload fun(property_name: "SpecialExecutor", property_value: SpecialExecutor)
---@overload fun(property_name: "ExecutorIndex", property_value: integer)
---@overload fun(property_name: "SpecialExecutor", property_value: SpecialExecutor)
---@overload fun(property_name: "ExecutorIndex", property_value: integer)
function FaderDefinitions:SetChildren(property_name, property_value) end