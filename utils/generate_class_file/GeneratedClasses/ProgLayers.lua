---@meta

---@class ProgLayers: Object
local ProgLayers = {}
---@return "ProgLayers"
function ProgLayers:GetClass() end
---@return "ProgLayer"
function ProgLayers:GetChildClass() end
---@generic T : ProgLayers
---@param class `T`
---@return boolean
function ProgLayers:IsClass(class) end
---@param index integer
---@return ProgLayer
function ProgLayers:Ptr(index) end
---@return ProgLayer[]
function ProgLayers:Children() end
---@return ProgLayer?
function ProgLayers:CurrentChild() end
---@overload fun(name: integer, role: nil): ProgLayer
function ProgLayers:Get(name, role) end
---@generic T : ProgLayer
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ProgLayer
function ProgLayers:Create(index, class, undo) end
---@generic T : ProgLayer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ProgLayer
function ProgLayers:Append(class, undo, count) end
---@generic T : ProgLayer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgLayer
function ProgLayers:Acquire(class, undo) end
---@generic T : ProgLayer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgLayer
---@deprecated use "Acquire" instead
function ProgLayers:Aquire(class, undo) end
---@generic T : ProgLayer
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ProgLayer
function ProgLayers:Insert(index, class, undo, count) end
---@generic T : ProgLayer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ProgLayer
function ProgLayers:Find(class, undo) end
function ProgLayers:ActiveDisplay(property_name, property_value) end