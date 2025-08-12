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
---@overload fun(index: integer, class: "BitmapConfig", undo: Undo?): BitmapConfig
---@overload fun(index: integer, class: nil, undo: Undo?): BitmapConfig
function BitmapConfigs:Create(index, class, undo) end
---@overload fun(class: "BitmapConfig", undo: Undo?, count: integer?): BitmapConfig
---@overload fun(class: nil, undo: Undo?, count: integer?): BitmapConfig
function BitmapConfigs:Append(class, undo, count) end
---@overload fun(class: "BitmapConfig", undo: Undo?): BitmapConfig
---@overload fun(class: nil, undo: Undo?): BitmapConfig
function BitmapConfigs:Acquire(class, undo) end
---@overload fun(class: "BitmapConfig", undo: Undo?): BitmapConfig
---@overload fun(class: nil, undo: Undo?): BitmapConfig
---@deprecated use "Acquire" instead
function BitmapConfigs:Aquire(class, undo) end
---@overload fun(index: integer, class: "BitmapConfig", undo: Undo?, count: integer?): BitmapConfig
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): BitmapConfig
function BitmapConfigs:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "BitmapConfig"): BitmapConfig
---@overload fun(name: string, class: nil): BitmapConfig
function BitmapConfigs:Find(name, class) end
---@overload fun(name: string, class: "BitmapConfig"): BitmapConfig
---@overload fun(name: string, class: nil): Object
function BitmapConfigs:FindRecursive(name, class) end
