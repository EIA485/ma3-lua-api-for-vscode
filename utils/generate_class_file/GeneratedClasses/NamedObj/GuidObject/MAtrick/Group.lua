---@meta

---@class Group: MAtrick A fixture selection that contains an order. Used to recall its selection or as groupmaster.
---@field Mode integer
---@field MemoryType integer
---@field MoveGrid
Cursor GridCursorMovement
---@field PreserveGridPositions integer
---@field SelectionData SubfixtureBlock
local Group = {
    Mode="None",
    MemoryType="Compressed",
    ["MoveGrid
Cursor"]="Append X",
    PreserveGridPositions="0"
}
---@return "Group"
function Group:GetClass() end
---@return "Object"
function Group:GetChildClass() end
---@return Groups
function Group:Parent() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Mode"|"MemoryType"|"MoveGrid
Cursor"|"PreserveGridPositions"|"SelectionData", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Group:Get(name, role) end
