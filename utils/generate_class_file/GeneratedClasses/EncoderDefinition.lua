---@meta

---@class EncoderDefinition: Object
---@field Type EncoderType
---@field ExecutorIndex integer
---@field Key VirtualKeyCode
---@field Resolution integer
---@field Linked integer
---@field SpecialExecutor integer
local EncoderDefinition = {
    Type="Executor",
    Key="UNKNOWN",
    Resolution="24",
    Linked="-1",
    SpecialExecutor="None"
}
---@return "EncoderDefinition"
function EncoderDefinition:GetClass() end
---@return "Object"
function EncoderDefinition:GetChildClass() end
---@return EncoderDefinitions
function EncoderDefinition:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Type", role: nil): EncoderType
---@overload fun(name: "ExecutorIndex", role: nil): integer
---@overload fun(name: "Key", role: nil): VirtualKeyCode
---@overload fun(name: "Resolution"|"Linked"|"SpecialExecutor", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Type"|"ExecutorIndex"|"Key"|"Resolution"|"Linked"|"SpecialExecutor", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function EncoderDefinition:Get(name, role) end
