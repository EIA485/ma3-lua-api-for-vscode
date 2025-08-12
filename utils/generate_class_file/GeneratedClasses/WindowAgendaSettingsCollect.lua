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
---@overload fun(index: integer, class: "WindowAgendaSettings", undo: Undo?): WindowAgendaSettings
---@overload fun(index: integer, class: nil, undo: Undo?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Create(index, class, undo) end
---@overload fun(class: "WindowAgendaSettings", undo: Undo?, count: integer?): WindowAgendaSettings
---@overload fun(class: nil, undo: Undo?, count: integer?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Append(class, undo, count) end
---@overload fun(class: "WindowAgendaSettings", undo: Undo?): WindowAgendaSettings
---@overload fun(class: nil, undo: Undo?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Acquire(class, undo) end
---@overload fun(class: "WindowAgendaSettings", undo: Undo?): WindowAgendaSettings
---@overload fun(class: nil, undo: Undo?): WindowAgendaSettings
---@deprecated use "Acquire" instead
function WindowAgendaSettingsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "WindowAgendaSettings", undo: Undo?, count: integer?): WindowAgendaSettings
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): WindowAgendaSettings
function WindowAgendaSettingsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "WindowAgendaSettings"): WindowAgendaSettings
---@overload fun(name: string, class: nil): WindowAgendaSettings
function WindowAgendaSettingsCollect:Find(name, class) end
---@overload fun(name: string, class: "WindowAgendaSettings"): WindowAgendaSettings
---@overload fun(name: string, class: nil): Object
function WindowAgendaSettingsCollect:FindRecursive(name, class) end
