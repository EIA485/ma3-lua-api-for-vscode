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
---@overload fun(index: integer, class: "LayoutViewSettings", undo: Undo?): LayoutViewSettings
---@overload fun(index: integer, class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "LayoutViewSettings", undo: Undo?, count: integer?): LayoutViewSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): LayoutViewSettings
function LayoutViewSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "LayoutViewSettings", undo: Undo?): LayoutViewSettings
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
function LayoutViewSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "LayoutViewSettings", undo: Undo?): LayoutViewSettings
---@overload fun(class: nil, undo: Undo?): LayoutViewSettings
---@deprecated use "Acquire" instead
function LayoutViewSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "LayoutViewSettings", undo: Undo?, count: integer?): LayoutViewSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): LayoutViewSettings
function LayoutViewSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "LayoutViewSettings"): LayoutViewSettings
---@overload fun(name: string, class: nil): LayoutViewSettings
function LayoutViewSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "LayoutViewSettings"): LayoutViewSettings
---@overload fun(name: string, class: nil): Object
function LayoutViewSettingsCollect:FindRecursive(name, class) end
