---@meta

---@class WindowAppearance: Object
---@field WindowColor UColor Defines the color for a window.
local WindowAppearance = {
    WindowColor="ffffffff"
}
---@return "WindowAppearance"
function WindowAppearance:GetClass() end
---@return "Object"
function WindowAppearance:GetChildClass() end
---@return ViewWidget
function WindowAppearance:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "WindowColor", role: nil): UColor
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"WindowColor", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowAppearance:Get(name, role) end
