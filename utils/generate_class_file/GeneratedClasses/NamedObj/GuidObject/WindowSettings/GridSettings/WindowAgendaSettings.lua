---@meta

---@class WindowAgendaSettings: GridSettings
---@field ViewMode AgendaViewMode
---@field StartOfWeek WeekDay
---@field Setup boolean
---@field Tool AgendaTool
---@field VisibleDate Datum
---@field ToolAction string
---@field SelectedAgenda Object
---@field SelectedDay Datum
---@field AgendaSelected boolean
---@field DaySelected boolean
---@field JumpToToday fun(text: string) : boolean 0:text
---@field JumpToPrevious fun(text: string) : boolean 0:text
---@field JumpToNext fun(text: string) : boolean 0:text
---@field ResetSelectedAgenda fun(text: string) : boolean 0:text
---@field ResetSelectedDay fun(text: string) : boolean 0:text
local WindowAgendaSettings = {
    StartOfWeek="Monday",
    JumpToToday="in:(s;)",
    JumpToPrevious="in:(s;)",
    JumpToNext="in:(s;)",
    ResetSelectedAgenda="in:(s;)",
    ResetSelectedDay="in:(s;)"
}
---@return "WindowAgendaSettings"
function WindowAgendaSettings:GetClass() end
---@return "Object"
function WindowAgendaSettings:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "PreferenceHandle", role: nil): Object
---@overload fun(name: "FontSize", role: nil): FontSizes
---@overload fun(name: "ShowTitleBar", role: nil): integer
---@overload fun(name: "VisibleTitlebuttons", role: nil): string[]
---@overload fun(name: "RequestDefaultTitlebuttons", role: nil): integer
---@overload fun(name: "TitleButtonMask", role: nil): string
---@overload fun(name: "Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting", role: nil): integer
---@overload fun(name: "RowHeightFactor", role: nil): number
---@overload fun(name: "ColumnsCount", role: nil): integer
---@overload fun(name: "ContentFilterType"|"GridColumnConfigurationType", role: nil): string
---@overload fun(name: "SelectedColumnConfiguration", role: nil): GridColumnConfiguration
---@overload fun(name: "SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder", role: nil): fun()
---@overload fun(name: "ViewMode", role: nil): AgendaViewMode
---@overload fun(name: "StartOfWeek", role: nil): WeekDay
---@overload fun(name: "Setup", role: nil): boolean
---@overload fun(name: "Tool", role: nil): AgendaTool
---@overload fun(name: "VisibleDate", role: nil): Datum
---@overload fun(name: "ToolAction", role: nil): string
---@overload fun(name: "SelectedAgenda", role: nil): Object
---@overload fun(name: "SelectedDay", role: nil): Datum
---@overload fun(name: "AgendaSelected"|"DaySelected", role: nil): boolean
---@overload fun(name: "JumpToToday"|"JumpToPrevious"|"JumpToNext"|"ResetSelectedAgenda"|"ResetSelectedDay", role: nil): fun(text: string) : boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PreferenceHandle"|"FontSize"|"ShowTitleBar"|"VisibleTitlebuttons"|"RequestDefaultTitlebuttons"|"TitleButtonMask"|"Transposed"|"AdjustColumns"|"NoFixedColumns"|"MergeCells"|"ForceExpanded"|"RememberSorting"|"RowHeightFactor"|"ColumnsCount"|"ContentFilterType"|"GridColumnConfigurationType"|"SelectedColumnConfiguration"|"SetAllVisible"|"SetAllInvisible"|"ResetColumnOrder"|"ViewMode"|"StartOfWeek"|"Setup"|"Tool"|"VisibleDate"|"ToolAction"|"SelectedAgenda"|"SelectedDay"|"AgendaSelected"|"DaySelected"|"JumpToToday"|"JumpToPrevious"|"JumpToNext"|"ResetSelectedAgenda"|"ResetSelectedDay", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowAgendaSettings:Get(name, role) end
