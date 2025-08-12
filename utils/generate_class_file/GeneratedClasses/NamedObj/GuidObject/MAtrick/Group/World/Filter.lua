---@meta

---@class Filter: World
---@field Absolute integer
---@field Relative integer
---@field Timing integer
---@field Phaser integer
local Filter = {
    Absolute="1",
    Relative="1",
    Timing="1",
    Phaser="1"
}
---@return "Filter"
function Filter:GetClass() end
---@return "Object"
function Filter:GetChildClass() end
---@return Filters
function Filter:Parent() end
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
---@overload fun(name: "Attributes", role: nil): AttributeMode
---@overload fun(name: "Mode"|"Selection"|"Absolute"|"Relative"|"Timing"|"Phaser", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Mode"|"MemoryType"|"MoveGrid
Cursor"|"PreserveGridPositions"|"SelectionData"|"Attributes"|"Mode"|"Selection"|"Absolute"|"Relative"|"Timing"|"Phaser", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Filter:Get(name, role) end
