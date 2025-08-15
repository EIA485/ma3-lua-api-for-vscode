---@meta

---@class ScreenConfigurations: Object
local ScreenConfigurations = {}
---@return "ScreenConfigurations"
function ScreenConfigurations:GetClass() end
---@return "ScreenConfig"
function ScreenConfigurations:GetChildClass() end
---@generic T : ScreenConfigurations
---@param class `T`
---@return boolean
function ScreenConfigurations:IsClass(class) end
---@return UserProfile
function ScreenConfigurations:Parent() end
---@param index integer
---@return ScreenConfig
function ScreenConfigurations:Ptr(index) end
---@return ScreenConfig[]
function ScreenConfigurations:Children() end
---@return ScreenConfig?
function ScreenConfigurations:CurrentChild() end
---@overload fun(name: integer, role: nil): ScreenConfig
function ScreenConfigurations:Get(name, role) end
---@generic T : ScreenConfig
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): ScreenConfig
function ScreenConfigurations:Create(index, class, undo) end
---@generic T : ScreenConfig
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): ScreenConfig
function ScreenConfigurations:Append(class, undo, count) end
---@generic T : ScreenConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenConfig
function ScreenConfigurations:Acquire(class, undo) end
---@generic T : ScreenConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenConfig
---@deprecated use "Acquire" instead
function ScreenConfigurations:Aquire(class, undo) end
---@generic T : ScreenConfig
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): ScreenConfig
function ScreenConfigurations:Insert(index, class, undo, count) end
---@generic T : ScreenConfig
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): ScreenConfig
function ScreenConfigurations:Find(class, undo) end
function ScreenConfigurations:Active(property_name, property_value) end