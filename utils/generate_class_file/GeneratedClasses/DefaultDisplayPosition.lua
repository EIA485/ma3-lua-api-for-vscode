---@meta

---@class DefaultDisplayPosition: Object
---@field Open integer
---@field ShowCmdline integer
---@field ShowMainMenu integer
---@field ShowEncoderBar integer
---@field ShowViewBar integer
---@field ShowScrollButton integer
---@field ShowHeadline integer
---@field IsMaximized integer
---@field ShowFeedback integer
---@field ShowCommandWingBar integer
---@field TurnViewBar integer
---@field Dimension integer
---@field ViewBarSubtraction integer
---@field ViewBarAddition integer
---@field X integer
---@field Y integer
---@field W integer
---@field H integer
---@field Monitor integer
---@field ScaleRatio integer
local DefaultDisplayPosition = {
    Open="0",
    ShowCmdline="1",
    ShowMainMenu="1",
    ShowEncoderBar="0",
    ShowViewBar="1",
    ShowScrollButton="0",
    ShowHeadline="1",
    IsMaximized="1",
    ShowFeedback="1",
    ShowCommandWingBar="0",
    TurnViewBar="0",
    Dimension="1",
    ViewBarSubtraction="0",
    ViewBarAddition="1",
    X="100",
    Y="100",
    W="0",
    H="0",
    Monitor="0",
    ScaleRatio="1"
}
---@return "DefaultDisplayPosition"
function DefaultDisplayPosition:GetClass() end
---@return "Object"
function DefaultDisplayPosition:GetChildClass() end
---@return DefaultDisplayPositions
function DefaultDisplayPosition:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"Open"|"ShowCmdline"|"ShowMainMenu"|"ShowEncoderBar"|"ShowViewBar"|"ShowScrollButton"|"ShowHeadline"|"IsMaximized"|"ShowFeedback"|"ShowCommandWingBar"|"TurnViewBar"|"Dimension"|"ViewBarSubtraction"|"ViewBarAddition"|"X"|"Y"|"W"|"H"|"Monitor"|"ScaleRatio", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Open"|"ShowCmdline"|"ShowMainMenu"|"ShowEncoderBar"|"ShowViewBar"|"ShowScrollButton"|"ShowHeadline"|"IsMaximized"|"ShowFeedback"|"ShowCommandWingBar"|"TurnViewBar"|"Dimension"|"ViewBarSubtraction"|"ViewBarAddition"|"X"|"Y"|"W"|"H"|"Monitor"|"ScaleRatio", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DefaultDisplayPosition:Get(name, role) end
