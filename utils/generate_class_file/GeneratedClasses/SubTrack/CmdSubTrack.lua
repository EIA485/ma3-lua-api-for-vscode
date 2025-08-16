---@meta

---@class CmdSubTrack: SubTrack
local CmdSubTrack = {}
---@return "CmdSubTrack"
function CmdSubTrack:GetClass() end
---@return "CmdEvent"
function CmdSubTrack:GetChildClass() end
---@generic T : CmdSubTrack
---@param class `T`
---@return boolean
function CmdSubTrack:IsClass(class) end
---@param index integer
---@return CmdEvent
function CmdSubTrack:Ptr(index) end
---@return CmdEvent[]
function CmdSubTrack:Children() end
---@return CmdEvent?
function CmdSubTrack:CurrentChild() end
---@overload fun(name: integer, role: nil): CmdEvent
function CmdSubTrack:Get(name, role) end
---@generic T : CmdEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?): CmdEvent
function CmdSubTrack:Create(index, class, undo) end
---@generic T : CmdEvent
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: nil, undo: Undo?, count: integer?): CmdEvent
function CmdSubTrack:Append(class, undo, count) end
---@generic T : CmdEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CmdEvent
function CmdSubTrack:Acquire(class, undo) end
---@generic T : CmdEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CmdEvent
---@deprecated use "Acquire" instead
function CmdSubTrack:Aquire(class, undo) end
---@generic T : CmdEvent
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): CmdEvent
function CmdSubTrack:Insert(index, class, undo, count) end
---@generic T : CmdEvent
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: nil, undo: Undo?): CmdEvent
function CmdSubTrack:Find(class, undo) end
---@overload fun(property_name: "CueDestination", property_value: Object)
---@overload fun(property_name: "ExecuteCommand", property_value: YesNo|boolean)
---@overload fun(property_name: "CueDestination", property_value: Object)
---@overload fun(property_name: "ExecuteCommand", property_value: YesNo|boolean)
function CmdSubTrack:SetChildren(property_name, property_value) end