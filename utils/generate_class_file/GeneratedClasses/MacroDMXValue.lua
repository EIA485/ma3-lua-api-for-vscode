---@meta

---@class MacroDMXValue: Object your description here
---@field Value DMXPropertyValue
---@field DMXChannel DMXChannel
local MacroDMXValue = {
    Value="0"
}
---@return "MacroDMXValue"
function MacroDMXValue:GetClass() end
---@return "Object"
function MacroDMXValue:GetChildClass() end
---@return MacroDMXStep
function MacroDMXValue:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Value", role: nil): DMXPropertyValue
---@overload fun(name: "DMXChannel", role: nil): DMXChannel
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Value"|"DMXChannel", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MacroDMXValue:Get(name, role) end
