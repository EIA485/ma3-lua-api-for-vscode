---@meta

---@class ViewButton: Object
---@field Object Object
local ViewButton = {}
---@return "ViewButton"
function ViewButton:GetClass() end
---@return "Object"
function ViewButton:GetChildClass() end
---@return ViewButtonScreen
function ViewButton:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Object", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Object", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function ViewButton:Get(name, role) end
