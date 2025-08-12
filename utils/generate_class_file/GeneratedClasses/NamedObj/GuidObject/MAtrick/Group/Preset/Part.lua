---@meta

---@class Part: Preset A cue part in a cue.
---@field Tracking
Distance RelCueNumber
---@field Duration TimePropertyValue
---@field Part integer
---@field Sync integer
---@field Morph integer
---@field CommandEnabled integer
---@field Command string
---@field MIBMode integer
---@field MIBTarget RelCueNumber
---@field MIBMultiStep integer
---@field MIBFade TimePropertyValue
---@field MIBDelay TimePropertyValue
---@field Indiv
Fade TimePropertyValue
---@field Indiv
Delay TimePropertyValue
---@field Indiv
Duration TimePropertyValue
local Part = {
    Part="0",
    Sync="0",
    Morph="0",
    CommandEnabled="Yes",
    MIBMode="Default",
    MIBMultiStep="Running",
    MIBFade="Default",
    MIBDelay="Default"
}
---@return "Part"
function Part:GetClass() end
---@return "Recipe"
function Part:GetChildClass() end
---@return Cue
function Part:Parent() end
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
---@overload fun(name: "Tracking
Distance", role: nil): RelCueNumber
---@overload fun(name: "Duration", role: nil): TimePropertyValue
---@overload fun(name: "Part"|"Sync"|"Morph"|"CommandEnabled", role: nil): integer
---@overload fun(name: "Command", role: nil): string
---@overload fun(name: "MIBMode", role: nil): integer
---@overload fun(name: "MIBTarget", role: nil): RelCueNumber
---@overload fun(name: "MIBMultiStep", role: nil): integer
---@overload fun(name: "MIBFade"|"MIBDelay"|"Indiv
Fade"|"Indiv
Delay"|"Indiv
Duration", role: nil): TimePropertyValue
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Mode"|"MemoryType"|"MoveGrid
Cursor"|"PreserveGridPositions"|"SelectionData"|"InputFilter"|"Cue
Part"|"Type"|"User"|"Feature
Group"|"Trigger"|"ValuesMode"|"MAgic"|"PresetMode"|"PresetModeInternal"|"StoredData"|"Speed
Master"|"Speed
Scale"|"PresetData"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"Mode"|"OffFade"|"RecipeTemplate"|"Action"|"Tracking
Distance"|"Duration"|"Part"|"Sync"|"Morph"|"CommandEnabled"|"Command"|"MIBMode"|"MIBTarget"|"MIBMultiStep"|"MIBFade"|"MIBDelay"|"Indiv
Fade"|"Indiv
Delay"|"Indiv
Duration", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Recipe
function Part:Get(name, role) end
