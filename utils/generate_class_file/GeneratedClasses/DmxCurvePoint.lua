---@meta

---@class DmxCurvePoint: Object
---@field In DMXPropertyValue
---@field Out DMXPropertyValue
---@field Accel ValueTPropertyValue
---@field Decel ValueTPropertyValue
local DmxCurvePoint = {}
---@return "DmxCurvePoint"
function DmxCurvePoint:GetClass() end
---@return "Object"
function DmxCurvePoint:GetChildClass() end
---@return DmxCurve
function DmxCurvePoint:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "In"|"Out", role: nil): DMXPropertyValue
---@overload fun(name: "Accel"|"Decel", role: nil): ValueTPropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"In"|"Out"|"Accel"|"Decel", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DmxCurvePoint:Get(name, role) end
