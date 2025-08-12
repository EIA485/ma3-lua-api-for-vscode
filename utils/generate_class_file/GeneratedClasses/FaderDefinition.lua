---@meta

---@class FaderDefinition: Object
---@field ExecutorIndex integer
---@field SpecialExecutor integer
local FaderDefinition = {
    SpecialExecutor="None"
}
---@return "FaderDefinition"
function FaderDefinition:GetClass() end
---@return "Object"
function FaderDefinition:GetChildClass() end
---@return FaderDefinitions
function FaderDefinition:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"ExecutorIndex"|"SpecialExecutor", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ExecutorIndex"|"SpecialExecutor", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function FaderDefinition:Get(name, role) end
