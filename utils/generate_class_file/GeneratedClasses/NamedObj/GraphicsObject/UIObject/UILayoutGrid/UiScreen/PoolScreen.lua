---@meta

---@class PoolScreen: UiScreen
local PoolScreen = {}
---@return "PoolScreen"
function PoolScreen:GetClass() end
---@return "PoolWindow"
function PoolScreen:GetChildClass() end
---@return PoolOverlay
function PoolScreen:Parent() end
---@param index integer
---@return PoolWindow
function PoolScreen:Ptr(index) end
---@return PoolWindow[]
function PoolScreen:Children() end
---@return PoolWindow?
function PoolScreen:CurrentChild() end
---@overload fun(name: integer, role: nil): PoolWindow
function PoolScreen:Get(name, role) end
---@generic T : ResultPoolWindow|RunningPlaybacksWindow
---@param index integer
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(index: integer, class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(index: integer, class: nil, undo: Undo?): PoolWindow
function PoolScreen:Create(index, class, undo) end
---@generic T : ResultPoolWindow|RunningPlaybacksWindow
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(class: "PoolWindow", undo: Undo?, count: integer?): PoolWindow
---@overload fun(class: nil, undo: Undo?, count: integer?): PoolWindow
function PoolScreen:Append(class, undo, count) end
---@generic T : ResultPoolWindow|RunningPlaybacksWindow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: nil, undo: Undo?): PoolWindow
function PoolScreen:Acquire(class, undo) end
---@generic T : ResultPoolWindow|RunningPlaybacksWindow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: nil, undo: Undo?): PoolWindow
---@deprecated use "Acquire" instead
function PoolScreen:Aquire(class, undo) end
---@generic T : ResultPoolWindow|RunningPlaybacksWindow
---@param index integer
---@param class `T`
---@param undo Undo?
---@param count integer?
---@return T
---@overload fun(index: integer, class: "PoolWindow", undo: Undo?, count: integer?): PoolWindow
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PoolWindow
function PoolScreen:Insert(index, class, undo, count) end
---@generic T : ResultPoolWindow|RunningPlaybacksWindow
---@param class `T`
---@param undo Undo?
---@return T
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: nil, undo: Undo?): PoolWindow
function PoolScreen:Find(class, undo) end