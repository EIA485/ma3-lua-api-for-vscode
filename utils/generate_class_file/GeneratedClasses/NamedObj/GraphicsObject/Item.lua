---@meta

---@class Item: GraphicsObject Represents a single item (a row or a column) of a grid configuration
---@field SizePolicy LayoutSizePolicy
---@field Size Graphics.FixedSize
---@field MinSize Graphics.SizeDescriptor minimum size that is requested for this item (row or column). if <= 0 - not used
---@field RealSize integer real size in pixels
local Item = {
    SizePolicy="Stretch",
    Size="1",
    MinSize="0"
}
---@return "Item"
function Item:GetClass() end
---@return "GraphicsObject"
function Item:GetChildClass() end
---@return ItemCollect
function Item:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "SizePolicy", role: nil): LayoutSizePolicy
---@overload fun(name: "Size", role: nil): Graphics.FixedSize
---@overload fun(name: "MinSize", role: nil): Graphics.SizeDescriptor
---@overload fun(name: "RealSize", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"SizePolicy"|"Size"|"MinSize"|"RealSize", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): GraphicsObject
function Item:Get(name, role) end
