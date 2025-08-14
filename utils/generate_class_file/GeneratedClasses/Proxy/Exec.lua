---@meta

---@class Exec: Proxy An executor represents some assignable hardkeys. Beside from that, it will proxy through all functionality to an assigned object.
---@field Width integer
---@field Height integer
---@field IsXKey boolean
---@field Object Object
---@field ExecutorConfiguration Configuration
---@field TotalPrimaryAssignmentChanged integer
---@field TotalSecondaryAssignmentChanged integer
local Exec = {
    Width="1",
    Height="1",
    IsXKey="No"
}
---@return "Exec"
function Exec:GetClass() end
---@return "Object"
function Exec:GetChildClass() end
---@overload fun(name: "ExecutorConfiguration", role: nil): Configuration
---@overload fun(name: "Exec", role: nil): Exec
---@overload fun(name: "Object", role: nil): Object
---@overload fun(name: "IsXKey"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Width"|"Height"|"TotalPrimaryAssignmentChanged"|"TotalSecondaryAssignmentChanged"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "Width"|"Height"|"IsXKey"|"Object"|"ExecutorConfiguration"|"TotalPrimaryAssignmentChanged"|"TotalSecondaryAssignmentChanged"|"PrimaryAssignmentChanged"|"SecondaryAssignmentChanged"|"Exec"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Exec:Get(name, role) end