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
---@overload fun(name: "PositionX"|"PositionY"|"DimensionW"|"DimensionH"|"UsedX"|"UsedY"|"UsedW"|"UsedH", role: nil): integer
---@overload fun(name: "CanvasAppearance"|"Appearance", role: nil): Appearance
---@overload fun(name: "ViewPosActive", role: nil): integer
---@overload fun(name: "ViewPosScale", role: nil): number
---@overload fun(name: "Markers"|"ValueColors"|"ActiveStyle", role: nil): integer
---@overload fun(name: "AxisSystem", role: nil): AxisSystem
---@overload fun(name: "RotationMode", role: nil): RotationMode
---@overload fun(name: "LayoutType", role: nil): AxisSystem
---@overload fun(name: "AxisGroupType", role: nil): AxisGroupType
---@overload fun(name: "EncoderFunction", role: nil): EncoderFunction
---@overload fun(name: "GridDirection", role: nil): GridDirection
---@overload fun(name: "GridRowOrder", role: nil): RowOrder
---@overload fun(name: "GridColumnOrder", role: nil): ColumnOrder
---@overload fun(name: "Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"CameraIndex"|"Scale"|"Ratio"|"MoveX"|"MoveY", role: nil): number
---@overload fun(name: "ArrangeOnChange"|"SendChangesWhileEncoderEvent", role: nil): integer
---@overload fun(name: "IgnoreNetwork"|"StructureLocked"|"SystemLocked"|"Lock"|"Index"|"Count"|"No"|"Name"|"Note"|"UserExpanded"|"FaderEnabled"|"Owned"|"Hidden"|"DependencyExport"|"MemoryFootprint"|"Guid"|"Scribble"|"Appearance"|"NameAndApp"|"Note"|"Tags"|"PositionX"|"PositionY"|"DimensionW"|"DimensionH"|"UsedX"|"UsedY"|"UsedW"|"UsedH"|"CanvasAppearance"|"Appearance"|"ViewPosActive"|"ViewPosScale"|"Markers"|"ValueColors"|"ActiveStyle"|"AxisSystem"|"RotationMode"|"LayoutType"|"AxisGroupType"|"EncoderFunction"|"GridDirection"|"GridRowOrder"|"GridColumnOrder"|"Columns"|"Rows"|"ColumnsInterval"|"RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"CameraIndex"|"Scale"|"Ratio"|"MoveX"|"MoveY"|"ArrangeOnChange"|"SendChangesWhileEncoderEvent", role: Enums.Roles): string
---@overload fun(name: integer, role: nil): Element
function Layout:Get(name, role) end
---@overload fun(index: integer, class: "Element", undo: Undo?): Element
---@overload fun(index: integer, class: nil, undo: Undo?): Element
function Layout:Create(index, class, undo) end
---@overload fun(class: "Element", undo: Undo?, count: integer?): Element
---@overload fun(class: nil, undo: Undo?, count: integer?): Element
function Layout:Append(class, undo, count) end
---@overload fun(class: "Element", undo: Undo?): Element
---@overload fun(class: nil, undo: Undo?): Element
function Layout:Acquire(class, undo) end
---@overload fun(class: "Element", undo: Undo?): Element
---@overload fun(class: nil, undo: Undo?): Element
---@deprecated use "Acquire" instead
function Layout:Aquire(class, undo) end
---@overload fun(index: integer, class: "Element", undo: Undo?, count: integer?): Element
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Element
function Layout:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Element"): Element
---@overload fun(name: string, class: nil): Element
function Layout:Find(name, class) end
---@overload fun(name: string, class: "Element"): Element
---@overload fun(name: string, class: nil): Object
function Layout:FindRecursive(name, class) end
