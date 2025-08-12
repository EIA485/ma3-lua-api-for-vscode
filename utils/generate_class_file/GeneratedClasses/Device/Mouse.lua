---@meta

---@class Mouse: Device
---@field AbsPos ItemGroupPosition
---@field DisplayIndex integer
---@field Cursor string
---@field Visible boolean
---@field AutoHideInterval integer
local Mouse = {
    Visible="No",
    AutoHideInterval="0"
}
---@return "Mouse"
function Mouse:GetClass() end
---@return "Object"
function Mouse:GetChildClass() end
---@return MouseCollect
function Mouse:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "AbsPos", role: nil): ItemGroupPosition
---@overload fun(name: "DisplayIndex", role: nil): integer
---@overload fun(name: "Cursor", role: nil): string
---@overload fun(name: "Visible", role: nil): boolean
---@overload fun(name: "AutoHideInterval", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"AbsPos"|"DisplayIndex"|"Cursor"|"Visible"|"AutoHideInterval", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Mouse:Get(name, role) end
