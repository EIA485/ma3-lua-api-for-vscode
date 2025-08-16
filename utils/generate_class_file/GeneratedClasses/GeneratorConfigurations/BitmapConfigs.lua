---@meta

---@class BitmapConfigs: GeneratorConfigurations
local BitmapConfigs = {}
---@return "BitmapConfigs"
function BitmapConfigs:GetClass() end
---@return "BitmapConfig"
function BitmapConfigs:GetChildClass() end
---@generic T : BitmapConfigs
---@param class `T`
---@return boolean
function BitmapConfigs:IsClass(class) end
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
---@overload fun(property_name: "ContentMode", property_value: ClipMode)
---@overload fun(property_name: "Content", property_value: Image)
---@overload fun(property_name: "ContentMode", property_value: ClipMode)
---@overload fun(property_name: "Content", property_value: Image)
---@overload fun(property_name: "Interpolate"|"Alpha", property_value: YesNo|boolean)
---@overload fun(property_name: "ColorR"|"ColorG"|"ControlAspect"|"ColorB"|"Width"|"ControlX"|"ControlY"|"ControlZoom"|"Height"|"ControlRotate", property_value: integer)
function BitmapConfigs:SetChildren(property_name, property_value) end