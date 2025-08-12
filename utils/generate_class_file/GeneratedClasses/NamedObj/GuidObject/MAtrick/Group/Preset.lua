---@meta

---@class Preset: Group A preset is the indirect data source in a light show. Typically*,* it is referenced by a sequence.
---@field InputFilter World
---@field Cue
Part integer
---@field Type string
---@field User string
---@field Feature
Group string
---@field Trigger string
---@field ValuesMode PresetValuesMode
---@field MAgic integer
---@field PresetMode integer
---@field PresetModeInternal integer
---@field StoredData string
---@field Speed
Master SpeedMaster
---@field Speed
Scale integer
---@field PresetData EncoderLinkPhaser[]
---@field OwnDataPresent boolean
---@field OwnNonCookedDataPresent integer
---@field Mode integer
---@field OffFade TimePropertyValue
---@field RecipeTemplate integer
---@field Action PresetActionToken
local Preset = {
    ["Cue
Part"]="Default",
    ValuesMode="Normal",
    MAgic="0",
    PresetMode="Selective",
    PresetModeInternal="Selective",
    ["Speed
Master"]="None",
    ["Speed
Scale"]="One",
    OwnNonCookedDataPresent="No",
    OffFade="0",
    RecipeTemplate="0"
}
---@return "Preset"
function Preset:GetClass() end
---@return "Recipe"
function Preset:GetChildClass() end
---@return Object
function Preset:Parent() end
---@param index integer
---@return Recipe
function Preset:Ptr(index) end
---@return Recipe[]
function Preset:Children() end
---@return Recipe?
function Preset:CurrentChild() end
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No", role: nil): integer
---@overload fun(name: "Name"|"Note", role: nil): string
---@overload fun(name: "UserExpanded", role: nil): integer
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "Hidden", role: nil): integer
---@overload fun(name: "DependencyExport", role: nil): string
---@overload fun(name: "MemoryFootprint", role: nil): integer
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "NameAndApp"|"Note", role: nil): string
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "Active", role: nil): integer
---@overload fun(name: "HasAnyMatricksData", role: nil): boolean
---@overload fun(name: "ShuffleMode", role: nil): ShuffleMode
---@overload fun(name: "InitialName", role: nil): string
---@overload fun(name: "InitialMatricks", role: nil): MAtrick
---@overload fun(name: "X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed", role: nil): integer
---@overload fun(name: "Relative", role: nil): boolean
---@overload fun(name: "PhaserTransform", role: nil): integer
---@overload fun(name: "DoShuffle", role: nil): fun()
---@overload fun(name: "Mode"|"MemoryType", role: nil): integer
---@overload fun(name: "MoveGrid
Cursor", role: nil): GridCursorMovement
---@overload fun(name: "PreserveGridPositions", role: nil): integer
---@overload fun(name: "SelectionData", role: nil): SubfixtureBlock
---@overload fun(name: "InputFilter", role: nil): World
---@overload fun(name: "Cue
Part", role: nil): integer
---@overload fun(name: "Type"|"User"|"Feature
Group"|"Trigger", role: nil): string
---@overload fun(name: "ValuesMode", role: nil): PresetValuesMode
---@overload fun(name: "MAgic"|"PresetMode"|"PresetModeInternal", role: nil): integer
---@overload fun(name: "StoredData", role: nil): string
---@overload fun(name: "Speed
Master", role: nil): SpeedMaster
---@overload fun(name: "Speed
Scale", role: nil): integer
---@overload fun(name: "PresetData", role: nil): EncoderLinkPhaser[]
---@overload fun(name: "OwnDataPresent", role: nil): boolean
---@overload fun(name: "OwnNonCookedDataPresent"|"Mode", role: nil): integer
---@overload fun(name: "OffFade", role: nil): TimePropertyValue
---@overload fun(name: "RecipeTemplate", role: nil): integer
---@overload fun(name: "Action", role: nil): PresetActionToken
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Mode"|"MemoryType"|"MoveGrid
Cursor"|"PreserveGridPositions"|"SelectionData"|"InputFilter"|"Cue
Part"|"Type"|"User"|"Feature
Group"|"Trigger"|"ValuesMode"|"MAgic"|"PresetMode"|"PresetModeInternal"|"StoredData"|"Speed
Master"|"Speed
Scale"|"PresetData"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"Mode"|"OffFade"|"RecipeTemplate"|"Action", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Recipe
function Preset:Get(name, role) end
---@overload fun(index: integer, class: "Recipe", undo: Undo?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?): Recipe
function Preset:Create(index, class, undo) end
---@overload fun(class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(class: nil, undo: Undo?, count: integer?): Recipe
function Preset:Append(class, undo, count) end
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Recipe
function Preset:Acquire(class, undo) end
---@overload fun(class: "Recipe", undo: Undo?): Recipe
---@overload fun(class: nil, undo: Undo?): Recipe
---@deprecated use "Acquire" instead
function Preset:Aquire(class, undo) end
---@overload fun(index: integer, class: "Recipe", undo: Undo?, count: integer?): Recipe
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Recipe
function Preset:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Recipe
function Preset:Find(name, class) end
---@overload fun(name: string, class: "Recipe"): Recipe
---@overload fun(name: string, class: nil): Object
function Preset:FindRecursive(name, class) end
