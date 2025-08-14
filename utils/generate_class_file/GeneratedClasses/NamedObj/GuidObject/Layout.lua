---@meta

---@class Layout: GuidObject
---@field PositionX integer
---@field PositionY integer
---@field DimensionW integer
---@field DimensionH integer
---@field UsedX integer
---@field UsedY integer
---@field UsedW integer
---@field UsedH integer
---@field CanvasAppearance Appearance
---@field Appearance Appearance
---@field ViewPosActive integer
---@field ViewPosScale number
---@field Markers integer
---@field ValueColors integer
---@field ActiveStyle integer
---@field AxisSystem AxisSystem
---@field RotationMode RotationMode
---@field LayoutType AxisSystem
---@field AxisGroupType AxisGroupType
---@field EncoderFunction EncoderFunction
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
---@field CameraIndex number
---@field Scale number
---@field Ratio number
---@field MoveX number
---@field MoveY number
---@field ArrangeOnChange integer
---@field SendChangesWhileEncoderEvent integer
local Layout = {}
---@return "Layout"
function Layout:GetClass() end
---@return "Element"
function Layout:GetChildClass() end
---@return Layouts
function Layout:Parent() end
---@param index integer
---@return Element
function Layout:Ptr(index) end
---@return Element[]
function Layout:Children() end
---@return Element?
function Layout:CurrentChild() end
---@overload fun(name: "CanvasAppearance"|"Appearance", role: nil): Appearance
---@overload fun(name: "AxisGroupType", role: nil): AxisGroupType
---@overload fun(name: "AxisSystem"|"LayoutType", role: nil): AxisSystem
---@overload fun(name: "GridColumnOrder", role: nil): ColumnOrder
---@overload fun(name: "Guid", role: nil): Crypto.Guid<128>
---@overload fun(name: "EncoderFunction", role: nil): EncoderFunction
---@overload fun(name: "GridDirection", role: nil): GridDirection
---@overload fun(name: "RotationMode", role: nil): RotationMode
---@overload fun(name: "GridRowOrder", role: nil): RowOrder
---@overload fun(name: "Scribble", role: nil): Scribble
---@overload fun(name: "Tags", role: nil): TagMap
---@overload fun(name: "FaderEnabled"|"Owned", role: nil): boolean
---@overload fun(name: "PositionX"|"PositionY"|"DimensionW"|"DimensionH"|"UsedX"|"UsedY"|"UsedW"|"UsedH"|"ViewPosActive"|"Markers"|"ValueColors"|"ActiveStyle"|"ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"UserExpanded"|"Hidden"|"MemoryFootprint", role: nil): integer
---@overload fun(name: "ViewPosScale"|"Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"CameraIndex"|"Scale"|"Ratio"|"MoveX"|"MoveY", role: nil): number
---@overload fun(name: "NameAndApp"|"Note"|"Name"|"DependencyExport", role: nil): string
---@overload fun(name: "PositionX"|"PositionY"|"DimensionW"|"DimensionH"|"UsedX"|"UsedY"|"UsedW"|"UsedH"|"CanvasAppearance"|"Appearance"|"ViewPosActive"|"ViewPosScale"|"Markers"|"ValueColors"|"ActiveStyle"|"AxisSystem"|"RotationMode"|"LayoutType"|"AxisGroupType"|"EncoderFunction"|"GridDirection"|"GridRowOrder"|"GridColumnOrder"|"Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"CameraIndex"|"Scale"|"Ratio"|"MoveX"|"MoveY"|"ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"Guid"|"Scribble"|"NameAndApp"|"Note"|"Tags"|"IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Element
function Layout:Get(name, role) end
---@generic T : Element
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Element
function Layout:Create(index, class, undo) end
---@generic T : Element
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Element
function Layout:Append(class, undo, count) end
---@generic T : Element
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Element
function Layout:Acquire(class, undo) end
---@generic T : Element
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Element
---@deprecated use "Acquire" instead
function Layout:Aquire(class, undo) end
---@generic T : Element
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Element
function Layout:Insert(index, class, undo, count) end
---@generic T : Element
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Element
function Layout:Find(class, undo) end