---@meta

---@class Masters: Object Contains all master pools.
local Masters = {}
---@return "Masters"
function Masters:GetClass() end
---@return "MasterPool"
function Masters:GetChildClass() end
---@return ShowData
function Masters:Parent() end
---@param index integer
---@return MasterPool
function Masters:Ptr(index) end
---@return MasterPool[]
function Masters:Children() end
---@return MasterPool?
function Masters:CurrentChild() end
---@overload fun(name: integer, role: nil): MasterPool
function Masters:Get(name, role) end
---@overload fun(index: integer, class: "MasterPool", undo: Undo?): MasterPool
---@overload fun(index: integer, class: "MasterPoolTiming", undo: Undo?): MasterPoolTiming
---@overload fun(index: integer, class: "MasterPoolPlayback", undo: Undo?): MasterPoolPlayback
---@overload fun(index: integer, class: "MasterPoolGrand", undo: Undo?): MasterPoolGrand
---@overload fun(index: integer, class: "MasterPoolSelected", undo: Undo?): MasterPoolSelected
---@overload fun(index: integer, class: nil, undo: Undo?): MasterPool
function Masters:Create(index, class, undo) end
---@overload fun(class: "MasterPool", undo: Undo?, count: integer?): MasterPool
---@overload fun(class: "MasterPoolTiming", undo: Undo?, count: integer?): MasterPoolTiming
---@overload fun(class: "MasterPoolPlayback", undo: Undo?, count: integer?): MasterPoolPlayback
---@overload fun(class: "MasterPoolGrand", undo: Undo?, count: integer?): MasterPoolGrand
---@overload fun(class: "MasterPoolSelected", undo: Undo?, count: integer?): MasterPoolSelected
---@overload fun(class: nil, undo: Undo?, count: integer?): MasterPool
function Masters:Append(class, undo, count) end
---@overload fun(class: "MasterPool", undo: Undo?): MasterPool
---@overload fun(class: "MasterPoolTiming", undo: Undo?): MasterPoolTiming
---@overload fun(class: "MasterPoolPlayback", undo: Undo?): MasterPoolPlayback
---@overload fun(class: "MasterPoolGrand", undo: Undo?): MasterPoolGrand
---@overload fun(class: "MasterPoolSelected", undo: Undo?): MasterPoolSelected
---@overload fun(class: nil, undo: Undo?): MasterPool
function Masters:Acquire(class, undo) end
---@overload fun(class: "MasterPool", undo: Undo?): MasterPool
---@overload fun(class: "MasterPoolTiming", undo: Undo?): MasterPoolTiming
---@overload fun(class: "MasterPoolPlayback", undo: Undo?): MasterPoolPlayback
---@overload fun(class: "MasterPoolGrand", undo: Undo?): MasterPoolGrand
---@overload fun(class: "MasterPoolSelected", undo: Undo?): MasterPoolSelected
---@overload fun(class: nil, undo: Undo?): MasterPool
---@deprecated use "Acquire" instead
function Masters:Aquire(class, undo) end
---@overload fun(index: integer, class: "MasterPool", undo: Undo?, count: integer?): MasterPool
---@overload fun(index: integer, class: "MasterPoolTiming", undo: Undo?, count: integer?): MasterPoolTiming
---@overload fun(index: integer, class: "MasterPoolPlayback", undo: Undo?, count: integer?): MasterPoolPlayback
---@overload fun(index: integer, class: "MasterPoolGrand", undo: Undo?, count: integer?): MasterPoolGrand
---@overload fun(index: integer, class: "MasterPoolSelected", undo: Undo?, count: integer?): MasterPoolSelected
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): MasterPool
function Masters:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "MasterPool"): MasterPool
---@overload fun(name: string, class: "MasterPoolTiming"): MasterPoolTiming
---@overload fun(name: string, class: "MasterPoolPlayback"): MasterPoolPlayback
---@overload fun(name: string, class: "MasterPoolGrand"): MasterPoolGrand
---@overload fun(name: string, class: "MasterPoolSelected"): MasterPoolSelected
---@overload fun(name: string, class: nil): MasterPool
function Masters:Find(name, class) end
---@overload fun(name: string, class: "MasterPool"): MasterPool
---@overload fun(name: string, class: "MasterPoolTiming"): MasterPoolTiming
---@overload fun(name: string, class: "MasterPoolPlayback"): MasterPoolPlayback
---@overload fun(name: string, class: "MasterPoolGrand"): MasterPoolGrand
---@overload fun(name: string, class: "MasterPoolSelected"): MasterPoolSelected
---@overload fun(name: string, class: nil): Object
function Masters:FindRecursive(name, class) end
