---@meta

---@class DefaultDisplayPositionsCollect: Object
local DefaultDisplayPositionsCollect = {}
---@return "DefaultDisplayPositionsCollect"
function DefaultDisplayPositionsCollect:GetClass() end
---@return "DefaultDisplayPositions"
function DefaultDisplayPositionsCollect:GetChildClass() end
---@generic T : DefaultDisplayPositionsCollect
---@param class `T`
---@return boolean
function DefaultDisplayPositionsCollect:IsClass(class) end
---@return StationSettings
function DefaultDisplayPositionsCollect:Parent() end
---@param index integer
---@return DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Ptr(index) end
---@return DefaultDisplayPositions[]
function DefaultDisplayPositionsCollect:Children() end
---@return DefaultDisplayPositions?
function DefaultDisplayPositionsCollect:CurrentChild() end
---@overload fun(name: integer, role: nil): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Get(name, role) end
---@generic T : DefaultDisplayPositions
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Create(index, class, undo) end
---@generic T : DefaultDisplayPositions
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Append(class, undo, count) end
---@generic T : DefaultDisplayPositions
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Acquire(class, undo) end
---@generic T : DefaultDisplayPositions
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPositions
---@deprecated use "Acquire" instead
function DefaultDisplayPositionsCollect:Aquire(class, undo) end
---@generic T : DefaultDisplayPositions
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Insert(index, class, undo, count) end
---@generic T : DefaultDisplayPositions
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Find(class, undo) end
function DefaultDisplayPositionsCollect:ActiveDisplay(property_name, property_value) end