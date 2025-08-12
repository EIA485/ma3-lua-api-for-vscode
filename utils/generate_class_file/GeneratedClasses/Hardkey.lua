---@meta

---@class Hardkey: Object
---@field Code VirtualKeyCode
---@field ExecutorIndex integer
---@field SpecialExecutor integer
---@field Disable boolean
local Hardkey = {
    Code="UNKNOWN",
    SpecialExecutor="None",
    Disable="0"
}
---@return "Hardkey"
function Hardkey:GetClass() end
---@return "Object"
function Hardkey:GetChildClass() end
---@return Hardkeys
function Hardkey:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Code", role: nil): VirtualKeyCode
---@overload fun(name: "ExecutorIndex"|"SpecialExecutor", role: nil): integer
---@overload fun(name: "Disable", role: nil): boolean
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Code"|"ExecutorIndex"|"SpecialExecutor"|"Disable", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Hardkey:Get(name, role) end
