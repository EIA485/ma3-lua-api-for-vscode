---@meta

---@class TimecodeWindowSharedContainer: Object
local TimecodeWindowSharedContainer = {}
---@return "TimecodeWindowSharedContainer"
function TimecodeWindowSharedContainer:GetClass() end
---@return "TimecodeWindowSharedData"
function TimecodeWindowSharedContainer:GetChildClass() end
---@return TimecodeWindowSettings
function TimecodeWindowSharedContainer:Parent() end
---@param index integer
---@return TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Ptr(index) end
---@return TimecodeWindowSharedData[]
function TimecodeWindowSharedContainer:Children() end
---@return TimecodeWindowSharedData?
function TimecodeWindowSharedContainer:CurrentChild() end
---@overload fun(name: integer, role: nil): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Get(name, role) end
---@overload fun(index: integer, class: "TimecodeWindowSharedData", undo: Undo?): TimecodeWindowSharedData
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Create(index, class, undo) end
---@overload fun(class: "TimecodeWindowSharedData", undo: Undo?, count: integer?): TimecodeWindowSharedData
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Append(class, undo, count) end
---@overload fun(class: "TimecodeWindowSharedData", undo: Undo?): TimecodeWindowSharedData
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Acquire(class, undo) end
---@overload fun(class: "TimecodeWindowSharedData", undo: Undo?): TimecodeWindowSharedData
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSharedData
---@deprecated use "Acquire" instead
function TimecodeWindowSharedContainer:Aquire(class, undo) end
---@overload fun(index: integer, class: "TimecodeWindowSharedData", undo: Undo?, count: integer?): TimecodeWindowSharedData
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TimecodeWindowSharedData"): TimecodeWindowSharedData
---@overload fun(name: string, class: nil): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Find(name, class) end
---@overload fun(name: string, class: "TimecodeWindowSharedData"): TimecodeWindowSharedData
---@overload fun(name: string, class: nil): Object
function TimecodeWindowSharedContainer:FindRecursive(name, class) end
