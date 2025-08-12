---@meta

---@class GridContentFilterSettings: Object
---@field FilterDialogPosition ItemGroupPosition
---@field FilterDialogSize TimeNone
local GridContentFilterSettings = {}
---@return "GridContentFilterSettings"
function GridContentFilterSettings:GetClass() end
---@return "Object"
function GridContentFilterSettings:GetChildClass() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "FilterDialogPosition", role: nil): ItemGroupPosition
---@overload fun(name: "FilterDialogSize", role: nil): TimeNone
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"FilterDialogPosition"|"FilterDialogSize", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function GridContentFilterSettings:Get(name, role) end
