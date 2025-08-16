---@meta

---@class PagePoolSettingsCollect: Object
local PagePoolSettingsCollect = {}
---@return "PagePoolSettingsCollect"
function PagePoolSettingsCollect:GetClass() end
---@return "PagePoolSettings"
function PagePoolSettingsCollect:GetChildClass() end
---@generic T : PagePoolSettingsCollect
---@param class `T`
---@return boolean
function PagePoolSettingsCollect:IsClass(class) end
---@param index integer
---@return PagePoolSettings
function PagePoolSettingsCollect:Ptr(index) end
---@return PagePoolSettings[]
function PagePoolSettingsCollect:Children() end
---@return PagePoolSettings?
function PagePoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): PagePoolSettings
function PagePoolSettingsCollect:Get(name, role) end
---@generic T : PagePoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): PagePoolSettings
function PagePoolSettingsCollect:Create(index, class, undo) end
---@generic T : PagePoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): PagePoolSettings
function PagePoolSettingsCollect:Append(class, undo, count) end
---@generic T : PagePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PagePoolSettings
function PagePoolSettingsCollect:Acquire(class, undo) end
---@generic T : PagePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PagePoolSettings
---@deprecated use "Acquire" instead
function PagePoolSettingsCollect:Aquire(class, undo) end
---@generic T : PagePoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PagePoolSettings
function PagePoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : PagePoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): PagePoolSettings
function PagePoolSettingsCollect:Find(class, undo) end
function PagePoolSettingsCollect:SetChildren(property_name, property_value) end