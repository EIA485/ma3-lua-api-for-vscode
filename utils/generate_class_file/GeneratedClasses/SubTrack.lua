---@meta

---@class SubTrack: Object
local SubTrack = {}
---@return "SubTrack"
function SubTrack:GetClass() end
---@return "Event"
function SubTrack:GetChildClass() end
---@generic T : SubTrack
---@param class `T`
---@return boolean
function SubTrack:IsClass(class) end
---@return TimeRange
function SubTrack:Parent() end
---@param index integer
---@return Event
function SubTrack:Ptr(index) end
---@return Event[]
function SubTrack:Children() end
---@return Event?
function SubTrack:CurrentChild() end
---@overload fun(name: integer, role: nil): Event
function SubTrack:Get(name, role) end
---@overload fun(index: integer, class: "Event", undo: Undo?): Event
---@overload fun(index: integer, class: nil, undo: Undo?): Event
function SubTrack:Create(index, class, undo) end
---@overload fun(class: "Event", undo: Undo?, count: integer?): Event
---@overload fun(class: nil, undo: Undo?, count: integer?): Event
function SubTrack:Append(class, undo, count) end
---@overload fun(class: "Event", undo: Undo?): Event
---@overload fun(class: nil, undo: Undo?): Event
function SubTrack:Acquire(class, undo) end
---@overload fun(class: "Event", undo: Undo?): Event
---@overload fun(class: nil, undo: Undo?): Event
---@deprecated use "Acquire" instead
function SubTrack:Aquire(class, undo) end
---@overload fun(index: integer, class: "Event", undo: Undo?, count: integer?): Event
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): Event
function SubTrack:Insert(index, class, undo, count) end
---@overload fun(class: "Event", undo: Undo?): Event
---@overload fun(class: nil, undo: Undo?): Event
function SubTrack:Find(class, undo) end
---@overload fun(property_name: "RealtimeCmd", property_value: RealtimeCmdType)
---@overload fun(property_name: "Time", property_value: SignedTimePropertyValue)
---@overload fun(property_name: "Type", property_value: ArrangementMarcType)
---@overload fun(property_name: "Type", property_value: ArrangementMarcType)
---@overload fun(property_name: "Track"|"TrackGroup", property_value: Object)
---@overload fun(property_name: "RealtimeCmd", property_value: RealtimeCmdType)
---@overload fun(property_name: "Time", property_value: SignedTimePropertyValue)
function SubTrack:SetChildren(property_name, property_value) end