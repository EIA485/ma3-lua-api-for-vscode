---@meta

---@class AtFilter: Object
---@field Attributes AttributeMode
---@field Absolute integer
---@field Relative integer
---@field Timing integer
---@field Phaser integer
---@field Active integer
---@field AutoReset integer
---@field FilterRef Object
---@field DefaultFilterRef Object
local AtFilter = {
    Absolute="1",
    Relative="1",
    Timing="1",
    Phaser="1",
    Active="0",
    AutoReset="0"
}
---@return "AtFilter"
function AtFilter:GetClass() end
---@return "Object"
function AtFilter:GetChildClass() end
---@return UserEnvironment
function AtFilter:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Attributes", role: nil): AttributeMode
---@overload fun(name: "Absolute"|"Relative"|"Timing"|"Phaser"|"Active"|"AutoReset", role: nil): integer
---@overload fun(name: "FilterRef"|"DefaultFilterRef", role: nil): Object
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attributes"|"Absolute"|"Relative"|"Timing"|"Phaser"|"Active"|"AutoReset"|"FilterRef"|"DefaultFilterRef", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function AtFilter:Get(name, role) end
