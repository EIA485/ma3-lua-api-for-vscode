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
---@overload fun(index: integer, class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(index: integer, class: "ResultPoolWindow", undo: Undo?): ResultPoolWindow
---@overload fun(index: integer, class: "RunningPlaybacksWindow", undo: Undo?): RunningPlaybacksWindow
---@overload fun(index: integer, class: nil, undo: Undo?): PoolWindow
function PoolScreen:Create(index, class, undo) end
---@overload fun(class: "PoolWindow", undo: Undo?, count: integer?): PoolWindow
---@overload fun(class: "ResultPoolWindow", undo: Undo?, count: integer?): ResultPoolWindow
---@overload fun(class: "RunningPlaybacksWindow", undo: Undo?, count: integer?): RunningPlaybacksWindow
---@overload fun(class: nil, undo: Undo?, count: integer?): PoolWindow
function PoolScreen:Append(class, undo, count) end
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: "ResultPoolWindow", undo: Undo?): ResultPoolWindow
---@overload fun(class: "RunningPlaybacksWindow", undo: Undo?): RunningPlaybacksWindow
---@overload fun(class: nil, undo: Undo?): PoolWindow
function PoolScreen:Acquire(class, undo) end
---@overload fun(class: "PoolWindow", undo: Undo?): PoolWindow
---@overload fun(class: "ResultPoolWindow", undo: Undo?): ResultPoolWindow
---@overload fun(class: "RunningPlaybacksWindow", undo: Undo?): RunningPlaybacksWindow
---@overload fun(class: nil, undo: Undo?): PoolWindow
---@deprecated use "Acquire" instead
function PoolScreen:Aquire(class, undo) end
---@overload fun(index: integer, class: "PoolWindow", undo: Undo?, count: integer?): PoolWindow
---@overload fun(index: integer, class: "ResultPoolWindow", undo: Undo?, count: integer?): ResultPoolWindow
---@overload fun(index: integer, class: "RunningPlaybacksWindow", undo: Undo?, count: integer?): RunningPlaybacksWindow
---@overload fun(index: integer, class: nil, undo: Undo?, count: integer?): PoolWindow
function PoolScreen:Insert(index, class, undo, count) end
---@overload fun(name: string, class: "PoolWindow"): PoolWindow
---@overload fun(name: string, class: "ResultPoolWindow"): ResultPoolWindow
---@overload fun(name: string, class: "RunningPlaybacksWindow"): RunningPlaybacksWindow
---@overload fun(name: string, class: nil): PoolWindow
function PoolScreen:Find(name, class) end
---@overload fun(name: string, class: "PoolWindow"): PoolWindow
---@overload fun(name: string, class: "ResultPoolWindow"): ResultPoolWindow
---@overload fun(name: string, class: "RunningPlaybacksWindow"): RunningPlaybacksWindow
---@overload fun(name: string, class: nil): Object
function PoolScreen:FindRecursive(name, class) end
