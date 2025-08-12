---@meta

---@class MacroPoolSettingsCollect: Object
local MacroPoolSettingsCollect = {}
---@return "MacroPoolSettingsCollect"
function MacroPoolSettingsCollect:GetClass() end
---@return "MacroPoolSettings"
function MacroPoolSettingsCollect:GetChildClass() end
---@param index integer
---@return MacroPoolSettings
function MacroPoolSettingsCollect:Ptr(index) end
---@return MacroPoolSettings[]
function MacroPoolSettingsCollect:Children() end
---@return MacroPoolSettings?
function MacroPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MacroPoolSettings
function MacroPoolSettingsCollect:Get(name, role) end
---@overload fun(index: integer, class: "MacroPoolSettings", undo: Undo?): MacroPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?): MacroPoolSettings
function MacroPoolSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "MacroPoolSettings", undo: Undo?, count: integer?): MacroPoolSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroPoolSettings
function MacroPoolSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "MacroPoolSettings", undo: Undo?): MacroPoolSettings
---@overload fun(class: nil, undo: Undo?): MacroPoolSettings
function MacroPoolSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "MacroPoolSettings", undo: Undo?): MacroPoolSettings
---@overload fun(class: nil, undo: Undo?): MacroPoolSettings
---@deprecated use "Acquire" instead
function MacroPoolSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "MacroPoolSettings", undo: Undo?, count: integer?): MacroPoolSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroPoolSettings
function MacroPoolSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MacroPoolSettings"): MacroPoolSettings
---@overload fun(name: string, class: nil): MacroPoolSettings
function MacroPoolSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "MacroPoolSettings"): MacroPoolSettings
---@overload fun(name: string, class: nil): Object
function MacroPoolSettingsCollect:FindRecursive(name, class) end
