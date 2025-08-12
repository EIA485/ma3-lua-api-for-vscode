---@meta

---@class TimecodeWindowSharedData: Object
---@field SelectionTargetType TimecodeSelectionTarget
---@field Setup integer
---@field LastEvent integer
---@field GetSelection fun() : Object[] Gets a collect of currently selected items
local TimecodeWindowSharedData = {
    SelectionTargetType="Events",
    Setup="No",
    LastEvent="Off"
}
---@return "TimecodeWindowSharedData"
function TimecodeWindowSharedData:GetClass() end
---@return "Object"
function TimecodeWindowSharedData:GetChildClass() end
---@return TimecodeWindowSharedContainer
function TimecodeWindowSharedData:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SelectionTargetType", role: nil): TimecodeSelectionTarget
---@overload fun(name: "Setup"|"LastEvent", role: nil): integer
---@overload fun(name: "GetSelection", role: nil): fun() : Object[]
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SelectionTargetType"|"Setup"|"LastEvent"|"GetSelection", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function TimecodeWindowSharedData:Get(name, role) end
