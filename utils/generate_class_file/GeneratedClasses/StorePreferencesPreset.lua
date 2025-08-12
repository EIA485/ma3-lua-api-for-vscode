---@meta

---@class StorePreferencesPreset: Object
---@field InputFilter World
---@field Speed
Master SpeedMaster
---@field Speed
Scale SpeedScale
---@field MAgic integer
---@field PresetMode integer
---@field Cue
Part integer
---@field OffFade TimePropertyValue
local StorePreferencesPreset = {
    ["Speed
Master"]="None",
    ["Speed
Scale"]="One",
    MAgic="0",
    PresetMode="Selective",
    ["Cue
Part"]="Default",
    OffFade="0"
}
---@return "StorePreferencesPreset"
function StorePreferencesPreset:GetClass() end
---@return "Object"
function StorePreferencesPreset:GetChildClass() end
---@return UserProfile
function StorePreferencesPreset:Parent() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "InputFilter", role: nil): World
---@overload fun(name: "Speed
Master", role: nil): SpeedMaster
---@overload fun(name: "Speed
Scale", role: nil): SpeedScale
---@overload fun(name: "MAgic"|"PresetMode"|"Cue
Part", role: nil): integer
---@overload fun(name: "OffFade", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"InputFilter"|"Speed
Master"|"Speed
Scale"|"MAgic"|"PresetMode"|"Cue
Part"|"OffFade", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function StorePreferencesPreset:Get(name, role) end
