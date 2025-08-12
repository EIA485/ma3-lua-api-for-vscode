---@meta

---@class SelectionViewSettingsCollect: Object
local SelectionViewSettingsCollect = {}
---@return "SelectionViewSettingsCollect"
function SelectionViewSettingsCollect:GetClass() end
---@return "SelectionViewSettings"
function SelectionViewSettingsCollect:GetChildClass() end
---@param index integer
---@return SelectionViewSettings
function SelectionViewSettingsCollect:Ptr(index) end
---@return SelectionViewSettings[]
function SelectionViewSettingsCollect:Children() end
---@return SelectionViewSettings?
function SelectionViewSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): SelectionViewSettings
function SelectionViewSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "SelectionViewSettings", undo: Undo?): SelectionViewSettings
---@overload fun(index: integer, class: nil, undo: Undo?): SelectionViewSettings
function SelectionViewSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "SelectionViewSettings", undo: Undo?, count: integer?): SelectionViewSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): SelectionViewSettings
function SelectionViewSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "SelectionViewSettings", undo: Undo?): SelectionViewSettings
---@overload fun(class: nil, undo: Undo?): SelectionViewSettings
function SelectionViewSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "SelectionViewSettings", undo: Undo?): SelectionViewSettings
---@overload fun(class: nil, undo: Undo?): SelectionViewSettings
---@deprecated use "Acquire" instead
function SelectionViewSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "SelectionViewSettings", undo: Undo?, count: integer?): SelectionViewSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): SelectionViewSettings
function SelectionViewSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "SelectionViewSettings"): SelectionViewSettings
---@overload fun(name: string, class: nil): SelectionViewSettings
function SelectionViewSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "SelectionViewSettings"): SelectionViewSettings
---@overload fun(name: string, class: nil): Object
function SelectionViewSettingsCollect:FindRecursive(name, class) end
