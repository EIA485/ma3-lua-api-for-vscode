---@meta

---@class TagReference: Object
---@field DataPool Object
---@field Class string
---@field No integer
---@field ObjectHandle Object
---@field Protect integer
local TagReference = {
    Protect="No"
}
---@return "TagReference"
function TagReference:GetClass() end
---@return "Object"
function TagReference:GetChildClass() end
---@return Tag
function TagReference:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "DataPool", role: nil): Object
---@overload fun(name: "Class", role: nil): string
---@overload fun(name: "No", role: nil): integer
---@overload fun(name: "ObjectHandle", role: nil): Object
---@overload fun(name: "Protect", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DataPool"|"Class"|"No"|"ObjectHandle"|"Protect", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function TagReference:Get(name, role) end
