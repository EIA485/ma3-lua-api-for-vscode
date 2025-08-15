---@meta

---@class ScreenEncoder: Object
local ScreenEncoder = {}
---@return "ScreenEncoder"
function ScreenEncoder:GetClass() end
---@return "ScreenEncoderDirection"
function ScreenEncoder:GetChildClass() end
---@generic T : ScreenEncoder
---@param class `T`
---@return boolean
function ScreenEncoder:IsClass(class) end
---@return ShowSettings
function ScreenEncoder:Parent() end
---@param index integer
---@return ScreenEncoderDirection
function ScreenEncoder:Ptr(index) end
---@return ScreenEncoderDirection[]
function ScreenEncoder:Children() end
---@return ScreenEncoderDirection?
function ScreenEncoder:CurrentChild() end
---@overload fun(name: integer, role: nil): ScreenEncoderDirection
function ScreenEncoder:Get(name, role) end
---@generic T : ScreenEncoderDirection
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ScreenEncoderDirection
function ScreenEncoder:Create(index, class, undo) end
---@generic T : ScreenEncoderDirection
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ScreenEncoderDirection
function ScreenEncoder:Append(class, undo, count) end
---@generic T : ScreenEncoderDirection
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenEncoderDirection
function ScreenEncoder:Acquire(class, undo) end
---@generic T : ScreenEncoderDirection
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenEncoderDirection
---@deprecated use "Acquire" instead
function ScreenEncoder:Aquire(class, undo) end
---@generic T : ScreenEncoderDirection
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ScreenEncoderDirection
function ScreenEncoder:Insert(index, class, undo, count) end
---@generic T : ScreenEncoderDirection
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenEncoderDirection
function ScreenEncoder:Find(class, undo) end
function ScreenEncoder:*(property_name, property_value) end