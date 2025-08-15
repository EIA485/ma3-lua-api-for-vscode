---@meta

---@class Layouts: GenericPool
local Layouts = {}
---@return "Layouts"
function Layouts:GetClass() end
---@return "Layout"
function Layouts:GetChildClass() end
---@generic T : Layouts
---@param class `T`
---@return boolean
function Layouts:IsClass(class) end
---@return Pool
function Layouts:Parent() end
---@param index integer
---@return Layout
function Layouts:Ptr(index) end
---@return Layout[]
function Layouts:Children() end
---@return Layout?
function Layouts:CurrentChild() end
---@overload fun(name: integer, role: nil): Layout
function Layouts:Get(name, role) end
---@generic T : Layout
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): Layout
function Layouts:Create(index, class, undo) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): Layout
function Layouts:Append(class, undo, count) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Layout
function Layouts:Acquire(class, undo) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Layout
---@deprecated use "Acquire" instead
function Layouts:Aquire(class, undo) end
---@generic T : Layout
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Layout
function Layouts:Insert(index, class, undo, count) end
---@generic T : Layout
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): Layout
function Layouts:Find(class, undo) end
---@overload fun(property_name: "AxisGroupType", property_value: AxisGroupType)
---@overload fun(property_name: "EncoderFunction", property_value: EncoderFunctionLayoutView)
---@overload fun(property_name: "GridDirection", property_value: GridDirection)
---@overload fun(property_name: "GridRowOrder", property_value: RowOrder)
---@overload fun(property_name: "GridColumnOrder", property_value: ColumnOrder)
---@overload fun(property_name: "AxisSystem", property_value: AxisSystem)
---@overload fun(property_name: "RotationMode", property_value: RotationMode)
---@overload fun(property_name: "LayoutType", property_value: LayoutType)
---@overload fun(property_name: "CanvasAppearance"|"Appearance", property_value: Appearance)
---@overload fun(property_name: "AxisGroupType", property_value: AxisGroupType)
---@overload fun(property_name: "AxisSystem", property_value: AxisSystem)
---@overload fun(property_name: "GridColumnOrder", property_value: ColumnOrder)
---@overload fun(property_name: "EncoderFunction", property_value: EncoderFunctionLayoutView)
---@overload fun(property_name: "GridDirection", property_value: GridDirection)
---@overload fun(property_name: "LayoutType", property_value: LayoutType)
---@overload fun(property_name: "RotationMode", property_value: RotationMode)
---@overload fun(property_name: "GridRowOrder", property_value: RowOrder)
---@overload fun(property_name: "ViewPosActive"|"ArrangeOnChange"|"SendChangesWhileEncoderEvent"|"Markers"|"ValueColors"|"ActiveStyle", property_value: YesNo|boolean)
---@overload fun(property_name: "DimensionW"|"DimensionH"|"UsedX"|"UsedY"|"UsedW"|"PositionX"|"PositionY"|"UsedH", property_value: integer)
---@overload fun(property_name: "RowsInterval"|"StartX"|"LengthX"|"StartY"|"LengthY"|"StartZ"|"LengthZ"|"RadiusStart"|"RadiusDelta"|"AngleStart"|"AngleRange"|"CameraIndex"|"Scale"|"Ratio"|"MoveX"|"MoveY"|"ViewPosScale"|"Columns"|"Rows"|"ColumnsInterval", property_value: number)
function Layouts:LayoutType(property_name, property_value) end