---@meta

---@class Undo: NamedObj
---@field UIndex integer
---@field ElapsedTime TimePropertyValue
---@field SessionTime Datum
local Undo = {}
---@return "Undo"
function Undo:GetClass() end
---@return "Object"
function Undo:GetChildClass() end
---@return Undos
function Undo:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"UIndex", role: nil): integer
---@overload fun(name: "ElapsedTime", role: nil): TimePropertyValue
---@overload fun(name: "SessionTime", role: nil): Datum
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"UIndex"|"ElapsedTime"|"SessionTime", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Undo:Get(name, role) end
