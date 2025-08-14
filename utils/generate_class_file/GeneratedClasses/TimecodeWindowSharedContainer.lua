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
---@generic T : TimecodeWindowSharedData
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Create(index, class, undo) end
---@generic T : TimecodeWindowSharedData
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Append(class, undo, count) end
---@generic T : TimecodeWindowSharedData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Acquire(class, undo) end
---@generic T : TimecodeWindowSharedData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSharedData
---@deprecated use "Acquire" instead
function TimecodeWindowSharedContainer:Aquire(class, undo) end
---@generic T : TimecodeWindowSharedData
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Insert(index, class, undo, count) end
---@generic T : TimecodeWindowSharedData
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TimecodeWindowSharedData
function TimecodeWindowSharedContainer:Find(class, undo) end