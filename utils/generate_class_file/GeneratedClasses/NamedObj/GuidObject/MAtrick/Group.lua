---@meta

---@class Group: MAtrick A fixture selection that contains an order. Used to recall its selection or as groupmaster.
---@field Mode integer
---@field MemoryType integer
---@field MoveGridCursor GridCursorMovement
---@field PreserveGridPositions integer
---@field SelectionData SubfixtureBlock
local Group = {
    Mode="None",
    MemoryType="Compressed",
    MoveGridCursor="Append X",
    PreserveGridPositions="0"
}
---@return "Group"
function Group:GetClass() end
---@return "Object"
function Group:GetChildClass() end
---@return Groups
function Group:Parent() end
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "MoveGridCursor", role: nil): GridCursorMovement
---@overload fun(name: "InitialMatricks", role: nil): MAtrick
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "ShuffleMode", role: nil): ShuffleMode
---@overload fun(name: "SelectionData", role: nil): SubfixtureBlock
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "HasAnyMatricksData"|"Relative"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DoShuffle", role: nil): fun()
---@overload fun(name: "Mode"|"MemoryType"|"PreserveGridPositions"|"Active"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"PhaserTransform"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "InitialName"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "Mode"|"MemoryType"|"MoveGridCursor"|"PreserveGridPositions"|"SelectionData"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Group:Get(name, role) end