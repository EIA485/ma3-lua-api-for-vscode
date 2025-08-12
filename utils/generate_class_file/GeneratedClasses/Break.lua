---@meta

---@class Break: Object your description here
---@field Name string
---@field DMXBreak integer
---@field DMXOffset DMXPropertyAddressAbsolute
local Break = {
    DMXBreak="1",
    DMXOffset="1.001"
}
---@return "Break"
function Break:GetClass() end
---@return "Object"
function Break:GetChildClass() end
---@return GeometryReference
function Break:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Name", role: nil): string
---@overload fun(name: "DMXBreak", role: nil): integer
---@overload fun(name: "DMXOffset", role: nil): DMXPropertyAddressAbsolute
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Name"|"DMXBreak"|"DMXOffset", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Break:Get(name, role) end
