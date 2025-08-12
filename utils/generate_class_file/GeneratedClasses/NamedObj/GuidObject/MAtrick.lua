---@meta

---@class MAtrick: GuidObject MAtricks for the selection object.
---@field Active integer
---@field HasAnyMatricksData boolean
---@field ShuffleMode ShuffleMode
---@field InitialName string
---@field InitialMatricks MAtrick
---@field X integer
---@field Y integer
---@field Z integer
---@field XBlock integer
---@field YBlock integer
---@field ZBlock integer
---@field XGroup integer
---@field YGroup integer
---@field ZGroup integer
---@field XWings integer
---@field YWings integer
---@field ZWings integer
---@field XWidth integer
---@field YWidth integer
---@field ZWidth integer
---@field XShuffle integer
---@field YShuffle integer
---@field ZShuffle integer
---@field XShift integer
---@field YShift integer
---@field ZShift integer
---@field InvertStyle integer
---@field InvertX integer
---@field InvertY integer
---@field InvertZ integer
---@field AlignRangeX integer
---@field AlignRangeY integer
---@field AlignRangeZ integer
---@field RelativeFade integer
---@field RelativeDelay integer
---@field RelativePhase integer
---@field RelativeSpeed integer
---@field Relative boolean
---@field PhaserTransform integer
---@field DoShuffle fun()
local MAtrick = {
    Active="0",
    HasAnyMatricksData="No",
    ShuffleMode="Default",
    X="None",
    Y="None",
    Z="None",
    XBlock="None",
    YBlock="None",
    ZBlock="None",
    XGroup="None",
    YGroup="None",
    ZGroup="None",
    XWings="None",
    YWings="None",
    ZWings="None",
    XWidth="Auto",
    YWidth="Auto",
    ZWidth="Auto",
    XShuffle="None",
    YShuffle="None",
    ZShuffle="None",
    XShift="None",
    YShift="None",
    ZShift="None",
    InvertStyle="Pan",
    InvertX="0",
    InvertY="0",
    InvertZ="0",
    AlignRangeX="0",
    AlignRangeY="0",
    AlignRangeZ="0",
    RelativeFade="Yes",
    RelativeDelay="Yes",
    RelativePhase="Yes",
    RelativeSpeed="No",
    Relative="Yes",
    PhaserTransform="None"
}
---@return "MAtrick"
function MAtrick:GetClass() end
---@return "Object"
function MAtrick:GetChildClass() end
---@return MAtricks
function MAtrick:Parent() end
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
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function MAtrick:Get(name, role) end
