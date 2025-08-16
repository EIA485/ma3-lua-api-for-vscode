---@meta

---@class GelPoolSettingsCollect: Object
local GelPoolSettingsCollect = {}
---@return "GelPoolSettingsCollect"
function GelPoolSettingsCollect:GetClass() end
---@return "GelPoolSettings"
function GelPoolSettingsCollect:GetChildClass() end
---@generic T : GelPoolSettingsCollect
---@param class `T`
---@return boolean
function GelPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return GelPoolSettings
function GelPoolSettingsCollect:Ptr(index) end
---@return GelPoolSettings[]
function GelPoolSettingsCollect:Children() end
---@return GelPoolSettings?
function GelPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): GelPoolSettings
function GelPoolSettingsCollect:Get(name, role) end
---@generic T : GelPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): GelPoolSettings
function GelPoolSettingsCollect:Create(index, class, undo) end
---@generic T : GelPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): GelPoolSettings
function GelPoolSettingsCollect:Append(class, undo, count) end
---@generic T : GelPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GelPoolSettings
function GelPoolSettingsCollect:Acquire(class, undo) end
---@generic T : GelPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GelPoolSettings
---@deprecated use "Acquire" instead
function GelPoolSettingsCollect:Aquire(class, undo) end
---@generic T : GelPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): GelPoolSettings
function GelPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : GelPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): GelPoolSettings
function GelPoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "DisplayPool", property_value: string)
---@overload fun(property_name: "ShowName"|"ShowKey", property_value: YesNo|boolean)
---@overload fun(property_name: "DisplayPool", property_value: string)
function GelPoolSettingsCollect:SetChildren(property_name, property_value) end