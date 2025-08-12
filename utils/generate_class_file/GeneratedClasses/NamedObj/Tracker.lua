---@meta

---@class Tracker: NamedObj
---@field TrackerID integer
---@field MArkerID integer
---@field PositionX number
---@field PositionY number
---@field PositionZ number
---@field SpeedX number
---@field SpeedY number
---@field SpeedZ number
---@field RotX number
---@field RotY number
---@field RotZ number
---@field IsOnline integer
local Tracker = {
    MArkerID="None",
    PositionX="0",
    PositionY="0",
    PositionZ="0",
    SpeedX="0",
    SpeedY="0",
    SpeedZ="0",
    RotX="0",
    RotY="0",
    RotZ="0",
    IsOnline="Yes"
}
---@return "Tracker"
function Tracker:GetClass() end
---@return "Object"
function Tracker:GetChildClass() end
---@return System
function Tracker:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"TrackerID"|"MArkerID", role: nil): integer
---@overload fun(name: "PositionX"|"PositionY"|"PositionZ"|"SpeedX"|"SpeedY"|"SpeedZ"|"RotX"|"RotY"|"RotZ", role: nil): number
---@overload fun(name: "IsOnline", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"TrackerID"|"MArkerID"|"PositionX"|"PositionY"|"PositionZ"|"SpeedX"|"SpeedY"|"SpeedZ"|"RotX"|"RotY"|"RotZ"|"IsOnline", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Tracker:Get(name, role) end
