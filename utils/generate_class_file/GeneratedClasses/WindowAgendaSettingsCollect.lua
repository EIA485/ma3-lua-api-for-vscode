---@meta

---@class WindowAgendaSettingsCollect: Object
local WindowAgendaSettingsCollect = {}
---@return "WindowAgendaSettingsCollect"
function WindowAgendaSettingsCollect:GetClass() end
---@return "WindowAgendaSettings"
function WindowAgendaSettingsCollect:GetChildClass() end
---@param index integer
---@return WindowAgendaSettings
function WindowAgendaSettingsCollect:Ptr(index) end
---@return WindowAgendaSettings[]
function WindowAgendaSettingsCollect:Children() end
---@return WindowAgendaSettings?
function WindowAgendaSettingsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): WindowAgendaSettings
function WindowAgendaSettingsCollect:Get(name, role) end
---@generic T : WindowAgendaSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Create(index, class, undo) end
---@generic T : WindowAgendaSettings
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Append(class, undo, count) end
---@generic T : WindowAgendaSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Acquire(class, undo) end
---@generic T : WindowAgendaSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowAgendaSettings
---@deprecated use "Acquire" instead
function WindowAgendaSettingsCollect:Aquire(class, undo) end
---@generic T : WindowAgendaSettings
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Insert(index, class, undo, count) end
---@generic T : WindowAgendaSettings
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Find(class, undo) end