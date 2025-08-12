---@meta

---@class Presets: GenericPool A preset pool.
---@field InputFilter World
---@field PresetMode integer
---@field Cue
Part integer
local Presets = {
    PresetMode="Selective",
    ["Cue
Part"]="0"
}
---@return "Presets"
function Presets:GetClass() end
---@return "Preset"
function Presets:GetChildClass() end
---@return PresetPools
function Presets:Parent() end
---@param index integer
---@return Preset
function Presets:Ptr(index) end
---@return Preset[]
function Presets:Children() end
---@return Preset?
function Presets:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint"|"DefaultsLoaded", role: nil): integer
---@overload fun(name: "InputFilter", role: nil): World
---@overload fun(name: "PresetMode"|"Cue
Part", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"DefaultsLoaded"|"InputFilter"|"PresetMode"|"Cue
Part", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Preset
function Presets:Get(name, role) end
---@overload fun(index: integer, class: "Preset", undo: Undo?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?): Preset
function Presets:Create(index, class, undo) end
---@overload fun(class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(class: nil, undo: Undo?, count: integer?): Preset
function Presets:Append(class, undo, count) end
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Preset
function Presets:Acquire(class, undo) end
---@overload fun(class: "Preset", undo: Undo?): Preset
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Preset
---@deprecated use "Acquire" instead
function Presets:Aquire(class, undo) end
---@overload fun(index: integer, class: "Preset", undo: Undo?, count: integer?): Preset
---@overload fun(index: integer, class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Preset
function Presets:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Preset
function Presets:Find(name, class) end
---@overload fun(name: string, class: "Preset"): Preset
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Object
function Presets:FindRecursive(name, class) end
