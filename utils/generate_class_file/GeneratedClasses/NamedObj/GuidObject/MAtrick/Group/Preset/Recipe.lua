---@meta

---@class Recipe: Preset
---@field Selection Group
---@field Selection
Mode integer
---@field Preset Preset
---@field MAtricks MAtrick
---@field Filter World
---@field Generator GeneratorBaseObject
---@field Values Object
---@field EmptyLastCooking integer
---@field FailedCookedPart integer
---@field Enabled integer
local Recipe = {
    ["Selection
Mode"]="Normal"
}
---@return "Recipe"
function Recipe:GetClass() end
---@return "IllegalObject"
function Recipe:GetChildClass() end
---@param index integer
---@return IllegalObject
function Recipe:Ptr(index) end
---@return IllegalObject[]
function Recipe:Children() end
---@return IllegalObject?
function Recipe:CurrentChild() end
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
---@overload fun(name: "Selection", role: nil): Group
---@overload fun(name: "Selection
Mode", role: nil): integer
---@overload fun(name: "Preset", role: nil): Preset
---@overload fun(name: "MAtricks", role: nil): MAtrick
---@overload fun(name: "Filter", role: nil): World
---@overload fun(name: "Generator", role: nil): GeneratorBaseObject
---@overload fun(name: "Values", role: nil): Object
---@overload fun(name: "EmptyLastCooking"|"FailedCookedPart"|"Enabled", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Mode"|"MemoryType"|"MoveGrid
Cursor"|"PreserveGridPositions"|"SelectionData"|"InputFilter"|"Cue
Part"|"Type"|"User"|"Feature
Group"|"Trigger"|"ValuesMode"|"MAgic"|"PresetMode"|"PresetModeInternal"|"StoredData"|"Speed
Master"|"Speed
Scale"|"PresetData"|"OwnDataPresent"|"OwnNonCookedDataPresent"|"Mode"|"OffFade"|"RecipeTemplate"|"Action"|"Selection"|"Selection
Mode"|"Preset"|"MAtricks"|"Filter"|"Generator"|"Values"|"EmptyLastCooking"|"FailedCookedPart"|"Enabled", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): IllegalObject
function Recipe:Get(name, role) end
---@overload fun(index: integer, class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(index: integer, class: nil, undo: Undo?): IllegalObject
function Recipe:Create(index, class, undo) end
---@overload fun(class: "IllegalObject", undo: Undo?, count: integer?): IllegalObject
---@overload fun(class: nil, undo: Undo?, count: integer?): IllegalObject
function Recipe:Append(class, undo, count) end
---@overload fun(class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(class: nil, undo: Undo?): IllegalObject
function Recipe:Acquire(class, undo) end
---@overload fun(class: "IllegalObject", undo: Undo?): IllegalObject
---@overload fun(class: nil, undo: Undo?): IllegalObject
---@deprecated use "Acquire" instead
function Recipe:Aquire(class, undo) end
---@overload fun(index: integer, class: "IllegalObject", undo: Undo?, count: integer?): IllegalObject
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): IllegalObject
function Recipe:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "IllegalObject"): IllegalObject
---@overload fun(name: string, class: nil): IllegalObject
function Recipe:Find(name, class) end
---@overload fun(name: string, class: "IllegalObject"): IllegalObject
---@overload fun(name: string, class: nil): Object
function Recipe:FindRecursive(name, class) end
