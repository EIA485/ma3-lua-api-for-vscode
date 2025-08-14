---@meta

---@class TimecodeSlots: Object
local TimecodeSlots = {}
---@return "TimecodeSlots"
function TimecodeSlots:GetClass() end
---@return "TCSlot"
function TimecodeSlots:GetChildClass() end
---@return Root
function TimecodeSlots:Parent() end
---@param index integer
---@return TCSlot
function TimecodeSlots:Ptr(index) end
---@return TCSlot[]
function TimecodeSlots:Children() end
---@return TCSlot?
function TimecodeSlots:CurrentChild() end
---@overload fun(name: integer, role: nil): TCSlot
function TimecodeSlots:Get(name, role) end
---@generic T : TCSlot
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Create(index, class, undo) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): TCSlot
function TimecodeSlots:Append(class, undo, count) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Acquire(class, undo) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TCSlot
---@deprecated use "Acquire" instead
function TimecodeSlots:Aquire(class, undo) end
---@generic T : TCSlot
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TCSlot
function TimecodeSlots:Insert(index, class, undo, count) end
---@generic T : TCSlot
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Find(class, undo) end