---@meta

---@class FTMacros: Object A super container for 2 type macro containers: DMX and visual for the fixture type.
local FTMacros = {}
---@return "FTMacros"
function FTMacros:GetClass() end
---@return "FTMacro"
function FTMacros:GetChildClass() end
---@generic T : FTMacros
---@param class `T`
---@return boolean
function FTMacros:IsClass(class) end
---@return DMXMode
function FTMacros:Parent() end
---@param index integer
---@return FTMacro
function FTMacros:Ptr(index) end
---@return FTMacro[]
function FTMacros:Children() end
---@return FTMacro?
function FTMacros:CurrentChild() end
---@overload fun(name: integer, role: nil): FTMacro
function FTMacros:Get(name, role) end
---@generic T : FTMacro
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): FTMacro
function FTMacros:Create(index, class, undo) end
---@generic T : FTMacro
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): FTMacro
function FTMacros:Append(class, undo, count) end
---@generic T : FTMacro
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTMacro
function FTMacros:Acquire(class, undo) end
---@generic T : FTMacro
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTMacro
---@deprecated use "Acquire" instead
function FTMacros:Aquire(class, undo) end
---@generic T : FTMacro
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): FTMacro
function FTMacros:Insert(index, class, undo, count) end
---@generic T : FTMacro
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): FTMacro
function FTMacros:Find(class, undo) end
---@overload fun(property_name: "ChannelFunction", property_value: ChannelFunction)
---@overload fun(property_name: "ChannelFunction", property_value: ChannelFunction)
function FTMacros:SetChildren(property_name, property_value) end