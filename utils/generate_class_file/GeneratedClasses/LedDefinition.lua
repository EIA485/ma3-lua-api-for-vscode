---@meta

---@class LedDefinition: Object
---@field Code VirtualKeyCode
---@field R integer
---@field G integer
---@field B integer
---@field ExecutorIndex integer
---@field SpecialExecutor integer
---@field DefaultExecutor integer
---@field IsButton integer
---@field DeskLights integer
---@field AnimationPos integer
---@field Disable integer
local LedDefinition = {
    Code="UNKNOWN",
    SpecialExecutor="None",
    DefaultExecutor="No",
    IsButton="1",
    DeskLights="LedOther",
    AnimationPos="0",
    Disable="No"
}
---@return "LedDefinition"
function LedDefinition:GetClass() end
---@return "Object"
function LedDefinition:GetChildClass() end
---@return LedDefinitions
function LedDefinition:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Code", role: nil): VirtualKeyCode
---@overload fun(name: "R"|"G"|"B"|"ExecutorIndex"|"SpecialExecutor"|"DefaultExecutor"|"IsButton"|"DeskLights"|"AnimationPos"|"Disable", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Code"|"R"|"G"|"B"|"ExecutorIndex"|"SpecialExecutor"|"DefaultExecutor"|"IsButton"|"DeskLights"|"AnimationPos"|"Disable", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function LedDefinition:Get(name, role) end
