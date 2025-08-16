---@meta

---@class MacroPoolSettingsCollect: Object
local MacroPoolSettingsCollect = {}
---@return "MacroPoolSettingsCollect"
function MacroPoolSettingsCollect:GetClass() end
---@return "MacroPoolSettings"
function MacroPoolSettingsCollect:GetChildClass() end
---@generic T : MacroPoolSettingsCollect
---@param class `T`
---@return boolean
function MacroPoolSettingsCollect:IsClass(class) end
---@param index integer
---@return MacroPoolSettings
function MacroPoolSettingsCollect:Ptr(index) end
---@return MacroPoolSettings[]
function MacroPoolSettingsCollect:Children() end
---@return MacroPoolSettings?
function MacroPoolSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): MacroPoolSettings
function MacroPoolSettingsCollect:Get(name, role) end
---@generic T : MacroPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): MacroPoolSettings
function MacroPoolSettingsCollect:Create(index, class, undo) end
---@generic T : MacroPoolSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): MacroPoolSettings
function MacroPoolSettingsCollect:Append(class, undo, count) end
---@generic T : MacroPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroPoolSettings
function MacroPoolSettingsCollect:Acquire(class, undo) end
---@generic T : MacroPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroPoolSettings
---@deprecated use "Acquire" instead
function MacroPoolSettingsCollect:Aquire(class, undo) end
---@generic T : MacroPoolSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MacroPoolSettings
function MacroPoolSettingsCollect:Insert(index, class, undo, count) end
---@generic T : MacroPoolSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): MacroPoolSettings
function MacroPoolSettingsCollect:Find(class, undo) end
---@overload fun(property_name: "Action", property_value: MacroPoolAction)
---@overload fun(property_name: "Action", property_value: MacroPoolAction)
function MacroPoolSettingsCollect:SetChildren(property_name, property_value) end