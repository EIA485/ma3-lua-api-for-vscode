---@meta

---@class Selection: MAtrick Defines the current selection and world for one operator in the network.
---@field AxisSystem AxisSystem
---@field RotationMode RotationMode
---@field LayoutType AxisSystem
---@field AxisGroupType AxisGroupType
---@field EncoderFunction EncoderFunction
---@field EncoderResolution3d EncoderResolution3d
---@field GridDirection GridDirection
---@field GridRowOrder RowOrder
---@field GridColumnOrder ColumnOrder
---@field Columns number
---@field Rows number
---@field ColumnsInterval number
---@field RowsInterval number
---@field StartX number
---@field LengthX number
---@field StartY number
---@field LengthY number
---@field StartZ number
---@field LengthZ number
---@field RadiusStart number
---@field RadiusDelta number
---@field AngleStart number
---@field AngleRange number
---@field ArrangeOnChange integer
---@field SendChangesWhileEncoderEvent integer
---@field CountTotalSelected integer
---@field CountFullySelected integer
---@field SelectedAttributes AttributeMode
---@field SetupMode integer
---@field PreserveGridPositions integer
local Selection = {
    SetupMode="No",
    PreserveGridPositions="No"
}
---@return "Selection"
function Selection:GetClass() end
---@return "Object"
function Selection:GetChildClass() end
---@return UserEnvironment
function Selection:Parent() end
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
---@overload fun(name: "AxisSystem", role: nil): AxisSystem
---@overload fun(name: "RotationMode", role: nil): RotationMode
---@overload fun(name: "LayoutType", role: nil): AxisSystem
---@overload fun(name: "AxisGroupType", role: nil): AxisGroupType
---@overload fun(name: "EncoderFunction", role: nil): EncoderFunction
---@overload fun(name: "EncoderResolution3d", role: nil): EncoderResolution3d
---@overload fun(name: "GridDirection", role: nil): GridDirection
---@overload fun(name: "GridRowOrder", role: nil): RowOrder
---@overload fun(name: "GridColumnOrder", role: nil): ColumnOrder
---@overload fun(name: "Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange", role: nil): number
---@overload fun(name: "ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"CountTotalSelected"|"CountFullySelected", role: nil): integer
---@overload fun(name: "SelectedAttributes", role: nil): AttributeMode
---@overload fun(name: "SetupMode"|"PreserveGridPositions", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"AxisSystem"|"RotationMode"|"LayoutType"|"AxisGroupType"|"EncoderFunction"|"EncoderResolution3d"|"GridDirection"|"GridRowOrder"|"GridColumnOrder"|"Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"CountTotalSelected"|"CountFullySelected"|"SelectedAttributes"|"SetupMode"|"PreserveGridPositions", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Selection:Get(name, role) end
