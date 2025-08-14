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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Attributes", role: nil): AttributeMode
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "MoveGridCursor", role: nil): GridCursorMovement
---@overload fun(name: "InitialMatricks", role: nil): MAtrick
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "ShuffleMode", role: nil): ShuffleMode
---@overload fun(name: "SelectionData", role: nil): SubfixtureBlock
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "HasAnyMatricksData"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DoShuffle", role: nil): fun()
---@overload fun(name: "Absolute"|"Relative"|"Timing"|"Phaser"|"Mode"|"Selection"|"MemoryType"|"PreserveGridPositions"|"Active"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"PhaserTransform"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "InitialName"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Absolute"|"Relative"|"Timing"|"Phaser"|"Attributes"|"Mode"|"Selection"|"MemoryType"|"MoveGridCursor"|"PreserveGridPositions"|"SelectionData"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"PhaserTransform"|"DoShuffle"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Filter:Get(name, role) end