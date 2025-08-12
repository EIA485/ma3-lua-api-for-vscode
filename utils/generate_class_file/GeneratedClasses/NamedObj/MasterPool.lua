---@meta

---@class MasterPool: NamedObj A container for masters of one kind.
local MasterPool = {}
---@return "MasterPool"
function MasterPool:GetClass() end
---@return "Master"
function MasterPool:GetChildClass() end
---@return Masters
function MasterPool:Parent() end
---@param index integer
---@return Master
function MasterPool:Ptr(index) end
---@return Master[]
function MasterPool:Children() end
---@return Master?
function MasterPool:CurrentChild() end
---@overload fun(name: integer, role: nil): Master
function MasterPool:Get(name, role) end
---@overload fun(index: integer, class: "Master", undo: Undo?): Master
---@overload fun(index: integer, class: "MasterTiming", undo: Undo?): MasterTiming
---@overload fun(index: integer, class: "MasterPlayback", undo: Undo?): MasterPlayback
---@overload fun(index: integer, class: "MasterGrand", undo: Undo?): MasterGrand
---@overload fun(index: integer, class: "MasterSelected", undo: Undo?): MasterSelected
---@overload fun(index: integer, class: nil, undo: Undo?): Master
function MasterPool:Create(index, class, undo) end
---@overload fun(class: "Master", undo: Undo?, count: integer?): Master
---@overload fun(class: "MasterTiming", undo: Undo?, count: integer?): MasterTiming
---@overload fun(class: "MasterPlayback", undo: Undo?, count: integer?): MasterPlayback
---@overload fun(class: "MasterGrand", undo: Undo?, count: integer?): MasterGrand
---@overload fun(class: "MasterSelected", undo: Undo?, count: integer?): MasterSelected
---@overload fun(class: nil, undo: Undo?, count: integer?): Master
function MasterPool:Append(class, undo, count) end
---@overload fun(class: "Master", undo: Undo?): Master
---@overload fun(class: "MasterTiming", undo: Undo?): MasterTiming
---@overload fun(class: "MasterPlayback", undo: Undo?): MasterPlayback
---@overload fun(class: "MasterGrand", undo: Undo?): MasterGrand
---@overload fun(class: "MasterSelected", undo: Undo?): MasterSelected
---@overload fun(class: nil, undo: Undo?): Master
function MasterPool:Acquire(class, undo) end
---@overload fun(class: "Master", undo: Undo?): Master
---@overload fun(class: "MasterTiming", undo: Undo?): MasterTiming
---@overload fun(class: "MasterPlayback", undo: Undo?): MasterPlayback
---@overload fun(class: "MasterGrand", undo: Undo?): MasterGrand
---@overload fun(class: "MasterSelected", undo: Undo?): MasterSelected
---@overload fun(class: nil, undo: Undo?): Master
---@deprecated use "Acquire" instead
function MasterPool:Aquire(class, undo) end
---@overload fun(index: integer, class: "Master", undo: Undo?, count: integer?): Master
---@overload fun(index: integer, class: "MasterTiming", undo: Undo?, count: integer?): MasterTiming
---@overload fun(index: integer, class: "MasterPlayback", undo: Undo?, count: integer?): MasterPlayback
---@overload fun(index: integer, class: "MasterGrand", undo: Undo?, count: integer?): MasterGrand
---@overload fun(index: integer, class: "MasterSelected", undo: Undo?, count: integer?): MasterSelected
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Master
function MasterPool:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "Master"): Master
---@overload fun(name: string, class: "MasterTiming"): MasterTiming
---@overload fun(name: string, class: "MasterPlayback"): MasterPlayback
---@overload fun(name: string, class: "MasterGrand"): MasterGrand
---@overload fun(name: string, class: "MasterSelected"): MasterSelected
---@overload fun(name: string, class: nil): Master
function MasterPool:Find(name, class) end
---@overload fun(name: string, class: "Master"): Master
---@overload fun(name: string, class: "MasterTiming"): MasterTiming
---@overload fun(name: string, class: "MasterPlayback"): MasterPlayback
---@overload fun(name: string, class: "MasterGrand"): MasterGrand
---@overload fun(name: string, class: "MasterSelected"): MasterSelected
---@overload fun(name: string, class: nil): Object
function MasterPool:FindRecursive(name, class) end
