---@meta

---@class WindowScrollPositions: Object
---@field ScrollH ScrollType
---@field ScrollV ScrollType
local WindowScrollPositions = {
    ScrollH="0;0",
    ScrollV="0;0"
}
---@return "WindowScrollPositions"
function WindowScrollPositions:GetClass() end
---@return "Object"
function WindowScrollPositions:GetChildClass() end
---@return ViewWidget
function WindowScrollPositions:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "ScrollH"|"ScrollV", role: nil): ScrollType
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"ScrollH"|"ScrollV", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function WindowScrollPositions:Get(name, role) end
