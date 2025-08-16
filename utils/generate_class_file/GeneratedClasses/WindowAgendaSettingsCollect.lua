---@meta

---@class WindowAgendaSettingsCollect: Object
local WindowAgendaSettingsCollect = {}
---@return "WindowAgendaSettingsCollect"
function WindowAgendaSettingsCollect:GetClass() end
---@return "WindowAgendaSettings"
function WindowAgendaSettingsCollect:GetChildClass() end
---@generic T : WindowAgendaSettingsCollect
---@param class `T`
---@return boolean
function WindowAgendaSettingsCollect:IsClass(class) end
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
---@overload fun(property_name: "ToolAction", property_value: string)
---@overload fun(property_name: "SelectedAgenda", property_value: Object)
---@overload fun(property_name: "ViewMode", property_value: AgendaViewMode)
---@overload fun(property_name: "StartOfWeek", property_value: WeekDay)
---@overload fun(property_name: "Setup", property_value: YesNo|boolean)
---@overload fun(property_name: "Tool", property_value: AgendaTool)
---@overload fun(property_name: "Tool", property_value: AgendaTool)
---@overload fun(property_name: "ViewMode", property_value: AgendaViewMode)
---@overload fun(property_name: "VisibleDate"|"SelectedDay", property_value: DatumMode)
---@overload fun(property_name: "SelectedAgenda", property_value: Object)
---@overload fun(property_name: "StartOfWeek", property_value: WeekDay)
---@overload fun(property_name: "Setup", property_value: YesNo|boolean)
---@overload fun(property_name: "AgendaSelected"|"DaySelected", property_value: boolean)
---@overload fun(property_name: "ResetSelectedDay"|"JumpToToday"|"JumpToPrevious"|"JumpToNext"|"ResetSelectedAgenda", property_value: fun(text: string) : boolean)
---@overload fun(property_name: "ToolAction", property_value: string)
function WindowAgendaSettingsCollect:SetChildren(property_name, property_value) end