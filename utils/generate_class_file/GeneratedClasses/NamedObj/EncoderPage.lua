---@meta

---@class EncoderPage: NamedObj
local EncoderPage = {}
---@return "EncoderPage"
function EncoderPage:GetClass() end
---@return "Encoder"
function EncoderPage:GetChildClass() end
---@generic T : EncoderPage
---@param class `T`
---@return boolean
function EncoderPage:IsClass(class) end
---@return EncoderBank
function EncoderPage:Parent() end
---@param index integer
---@return Encoder
function EncoderPage:Ptr(index) end
---@return Encoder[]
function EncoderPage:Children() end
---@return Encoder?
function EncoderPage:CurrentChild() end
---@overload fun(name: integer, role: nil): Encoder
function EncoderPage:Get(name, role) end
---@generic T : Encoder
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Encoder
function EncoderPage:Create(index, class, undo) end
---@generic T : Encoder
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Encoder
function EncoderPage:Append(class, undo, count) end
---@generic T : Encoder
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Encoder
function EncoderPage:Acquire(class, undo) end
---@generic T : Encoder
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Encoder
---@deprecated use "Acquire" instead
function EncoderPage:Aquire(class, undo) end
---@generic T : Encoder
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Encoder
function EncoderPage:Insert(index, class, undo, count) end
---@generic T : Encoder
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Encoder
function EncoderPage:Find(class, undo) end
---@overload fun(property_name: "InnerObject"|"OuterObject", property_value: Object)
---@overload fun(property_name: "InnerObjectType"|"OuterObjectType", property_value: integer)
function EncoderPage:SetChildren(property_name, property_value) end