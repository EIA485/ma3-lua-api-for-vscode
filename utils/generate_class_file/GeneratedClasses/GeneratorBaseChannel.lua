---@meta

---@class GeneratorBaseChannel: Object
---@field Attribute AttributeIndexPropertyValue
---@field Virtual
Dimmer integer
local GeneratorBaseChannel = {
    Attribute="Dimmer",
    ["Virtual
Dimmer"]="No"
}
---@return "GeneratorBaseChannel"
function GeneratorBaseChannel:GetClass() end
---@return "Object"
function GeneratorBaseChannel:GetChildClass() end
---@return GeneratorChannels
function GeneratorBaseChannel:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "Virtual
Dimmer", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"Virtual
Dimmer", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GeneratorBaseChannel:Get(name, role) end
