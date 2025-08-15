---@meta

---@class Symbols: ImagePool
local Symbols = {}
---@return "Symbols"
function Symbols:GetClass() end
---@return "SymbolImage"
function Symbols:GetChildClass() end
---@generic T : Symbols
---@param class `T`
---@return boolean
function Symbols:IsClass(class) end
---@param index integer
---@return SymbolImage
function Symbols:Ptr(index) end
---@return SymbolImage[]
function Symbols:Children() end
---@return SymbolImage?
function Symbols:CurrentChild() end
---@overload fun(name: integer, role: nil): SymbolImage
function Symbols:Get(name, role) end
---@generic T : SymbolImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): SymbolImage
function Symbols:Create(index, class, undo) end
---@generic T : SymbolImage
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): SymbolImage
function Symbols:Append(class, undo, count) end
---@generic T : SymbolImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SymbolImage
function Symbols:Acquire(class, undo) end
---@generic T : SymbolImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SymbolImage
---@deprecated use "Acquire" instead
function Symbols:Aquire(class, undo) end
---@generic T : SymbolImage
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SymbolImage
function Symbols:Insert(index, class, undo, count) end
---@generic T : SymbolImage
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): SymbolImage
function Symbols:Find(class, undo) end
---@overload fun(property_name: "ColorKeyLightFrom"|"ColorKeyLightTo"|"ColorKeySelectionFrom"|"ColorKeySelectionTo", property_value: UiColor)
function Symbols:NDISource(property_name, property_value) end