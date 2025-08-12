---@meta

---@class DefaultDisplayPositionsCollect: Object
local DefaultDisplayPositionsCollect = {}
---@return "DefaultDisplayPositionsCollect"
function DefaultDisplayPositionsCollect:GetClass() end
---@return "DefaultDisplayPositions"
function DefaultDisplayPositionsCollect:GetChildClass() end
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
---@overload fun(index: integer, class: "DefaultDisplayPositions", undo: Undo?): DefaultDisplayPositions
---@overload fun(index: integer, class: nil, undo: Undo?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Create(index, class, undo) end
---@overload fun(class: "DefaultDisplayPositions", undo: Undo?, count: integer?): DefaultDisplayPositions
---@overload fun(class: nil, undo: Undo?, count: integer?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Append(class, undo, count) end
---@overload fun(class: "DefaultDisplayPositions", undo: Undo?): DefaultDisplayPositions
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Acquire(class, undo) end
---@overload fun(class: "DefaultDisplayPositions", undo: Undo?): DefaultDisplayPositions
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPositions
---@deprecated use "Acquire" instead
function DefaultDisplayPositionsCollect:Aquire(class, undo) end
---@overload fun(index: integer, class: "DefaultDisplayPositions", undo: Undo?, count: integer?): DefaultDisplayPositions
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DefaultDisplayPositions"): DefaultDisplayPositions
---@overload fun(name: string, class: nil): DefaultDisplayPositions
function DefaultDisplayPositionsCollect:Find(name, class) end
---@overload fun(name: string, class: "DefaultDisplayPositions"): DefaultDisplayPositions
---@overload fun(name: string, class: nil): Object
function DefaultDisplayPositionsCollect:FindRecursive(name, class) end
