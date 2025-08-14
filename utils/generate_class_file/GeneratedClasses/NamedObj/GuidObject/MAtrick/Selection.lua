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
---@overload fun(name: "Appearance", role: nil): Appearance
---@overload fun(name: "SelectedAttributes", role: nil): AttributeMode
---@overload fun(name: "AxisGroupType", role: nil): AxisGroupType
---@overload fun(name: "AxisSystem"|"LayoutType", role: nil): AxisSystem
---@overload fun(name: "GridColumnOrder", role: nil): ColumnOrder
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "EncoderFunction", role: nil): EncoderFunction
---@overload fun(name: "EncoderResolution3d", role: nil): EncoderResolution3d
---@overload fun(name: "GridDirection", role: nil): GridDirection
---@overload fun(name: "InitialMatricks", role: nil): MAtrick
---@overload fun(name: "RotationMode", role: nil): RotationMode
---@overload fun(name: "GridRowOrder", role: nil): RowOrder
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "ShuffleMode", role: nil): ShuffleMode
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "HasAnyMatricksData"|"Relative"|"FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "DoShuffle", role: nil): fun()
---@overload fun(name: "ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"CountTotalSelected"|"CountFullySelected"|"SetupMode"|"PreserveGridPositions"|"Active"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"PhaserTransform"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange", role: nil): number
---@overload fun(name: "InitialName"|"NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "AxisSystem"|"RotationMode"|"LayoutType"|"AxisGroupType"|"EncoderFunction"|"EncoderResolution3d"|"GridDirection"|"GridRowOrder"|"GridColumnOrder"|"Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"CountTotalSelected"|"CountFullySelected"|"SelectedAttributes"|"SetupMode"|"PreserveGridPositions"|"Active"|"HasAnyMatricksData"|"ShuffleMode"|"InitialName"|"InitialMatricks"|"X"|"Y"|"Z"|"XBlock"|"YBlock"|"ZBlock"|"XGroup"|"YGroup"|"ZGroup"|"XWings"|"YWings"|"ZWings"|"XWidth"|"YWidth"|"ZWidth"|"XShuffle"|"YShuffle"|"ZShuffle"|"XShift"|"YShift"|"ZShift"|"InvertStyle"|"InvertX"|"InvertY"|"InvertZ"|"AlignRangeX"|"AlignRangeY"|"AlignRangeZ"|"RelativeFade"|"RelativeDelay"|"RelativePhase"|"RelativeSpeed"|"Relative"|"PhaserTransform"|"DoShuffle"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Object
function Selection:Get(name, role) end