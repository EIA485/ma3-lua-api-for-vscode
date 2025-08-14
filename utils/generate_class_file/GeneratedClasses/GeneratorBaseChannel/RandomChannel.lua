---@meta

---@class RandomChannel: GeneratorBaseChannel
---@field SpeedMaster integer
---@field Speed SpeedPropertyValue
---@field SpeedVariance integer
---@field Phase integer
---@field PhaseVariance integer
---@field Low integer
---@field LowVariance integer
---@field High integer
---@field HighVariance integer
---@field Attack integer
---@field Decay integer
---@field Ratio integer
---@field RatioVariance integer
---@field SpeedOnce integer
---@field PhaseOnce integer
---@field RandomStart integer
local RandomChannel = {
    SpeedMaster="None",
    Speed="60.00",
    SpeedVariance="0.00",
    Phase="0.00",
    PhaseVariance="0.00",
    Low="0.00",
    LowVariance="0.00",
    High="100.00",
    HighVariance="0.00",
    Attack="100.00",
    Decay="100.00",
    Ratio="50.00",
    RatioVariance="0.00",
    SpeedOnce="0",
    PhaseOnce="1",
    RandomStart="0"
}
---@return "RandomChannel"
function RandomChannel:GetClass() end
---@return "Object"
function RandomChannel:GetChildClass() end
---@return RandomChannels
function RandomChannel:Parent() end
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "Speed", role: nil): SpeedPropertyValue
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "SpeedMaster"|"SpeedVariance"|"Phase"|"PhaseVariance"|"Low"|"LowVariance"|"High"|"HighVariance"|"Attack"|"Decay"|"Ratio"|"RatioVariance"|"SpeedOnce"|"PhaseOnce"|"RandomStart"|"VirtualDimmer"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Name"|"Note"|"DependencyExport", role: nil): string
---@overload fun(name: "SpeedMaster"|"Speed"|"SpeedVariance"|"Phase"|"PhaseVariance"|"Low"|"LowVariance"|"High"|"HighVariance"|"Attack"|"Decay"|"Ratio"|"RatioVariance"|"SpeedOnce"|"PhaseOnce"|"RandomStart"|"Attribute"|"VirtualDimmer"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RandomChannel:Get(name, role) end