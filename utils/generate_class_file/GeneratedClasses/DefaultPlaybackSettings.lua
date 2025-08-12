---@meta

---@class DefaultPlaybackSettings: Object Defines default playback timing and behaviour.
---@field MIB
Fade TimePropertyValue
---@field MIB
Delay TimePropertyValue
---@field MIB
Transition integer
---@field DelayToPhase integer
---@field TimingGoto TimePropertyValue
---@field TimingGoBack TimePropertyValue
---@field TimingGoFast TimePropertyValue
---@field TimingGoBackFast TimePropertyValue
local DefaultPlaybackSettings = {
    ["MIB
Fade"]="2.0",
    ["MIB
Delay"]="1.0",
    ["MIB
Transition"]="SCurve",
    DelayToPhase="0",
    TimingGoto="CueTiming",
    TimingGoBack="CueTiming",
    TimingGoFast="0",
    TimingGoBackFast="0"
}
---@return "DefaultPlaybackSettings"
function DefaultPlaybackSettings:GetClass() end
---@return "Object"
function DefaultPlaybackSettings:GetChildClass() end
---@return ShowSettings
function DefaultPlaybackSettings:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "MIB
Fade"|"MIB
Delay", role: nil): TimePropertyValue
---@overload fun(name: "MIB
Transition"|"DelayToPhase", role: nil): integer
---@overload fun(name: "TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"MIB
Fade"|"MIB
Delay"|"MIB
Transition"|"DelayToPhase"|"TimingGoto"|"TimingGoBack"|"TimingGoFast"|"TimingGoBackFast", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function DefaultPlaybackSettings:Get(name, role) end
