---@meta

---@class BitmapConfigs: GeneratorConfigurations
local BitmapConfigs = {}
---@return "BitmapConfigs"
function BitmapConfigs:GetClass() end
---@return "BitmapConfig"
function BitmapConfigs:GetChildClass() end
---@return Bitmap
function BitmapConfigs:Parent() end
---@param index integer
---@return BitmapConfig
function BitmapConfigs:Ptr(index) end
---@return BitmapConfig[]
function BitmapConfigs:Children() end
---@return BitmapConfig?
function BitmapConfigs:CurrentChild() end
---@overload fun(name: integer, role: nil): BitmapConfig
function BitmapConfigs:Get(name, role) end
---@generic T : BitmapConfig
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): BitmapConfig
function BitmapConfigs:Create(index, class, undo) end
---@generic T : BitmapConfig
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): BitmapConfig
function BitmapConfigs:Append(class, undo, count) end
---@generic T : BitmapConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapConfig
function BitmapConfigs:Acquire(class, undo) end
---@generic T : BitmapConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapConfig
---@deprecated use "Acquire" instead
function BitmapConfigs:Aquire(class, undo) end
---@generic T : BitmapConfig
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BitmapConfig
function BitmapConfigs:Insert(index, class, undo, count) end
---@generic T : BitmapConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): BitmapConfig
function BitmapConfigs:Find(class, undo) end