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
---@overload fun(index: integer, class: "TCSlot", undo: Undo?): TCSlot
---@overload fun(index: integer, class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Create(index, class, undo) end
---@overload fun(class: "TCSlot", undo: Undo?, count: integer?): TCSlot
---@overload fun(class: nil, undo: Undo?, count: integer?): TCSlot
function TimecodeSlots:Append(class, undo, count) end
---@overload fun(class: "TCSlot", undo: Undo?): TCSlot
---@overload fun(class: nil, undo: Undo?): TCSlot
function TimecodeSlots:Acquire(class, undo) end
---@overload fun(class: "TCSlot", undo: Undo?): TCSlot
---@overload fun(class: nil, undo: Undo?): TCSlot
---@deprecated use "Acquire" instead
function TimecodeSlots:Aquire(class, undo) end
---@overload fun(index: integer, class: "TCSlot", undo: Undo?, count: integer?): TCSlot
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): TCSlot
function TimecodeSlots:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "TCSlot"): TCSlot
---@overload fun(name: string, class: nil): TCSlot
function TimecodeSlots:Find(name, class) end
---@overload fun(name: string, class: "TCSlot"): TCSlot
---@overload fun(name: string, class: nil): Object
function TimecodeSlots:FindRecursive(name, class) end
