---@meta

---@class RandomChannel: GeneratorBaseChannel
---@field SpeedMaster integer
---@field Speed SpeedPropertyValue
---@field SpeedVariance integer
---@field Phase integer
---@field Phase
Variance integer
---@field Low integer
---@field Low
Variance integer
---@field High integer
---@field High
Variance integer
---@field Attack integer
---@field Decay integer
---@field Ratio integer
---@field Ratio
Variance integer
---@field Speed
Once integer
---@field Phase
Once integer
---@field Random
Start integer
local RandomChannel = {
    SpeedMaster="None",
    Speed="60.00",
    SpeedVariance="0.00",
    Phase="0.00",
    ["Phase
Variance"]="0.00",
    Low="0.00",
    ["Low
Variance"]="0.00",
    High="100.00",
    ["High
Variance"]="0.00",
    Attack="100.00",
    Decay="100.00",
    Ratio="50.00",
    ["Ratio
Variance"]="0.00",
    ["Speed
Once"]="0",
    ["Phase
Once"]="1",
    ["Random
Start"]="0"
}
---@return "RandomChannel"
function RandomChannel:GetClass() end
---@return "Object"
function RandomChannel:GetChildClass() end
---@return RandomChannels
function RandomChannel:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Attribute", role: nil): AttributeIndexPropertyValue
---@overload fun(name: "Virtual
Dimmer"|"SpeedMaster", role: nil): integer
---@overload fun(name: "Speed", role: nil): SpeedPropertyValue
---@overload fun(name: "SpeedVariance"|"Phase"|"Phase
Variance"|"Low"|"Low
Variance"|"High"|"High
Variance"|"Attack"|"Decay"|"Ratio"|"Ratio
Variance"|"Speed
Once"|"Phase
Once"|"Random
Start", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Attribute"|"Virtual
Dimmer"|"SpeedMaster"|"Speed"|"SpeedVariance"|"Phase"|"Phase
Variance"|"Low"|"Low
Variance"|"High"|"High
Variance"|"Attack"|"Decay"|"Ratio"|"Ratio
Variance"|"Speed
Once"|"Phase
Once"|"Random
Start", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function RandomChannel:Get(name, role) end
