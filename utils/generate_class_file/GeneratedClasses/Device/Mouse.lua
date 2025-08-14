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
---@overload fun(name: "AbsPos", role: nil): ItemGroupPosition
---@overload fun(name: "Visible"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DisplayIndex"|"AutoHideInterval"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Cursor"|"Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "AbsPos"|"DisplayIndex"|"Cursor"|"Visible"|"AutoHideInterval"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Mouse:Get(name, role) end
---@generic T : MouseCollect
---@param class `T`
---@return T
function Mouse:FindParent(class) end