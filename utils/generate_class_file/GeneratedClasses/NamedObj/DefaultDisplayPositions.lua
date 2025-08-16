---@meta

---@class DefaultDisplayPositions: NamedObj
local DefaultDisplayPositions = {}
---@return "DefaultDisplayPositions"
function DefaultDisplayPositions:GetClass() end
---@return "DefaultDisplayPosition"
function DefaultDisplayPositions:GetChildClass() end
---@generic T : DefaultDisplayPositions
---@param class `T`
---@return boolean
function DefaultDisplayPositions:IsClass(class) end
---@return DefaultDisplayPositionsCollect
function DefaultDisplayPositions:Parent() end
---@param index integer
---@return DefaultDisplayPosition
function DefaultDisplayPositions:Ptr(index) end
---@return DefaultDisplayPosition[]
function DefaultDisplayPositions:Children() end
---@return DefaultDisplayPosition?
function DefaultDisplayPositions:CurrentChild() end
---@overload fun(name: integer, role: nil): DefaultDisplayPosition
function DefaultDisplayPositions:Get(name, role) end
---@generic T : DefaultDisplayPosition
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DefaultDisplayPosition
function DefaultDisplayPositions:Create(index, class, undo) end
---@generic T : DefaultDisplayPosition
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DefaultDisplayPosition
function DefaultDisplayPositions:Append(class, undo, count) end
---@generic T : DefaultDisplayPosition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPosition
function DefaultDisplayPositions:Acquire(class, undo) end
---@generic T : DefaultDisplayPosition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPosition
---@deprecated use "Acquire" instead
function DefaultDisplayPositions:Aquire(class, undo) end
---@generic T : DefaultDisplayPosition
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DefaultDisplayPosition
function DefaultDisplayPositions:Insert(index, class, undo, count) end
---@generic T : DefaultDisplayPosition
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPosition
function DefaultDisplayPositions:Find(class, undo) end
---@overload fun(property_name: "ShowFeedback"|"ShowCmdline"|"TurnViewBar"|"ShowMainMenu"|"ShowEncoderBar"|"ShowViewBar"|"ViewBarSubtraction"|"ShowCommandWingBar"|"ViewBarAddition"|"ShowScrollButton"|"ShowHeadline"|"Open"|"IsMaximized", property_value: YesNo|boolean)
---@overload fun(property_name: "H"|"Monitor"|"Dimension"|"ScaleRatio"|"X"|"Y"|"W", property_value: integer)
function DefaultDisplayPositions:SetChildren(property_name, property_value) end