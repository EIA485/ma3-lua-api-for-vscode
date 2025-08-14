---@meta

---@class LayoutViewSettingsCollect: Object
local LayoutViewSettingsCollect = {}
---@return "LayoutViewSettingsCollect"
function LayoutViewSettingsCollect:GetClass() end
---@return "LayoutViewSettings"
function LayoutViewSettingsCollect:GetChildClass() end
---@param index integer
---@return LayoutViewSettings
function LayoutViewSettingsCollect:Ptr(index) end
---@return LayoutViewSettings[]
function LayoutViewSettingsCollect:Children() end
---@return LayoutViewSettings?
function LayoutViewSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): LayoutViewSettings
function LayoutViewSettingsCollect:Get(name, role) end
---@generic T : LayoutViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Create(index, class, undo) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutViewSettings
function LayoutViewSettingsCollect:Append(class, undo, count) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Acquire(class, undo) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
---@deprecated use "Acquire" instead
function LayoutViewSettingsCollect:Aquire(class, undo) end
---@generic T : LayoutViewSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutViewSettings
function LayoutViewSettingsCollect:Insert(index, class, undo, count) end
---@generic T : LayoutViewSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Find(class, undo) end