---@meta

---@class DefaultDisplayPositions: NamedObj
local DefaultDisplayPositions = {}
---@return "DefaultDisplayPositions"
function DefaultDisplayPositions:GetClass() end
---@return "DefaultDisplayPosition"
function DefaultDisplayPositions:GetChildClass() end
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
---@overload fun(index: integer, class: "DefaultDisplayPosition", undo: Undo?): DefaultDisplayPosition
---@overload fun(index: integer, class: nil, undo: Undo?): DefaultDisplayPosition
function DefaultDisplayPositions:Create(index, class, undo) end
---@overload fun(class: "DefaultDisplayPosition", undo: Undo?, count: integer?): DefaultDisplayPosition
---@overload fun(class: nil, undo: Undo?, count: integer?): DefaultDisplayPosition
function DefaultDisplayPositions:Append(class, undo, count) end
---@overload fun(class: "DefaultDisplayPosition", undo: Undo?): DefaultDisplayPosition
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPosition
function DefaultDisplayPositions:Acquire(class, undo) end
---@overload fun(class: "DefaultDisplayPosition", undo: Undo?): DefaultDisplayPosition
---@overload fun(class: nil, undo: Undo?): DefaultDisplayPosition
---@deprecated use "Acquire" instead
function DefaultDisplayPositions:Aquire(class, undo) end
---@overload fun(index: integer, class: "DefaultDisplayPosition", undo: Undo?, count: integer?): DefaultDisplayPosition
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): DefaultDisplayPosition
function DefaultDisplayPositions:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "DefaultDisplayPosition"): DefaultDisplayPosition
---@overload fun(name: string, class: nil): DefaultDisplayPosition
function DefaultDisplayPositions:Find(name, class) end
---@overload fun(name: string, class: "DefaultDisplayPosition"): DefaultDisplayPosition
---@overload fun(name: string, class: nil): Object
function DefaultDisplayPositions:FindRecursive(name, class) end
