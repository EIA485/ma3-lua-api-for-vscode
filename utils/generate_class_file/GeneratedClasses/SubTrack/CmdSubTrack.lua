---@meta

---@class CmdSubTrack: SubTrack
local CmdSubTrack = {}
---@return "CmdSubTrack"
function CmdSubTrack:GetClass() end
---@return "CmdEvent"
function CmdSubTrack:GetChildClass() end
---@param index integer
---@return CmdEvent
function CmdSubTrack:Ptr(index) end
---@return CmdEvent[]
function CmdSubTrack:Children() end
---@return CmdEvent?
function CmdSubTrack:CurrentChild() end
---@overload fun(name: integer, role: nil): CmdEvent
function CmdSubTrack:Get(name, role) end
---@overload fun(index: integer, class: "CmdEvent", undo: Undo?): CmdEvent
---@overload fun(index: integer, class: nil, undo: Undo?): CmdEvent
function CmdSubTrack:Create(index, class, undo) end
---@overload fun(class: "CmdEvent", undo: Undo?, count: integer?): CmdEvent
---@overload fun(class: nil, undo: Undo?, count: integer?): CmdEvent
function CmdSubTrack:Append(class, undo, count) end
---@overload fun(class: "CmdEvent", undo: Undo?): CmdEvent
---@overload fun(class: nil, undo: Undo?): CmdEvent
function CmdSubTrack:Acquire(class, undo) end
---@overload fun(class: "CmdEvent", undo: Undo?): CmdEvent
---@overload fun(class: nil, undo: Undo?): CmdEvent
---@deprecated use "Acquire" instead
function CmdSubTrack:Aquire(class, undo) end
---@overload fun(index: integer, class: "CmdEvent", undo: Undo?, count: integer?): CmdEvent
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CmdEvent
function CmdSubTrack:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "CmdEvent"): CmdEvent
---@overload fun(name: string, class: nil): CmdEvent
function CmdSubTrack:Find(name, class) end
---@overload fun(name: string, class: "CmdEvent"): CmdEvent
---@overload fun(name: string, class: nil): Object
function CmdSubTrack:FindRecursive(name, class) end
